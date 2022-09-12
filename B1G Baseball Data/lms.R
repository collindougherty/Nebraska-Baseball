model5.0 <- lm(`BABIP` ~ `FB%` + `GB%` + `LD%` + `PU%` + `FL%` + `AvgFBcontactQ` + `AvgGBContactQ` + `AvgLDContactQ`)
summary(model5.0)

model5.1 <- lm(`BABIP` ~ `FB%` + `GB%` + `LD%` + `AvgFBcontactQ` + `AvgGBContactQ` + `AvgLDContactQ`)
summary(model5.1)

model5.2 <- lm(`BABIP` ~ `FB%` + `GB%` + `LD%` + `PU%` + `FL%` + `BU%` + `AvgFBcontactQ` + `AvgGBContactQ` + `AvgLDContactQ`)
summary(model5.2)

model5.3 <- lm(`BABIP` ~ `FB%` + `GB%` + `LD%` + `PU%` + `FL%` + `AvgContactQ`)
summary(model5.3)

model5.4 <- lm(`BABIP` ~ `FB%` + `GB%` + `LD%` + `AvgContactQ`)
summary(model5.4)

model5.5 <- lm(`BABIP` ~ `FB%` + `LD%` + `AvgContactQ`)
summary(model5.5)

model6.0 <- lm(`HR/FB%` ~ `AvgFBcontactQ`)
summary(model6.0)

model7.0 <- lm(`SLG` ~ `FB%` + `LD%` + `AvgContactQ`)
summary(model7.0)

model7.1 <- lm(`SLG` ~ `LD%` + `AvgContactQ`)
summary(model7.1)
