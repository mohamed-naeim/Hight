#######################################################
#                                                     #
#  Encounter Command Logging File                     #
#  Created on Thu Oct 10 03:26:04 2013                #
#                                                     #
#######################################################

#@(#)CDS: First Encounter v08.10-s273_1 (32bit) 06/16/2009 02:26 (Linux 2.6)
#@(#)CDS: NanoRoute v08.10-s155 NR090610-1622/USR60-UB (database version 2.30, 78.1.1) {superthreading v1.11}
#@(#)CDS: CeltIC v08.12-s254_1 (32bit) 06/11/2009 13:55:16 (Linux 2.6.9-67.0.10.ELsmp)
#@(#)CDS: CTE v08.10-s204_1 (32bit) Jun 10 2009 13:59:08 (Linux 2.6.9-67.0.10.ELsmp)
#@(#)CDS: CPE v08.12-s010

loadConfig ./Default.conf
fit
setLayerPreference pGrid -isVisible 0
setLayerPreference trialTrack -isVisible 0
setLayerPreference userGrid -isVisible 0
setLayerPreference congestV -isVisible 0
setLayerPreference congestH -isVisible 0
fit
fit
commitConfig
floorPlan -d 265 265 0 0 0 0
fit
loadIoFile hight.io
fit
zoomIn
zoomIn
zoomIn
windowSelect 130.754 136.947 126.689 142.638
zoomSelected
zoomSelected
fit
zoomIn
fit
windowSelect 7.216 270.217 41.262 253.385
deselectAll
zoomSelected
windowSelect 7.598 272.894 38.202 254.532
deselectAll
addStripe -nets {vdd gnd} -layer metal5 -width 4 -direction Horizontal -set_to_set_distance 27 -spacing 2 -start_y 5 -stop_y 260
addStripe -nets {vdd gnd} -layer metal4 -width 4 -direction Vertical -set_to_set_distance 27 -spacing 2 -start_x 5 -stop_x 260
addIoFiller -prefix fill_io -cell EMPTY1HA
sroute -allowLayerChange 1 -blockPinTarget nearestTarget -crossoverViaBottomLayer M1 -crossoverViaTopLayer M4 -layerChangeRange {M1 M4} -nets {vdd gnd}
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
report_power -dynamic -outfile hight.pwr
saveDesign ./saving/hight.enc
zoomIn
zoomIn
zoomIn
zoomIn
windowSelect 134.615 135.274 135.787 135.991
uiSetTool select
uiSetTool move
selectWire 113.0000 0.0000 117.0000 265.0000 4 vdd
uiSetTool select
windowSelect 115.338 138.947 121.271 138.696
