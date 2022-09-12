#fit a model using all the variables
model2.1 <- lm(`BB%` ~ `zSwing%` + `oSwing%` + `Swing%` + `oContact%` + `zContact%` + `Contact%` + `Zone%` + `SwStr%`)

#get a summary of the model
summary(model2.1)
ggpairs(model2.1)


#new model without Swing% and Contact% due to high multicollinearity
model2.2 <- lm(`BB%` ~ `zSwing%` + `oSwing%` + `oContact%` + `zContact%` + `Zone%` + `SwStr%`)

#get a summary of the model
summary(model2.2)
ggpairs(model2.2)


#new model
model2.3 <- lm(`BB%` ~ `oSwing%` + `Zone%`)
#get a summary of the model
summary(model2.3)
ggpairs(model2.3)

#attempted same variables as from baseball reference... unsuccessful
model2.4 <- lm(`BB%` ~ `Pit/PA` + `S/Str` + `F/Str` + `I/Str`)
summary(model2.4)

model2.4.1 <- lm(`BB%` ~ `Pit/PA` + `S/Str` + `F/Str`)
summary(model2.4.1)

model2.3.1 <- lm(`BB%` ~ `oSwing%` + `Zone%` + `Pit/PA`)
summary(model2.3.1)

model2.3.2 <- lm(`BB%` ~ `oSwing%` + `Zone%` + `Pit/PA` + `F/Str`)
summary(model2.3.2)

model2.3.3 <- lm(`BB%` ~ `oSwing%` + `Zone%` + `Pit/PA` + `F/Str` + `oContact%`)
summary(model2.3.3)

model2.3.4 <- lm(`BB%` ~ `oSwing%` + `Zone%` + `Pit/PA` + `F/Str` + `Contact%`)
summary(model2.3.4)

model2.3.5 <- lm(`BB%` ~ `oSwing%` + `Zone%` + `F/Str` + `oContact%`)
summary(model2.3.5)

model2.3.6 <- lm(`BB%` ~ `oSwing%` + `Zone%` + `F/Str` + `Contact%`)
summary(model2.3.6)
#best model so far... vif < 1.5

model2.3.7 <- lm(`BB%` ~ `oSwing%` + `Zone%` + `F/Str` + `Contact%` + `Swing%`)
summary(model2.3.7)
#swing% too high vif

`xBB%` <- .48311-(.55348*`oSwing%`)-(.50419*`Zone%`)+(.30971*`F/Str`)-(.15641*`Contact%`)
