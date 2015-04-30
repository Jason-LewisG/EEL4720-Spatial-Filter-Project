######################################################
#
# XPS Tcl API script generated by PlanAhead
#
######################################################

cd "C:/try11/try11.srcs/sources_1/edk/project_11_mod"
if { [xload new project_11_mod.xmp] != 0 } {
  exit -1
}
xset arch zynq
xset dev xc7z020
xset package clg484
xset speedgrade -1

xset binfo ZC702

if { [xset hier sub] != 0 } {
  exit -1
}
xset hdl vhdl
save proj
exit
