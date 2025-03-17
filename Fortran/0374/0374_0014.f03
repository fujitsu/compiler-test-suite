 use , intrinsic:: iso_fortran_env
 if (CHARACTER_STORAGE_SIZE.ne.8) print *,'fail'
 if (ERROR_UNIT.ne.0) print *,'fail'
 if (FILE_STORAGE_SIZE.ne.8) print *,'fail'
 if (INPUT_UNIT.ne.5) print *,'fail'
 if (IOSTAT_END.ne.-1) print *,'fail'
 if (IOSTAT_EOR.ne.-2) print *,'fail'
 if (NUMERIC_STORAGE_SIZE.ne.32) print *,'fail'
 if (OUTPUT_UNIT.ne.6) print *,'fail'
 call sub
 print *,'pass'
 end

 module iso_fortran_env
   integer,parameter:: CHARACTER_STORAGE_SIZE=4
   integer,parameter:: ERROR_UNIT=1
   integer,parameter:: FILE_STORAGE_SIZE=16
   integer,parameter:: INPUT_UNIT=4
   integer,parameter:: IOSTAT_END=-98
   integer,parameter:: IOSTAT_EOR=-99
   integer,parameter:: NUMERIC_STORAGE_SIZE=64
   integer,parameter:: OUTPUT_UNIT=7
 end module

 subroutine sub
 use , non_intrinsic:: iso_fortran_env
 if (CHARACTER_STORAGE_SIZE.ne.4) print *,'fail'
 if (ERROR_UNIT.ne.1) print *,'fail'
 if (FILE_STORAGE_SIZE.ne.16) print *,'fail'
 if (INPUT_UNIT.ne.4) print *,'fail'
 if (IOSTAT_END.ne.-98) print *,'fail'
 if (IOSTAT_EOR.ne.-99) print *,'fail'
 if (NUMERIC_STORAGE_SIZE.ne.64) print *,'fail'
 if (OUTPUT_UNIT.ne.7) print *,'fail'
 end subroutine

