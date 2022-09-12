model4.1 <- lm(`BB%` ~ `zSwing%` + `oSwing%` + `Swing%` + `oContact%` + `zContact%` + `Contact%` + 
                 `Zone%` + `SwStr%` + `Pit/PA` + `L/Str` + `S/Str` + `F/Str` + `I/Str` + `Swung/Str`)
summary(model4.1)

model4.2 <- lm(`BB%` ~ `zSwing%` + `oSwing%` + `Swing%` + `oContact%` + `zContact%` + `Contact%` + 
                 `Zone%` + `SwStr%` + `Pit/PA` + `L/Str` + `F/Str`)
summary(model4.2)

model4.3 <- lm(`BB%` ~ `zSwing%` + `oSwing%` + `oContact%` + `zContact%` + `Zone%` 
               + `SwStr%` + `Pit/PA` + `L/Str` + `F/Str`)
summary(model4.3)

model4.4 <- lm(`BB%` ~ `zSwing%` + `oSwing%` + `oContact%` + `Zone%` 
               + `SwStr%` + `Pit/PA` + `L/Str` + `F/Str`)
summary(model4.4)
ggpairs(model4.4)

model4.5 <- lm(`BB%` ~ `Zone%` + `SwStr%` + `Pit/PA` + `L/Str` + `F/Str`)
summary(model4.5)

model4.6 <- lm(`BB%` ~ `SwStr%` + `Pit/PA` + `L/Str` + `S/Str` + `F/Str` + `I/Str`)
summary(model4.6)

model4.6.1 <- lm(`BB%` ~ `SwStr%` + `Pit/PA` + `L/Str` + `S/Str` + `F/Str`)
summary(model4.6.1)

model4.6.2 <- lm(`BB%` ~  `Zone%` + `SwStr%` + `Pit/PA` + `L/Str` + `S/Str` + `F/Str`)
summary(model4.6.2)

model4.6.3 <- lm(`BB%` ~  `Contact%` + `SwStr%` + `Pit/PA` + `L/Str` + `S/Str` + `F/Str`)
summary(model4.6.3)

model4.6.4 <- lm(`BB%` ~  `Swing%` + `SwStr%` + `Pit/PA` + `L/Str` + `S/Str` + `F/Str`)
summary(model4.6.4)

model4.7 <- lm(`BB%` ~  `oSwing%` + `Zone%` + `F/Str` + `Contact%`)
summary(model4.7)
#model used for batters
`xBB%` <- .68181 - (.68208*`oSwing%`) - (.63208*`Zone%`) + (.36232*`F/Str`) - (.32575*`Contact%`)
