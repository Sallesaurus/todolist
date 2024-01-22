function(states, ...)
    local reliwik
    for _,rare in pairs(aura_env.rares) do
        if (not C_QuestLog.IsQuestFlaggedCompleted(rare["id"])) or aura_env.config.complete == false then
            -- 63935,63790,63965,63775,64040,63958
            if (C_TaskQuest.IsActive(63935) == true) then
                reliwik = true
            else if (C_TaskQuest.IsActive(63790) == true) then
                    reliwik = true
                else if (C_TaskQuest.IsActive(63965) == true) then
                        reliwik = true
                    else if (C_TaskQuest.IsActive(63775) == true) then
                            reliwik = true
                        else if (C_TaskQuest.IsActive(64040) == true) then
                                reliwik = true
                            else if (C_TaskQuest.IsActive(63958) == true) then
                                    reliwik = true
                                else reliwik = false
                                end
                            end
                        end
                    end
                end
            end
            if (reliwik == true) then
                for k, v in pairs(SalleMountID) do
                    
                    if(v == rare.mountname) then
                        states[rare.id] = {
                            show = true,
                            disp = rare.name,
                        }
                    end
                end
            else
                states[rare.id] = {}
            end
        end
    end
    return true
end





function(states, ...)
    for _,rare in pairs(aura_env.rares) do
        if (not C_QuestLog.IsQuestFlaggedCompleted(rare["id"])) or aura_env.config.complete == false then
                        for k, v in pairs(SalleMountID) do 
                if(v == rare.mountname) then
                    states[rare.id] = {
                        show = true,
                        disp = rare.name1,
                    }
                end
            end
            else
            states[rare.id] = {}
        end
    end
    return true
end



