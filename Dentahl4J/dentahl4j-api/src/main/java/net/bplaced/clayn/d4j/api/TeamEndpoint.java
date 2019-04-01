package net.bplaced.clayn.d4j.api;

import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.function.Function;
import java.util.stream.Collectors;
import kong.unirest.HttpResponse;
import kong.unirest.JsonNode;
import kong.unirest.MultipartBody;
import kong.unirest.Unirest;
import net.bplaced.clayn.d4j.domain.ErrorMessage;
import net.bplaced.clayn.d4j.domain.Ninja;
import net.bplaced.clayn.d4j.domain.Team;
import org.json.JSONArray;
import org.json.JSONObject;

/**
 *
 * @author Clayn <clayn_osmato@gmx.de>
 * @since 0.1
 */
public class TeamEndpoint extends ServiceEndPoint
{

    private final Map<Integer, Ninja> ninjas = new HashMap<>();
    private final String hostBase;

    public TeamEndpoint(String baseUrl)
    {
        super(Objects.requireNonNull(baseUrl) + "/team/");
        hostBase = baseUrl;
    }

    public TeamEndpoint(URL baseUrl)
    {
        super(Objects.requireNonNull(baseUrl).toString() + "/team/");
        hostBase = baseUrl.toString();

    }

    public List<Team> getTeams() throws IOException
    {
        return getTeams(null);
    }

    public ErrorMessage uploadTeam(Team team, String token) throws IOException
    {
        MultipartBody body = Unirest.post(
                getSafeURL() + "upload.php/")
                .field("name", team.getName())
                .field("description", team.getDescription())
                .field("token", token);
        for (Map.Entry<Integer, Ninja> entry : team.getPositions().entrySet())
        {
            if (entry.getValue() != null)
            {
                body = body.field(entry.getKey() + "",
                        "" + entry.getValue().getId());
            }
        }
        HttpResponse<JsonNode> response = body.asJson();
        JSONObject obj = response.getBody().getObject();
        if (!obj.has("message"))
        {
            return new ErrorMessage("");
        } else
        {
            return new ErrorMessage(obj.getString("message"));
        }
    }

    public List<Team> getTeams(List<Ninja> ninjaList) throws IOException
    {
        Map<Integer, Ninja> tmpNinjas = new HashMap<>();
        if (ninjaList == null || ninjaList.isEmpty())
        {
            if (ninjas.isEmpty())
            {
                ninjas.putAll(
                        new NinjaServiceEndpoint(hostBase).getNinjaList().stream().collect(
                                Collectors.toMap(Ninja::getId,
                                        Function.identity())));
            }
            tmpNinjas.putAll(ninjas);
        } else
        {
            tmpNinjas.putAll(ninjaList.stream().collect(
                    Collectors.toMap(Ninja::getId,
                            Function.identity())));
        }
        HttpResponse<JsonNode> response = Unirest.get(getSafeURL() + "list.php")
                .asJson();
        JsonNode node = response.getBody();
        if (node != null && node.isArray())
        {
            JSONArray arr = node.getArray();
            List<Team> teams = new ArrayList<>(arr.length());
            for (int i = 0; i < arr.length(); ++i)
            {
                Team t = new Team();
                JSONObject obj = arr.getJSONObject(i);
                t.setName(obj.getString("name"));
                t.setDescription(obj.getString("description"));
                t.setId(obj.getInt("id"));
                JSONArray pos = obj.getJSONArray("positions");
                for (int j = 0; j < pos.length(); ++j)
                {
                    t.getPositions().put(j,
                            tmpNinjas.getOrDefault(pos.getInt(j),
                                    null));
                }
                teams.add(t);
            }
            return teams;
        }
        return Collections.emptyList();
    }
}
