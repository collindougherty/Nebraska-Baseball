model1.9.3p <- lm(`K%` ~ `Pit/PA` + `S/Str` + `F/Str` + `I/Str`)
summary(model1.9.3p)

model3.1 <- lm(`K%` ~ `zSwing%` + `oSwing%` + `Swing%` + `oContact%` + `zContact%` + `Contact%` + 
                 `Zone%` + `SwStr%` + `Pit/PA` + `L/Str` + `S/Str` + `F/Str` + `I/Str` + `Swung/Str`)
summary(model3.1)

model3.2 <- lm(`K%` ~ `zSwing%` + `oSwing%` + `Swing%` + `oContact%` + `zContact%` + `Contact%` + 
                 `Zone%` + `SwStr%` + `Pit/PA` + `L/Str` + `S/Str` + `F/Str`)
summary(model3.2)


model3.3 <- lm(`K%` ~ `zSwing%` + `oSwing%` + `Swing%` + `oContact%` + `zContact%` + `Contact%` + 
                 `Zone%` + `SwStr%` + `Pit/PA` + `L/Str` + `F/Str`)
summary(model3.3)

model3.4 <- lm(`K%` ~ `zSwing%` + `oSwing%` + `oContact%` + `zContact%` + 
                 `Zone%` + `SwStr%` + `Pit/PA` + `L/Str` + `F/Str`)
summary(model3.4)

model3.5 <- lm(`K%` ~ `oContact%` + `zContact%` + `Zone%` + `SwStr%` + `Pit/PA` + `L/Str` + `F/Str`)
summary(model3.5)

model3.6 <- lm(`K%` ~ `oContact%` + `zContact%` + `SwStr%` + `L/Str` + `F/Str`)
summary(model3.6)

model3.7 <- lm(`K%` ~ `oContact%` + `zContact%` + `L/Str` + `F/Str`)
summary(model3.7)

model3.8 <- lm(`K%` ~ `SwStr%` + `L/Str` + `F/Str`)
summary(model3.8)

`xK%p` <- -.57880+(2.27794*`SwStr%`)+(1.14639*`L/Str`)+(.89706*`F/Str`)
