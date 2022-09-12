#xStats for batters

#model 1.9.3
`xK%` <- .91637-(.07299*`Pit/PA`)+(.20780*`S/Str`)-(.13825*`F/Str`)-(1.46568*`I/Str`)

#model 2.3.6
`xBB%` <- .48311-(.55348*`oSwing%`)-(.50419*`Zone%`)+(.30971*`F/Str`)-(.15641*`Contact%`)

`xBB/xK` <- `xBB%`/`xK%`

#model5.5
`xBABIP` <- -.49167 - (.15105*`FB%`) + (.36113*`LD%`) + (.28022*`AvgContactQ`)

#model6.0
`xHR/FB%` <- -1.34742 + (.44743*`AvgFBcontactQ`)

#model7.1
`xSLG` <- -1.79340 + (.23840*`LD%`) + (.77951*`AvgContactQ`)


#xStats for pitchers

#model 3.8
`xK%p` <- -.57880+(2.27794*`SwStr%`)+(1.14639*`L/Str`)+(.89706*`F/Str`)

