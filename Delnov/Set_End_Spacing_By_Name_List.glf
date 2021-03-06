#===============================================================================
proc Delnov_Set_End_Spacing_By_Name_List { con_name_list delta } {
#-------------------------------------------------------------------------------
# Sets end spacing for connectors specified by a list of names
#
# Calls sister function: Delnov_Set_End_Spacing
#-------------------------------------------------------------------------------

  # Create a list of segments by provided name list ...
  set con_list [list]
  foreach name $con_name_list {
    lappend con_list [pw::GridEntity getByName $name]
  }

  # ... and call the sister function
  Delnov_Set_End_Spacing $con_list $delta
}

