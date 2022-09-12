#fit a model using all the variables
model1.1 <- lm(`K%` ~ `zSwing%` + `oSwing%` + `Swing%` + `oContact%` + `zContact%` + `Contact%` + `Zone%` + `SwStr%`)

#get a summary of the model
summary(model1.1)
ggpairs(model1.1)



#new model without Swing% and Contact% due to high multicollinearity
model1.2 <- lm(`K%` ~ `zSwing%` + `oSwing%` + `oContact%` + `zContact%` + `Zone%` + `SwStr%`)

#get a summary of the model
summary(model1.2)
ggpairs(model1.2)



#new model without
model1.3 <- lm(`K%` ~ `Zone%` + `SwStr%`)

#get a summary of the model
summary(model1.3)
ggpairs(model1.3)


#new model
model4 <- lm(`K%` ~ `Zone%` + `Swing%` + `Contact%`)

#get a summary of the model
summary(model1.4)
ggpairs(model1.4)


#new model without
model5 <- lm(`K%` ~ `Swing%` + `Contact%`)

#get a summary of the model
summary(model1.5)
ggpairs(model1.5)


#new model without
model1.6 <- lm(`K%` ~ `SwStr%`)

#get a summary of the model
summary(model1.6)
ggpairs(model1.6)


#ended up choosing model1.2 due to its lack of multicollinearity and additional explanatory value
summary(model1.2)



#new model 
model1.7 <- lm(`K%` ~ `zSwing%` + `Contact%` + `Zone%`)

#get a summary of the model
summary(model1.7)
ggpairs(model1.7)


model1.2.1 <- lm(`K%` ~ `zSwing%` + `oSwing%` + `oContact%` + `zContact%` + `SwStr%`)
summary(model1.2.1)

#upon further review of model 1.2, I believe the multicollinearity is still a problem
model1.8 <- lm(`K%` ~ `Contact%`)
summary(model1.8)

model1.8.1 <- lm(`K%` ~ `Contact%` + `zSwing%`)
summary(model1.8.1)

model1.8.2 <- lm(`K%` ~ `Contact%` + `zSwing%` + `oContact%`)
summary(model1.8.2)

model1.8.3 <- lm(`K%` ~ `Contact%` + `oContact%`)
summary(model1.8.3)

model1.8.4 <- lm(`K%` ~ `Contact%` + `zSwing%` + `oSwing%`)
summary(model1.8.4)
ggpairs(model1.8.4)

model1.2.2 <- lm(`K%` ~ `zSwing%` + `oSwing%` + `zContact%` + `oContact%`)
summary(model1.2.2)
ggpairs(model1.2.2)

model1.2.3 <- lm(`K%` ~ `zSwing%` + `oSwing%` + `zContact%` + `oContact%` + `Zone%`)
summary(model1.2.3)
#model 1.2.2 has been chosen for now... model 1.2.3 seems promising, but not enough data yet
#to confirm the effect of Zone% on K%. Possible addition with more data (p=.118)

`xK%` <- (1.02583-(.34377*`zSwing%`)+(.32377*`oSwing%`)-(.67519*`zContact%`)-(.14250*`oContact%`))

#more model attempts with plate discipline data as used on baseball reference
#fit a model using all the variables
model1.9 <- lm(`K%` ~ `zSwing%` + `oSwing%` + `Swing%` + `oContact%` + `zContact%` + `Contact%` + `Zone%` + `SwStr%` + `Pit/PA` + `L/Str` + `S/Str` + `F/Str` + `I/Str` + `Swung/Str`)
summary(model1.9)
ggpairs(model1.9)

model1.9.1 <- lm(`K%` ~ `zSwing%` + `oSwing%` + `oContact%` + `zContact%` + `Zone%` + `Pit/PA` + `S/Str` + `F/Str` + `I/Str` + `Swung/Str`)
summary(model1.9.1)

model1.9.2 <- lm(`K%` ~ `zSwing%` + `oSwing%` + `oContact%` + `zContact%` + `Zone%` + `Pit/PA` + `SwStr%` + `F/Str` + `I/Str`)
summary(model1.9.2)
ggpairs(model1.9.2)

#test simplified model
model1.9.3 <- lm(`K%` ~ `Pit/PA` + `S/Str` + `F/Str` + `I/Str`)
summary(model1.9.3)
#simple is sometimes better apparently... R2 of .8599, multicollinearity negligible (vif<5)

`xK%` <- .91637-(.07299*`Pit/PA`)+(.20780*`S/Str`)-(.13825*`F/Str`)-(1.46568*`I/Str`)
