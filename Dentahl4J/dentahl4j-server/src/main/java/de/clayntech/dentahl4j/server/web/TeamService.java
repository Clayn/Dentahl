/*
 * The MIT License
 *
 * Copyright 2020 Clayn <clayn_osmato@gmx.de>.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */
package de.clayntech.dentahl4j.server.web;

import java.util.List;

import de.clayntech.dentahl4j.domain.ErrorMessage;
import de.clayntech.dentahl4j.domain.Team;
import de.clayntech.dentahl4j.server.db.TeamRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 *
 * @author Clayn <clayn_osmato@gmx.de>
 */
@RestController
@RequestMapping("/dentahl/v2/team")
public class TeamService extends GeneralService
{
    {
        LOG.info("Creating the team service");
    }
    @Autowired
    private TeamRepository repository;
    
    @GetMapping("/list")
    public List<Team> getNinjas() {
        return repository.findAll();
    }

    @PostMapping("/upload")
    public ErrorMessage uploadTeam(@RequestBody Team team) {
        String message="";
        try {
            int id = repository.saveTeam(team);
            message=""+id;
        }catch (Exception ex) {
            message=ex.getMessage();
        }
        return new ErrorMessage(message);
    }
}
