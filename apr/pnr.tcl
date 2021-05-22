loadConfig ./Default.conf
commitConfig

floorPlan -d 163 163 0 0 0 0
loadIoFile hight.io

addStripe -nets {vdd gnd} -layer metal5 -width 4 -direction Horizontal -set_to_set_distance 36  -spacing 2  -start_y 5 -stop_y 158
addStripe -nets {vdd gnd} -layer metal4 -width 4 -direction Vertical   -set_to_set_distance 36 -spacing 2  -start_x 5 -stop_x 158

addIoFiller -prefix fill_io -cell EMPTY1HA
sroute -allowLayerChange 1 -blockPinTarget nearestTarget -crossoverViaBottomLayer M1 -crossoverViaTopLayer M4 -layerChangeRange {M1 M4} -nets {vdd gnd}

#addWellTap -cell -fixedGap 30
addEndCap -precap FILLER4EHD -postcap FILLER4EHD -prefix EndCap
saveDesign ./saving/hight.enc
timeDesign -prePlace -idealClock -drvReports -outDir ./reports/preplace_timing
timeDesign -prePlace -idealClock -hold -outDir ./reports/preplace_timing

setPlaceMode -clkGateAware true -congEffort medium -ignoreScan -timingDriven true
placeDesign
timeDesign -preCTS -idealClock -drvReports -outDir ./reports/place_timing
timeDesign -preCTS -idealClock -hold -outDir ./reports/place_timing

optDesign -preCTS 
saveDesign ./saving/hight_place.enc
timeDesign -preCTS -idealClock -drvReports -outDir ./reports/postplace_timing
timeDesign -preCTS -idealClock -hold -outDir ./reports/postplace_timing

setCTSMode -moveGate true -opt true -optArea true -optLatency true -routeClkNet true -routeBottomPreferredLayer 1 -routeTopPreferredLayer 4
clockDesign -specFile /root/hight/apr/Clock.ctstch
timeDesign -postCTS -drvReports -outDir ./reports/cts_timing
timeDesign -postCTS -hold -outDir ./reports/cts_timing
 
optDesign -postCTS 
saveDesign ./saving/hight_cts.enc
timeDesign -postCTS -drvReports -outDir ./reports/postcts_timing
timeDesign -postCTS -hold -outDir ./reports/postcts_timing

routeDesign -globalDetail -viaOpt -wireOpt
timeDesign -postRoute -drvReports -outDir ./reports/route_timing
timeDesign -postRoute -hold -outDir ./reports/route_timing

optDesign -postRoute
optDesign -postRoute -hold
saveDesign ./saving/hight_route.enc
timeDesign -postRoute -drvReports -outDir ./reports/postroute_timing
timeDesign -postRoute -hold -outDir ./reports/postroute_timing
 
addFiller -cell {FILLER1HD FILLER2HD FILLER3HD FILLER4EHD FILLER8EHD FILLER16EHD FILLER32EHD FILLER64EHD}

extractRC -outfile ./hight_rc
write_sdf hight.sdf
saveNetlist ./hight.v -includePowerGround
report_power  -dynamic -outfile hight.pwr
saveDesign ./saving/hight.enc


