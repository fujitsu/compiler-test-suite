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

 use , non_intrinsic:: iso_fortran_env
 if (CHARACTER_STORAGE_SIZE.ne.4) write(6,*) "NG"
 if (ERROR_UNIT.ne.1) write(6,*) "NG"
 if (FILE_STORAGE_SIZE.ne.16) write(6,*) "NG"
 if (INPUT_UNIT.ne.4) write(6,*) "NG"
 if (IOSTAT_END.ne.-98) write(6,*) "NG"
 if (IOSTAT_EOR.ne.-99) write(6,*) "NG"
 if (NUMERIC_STORAGE_SIZE.ne.64) write(6,*) "NG"
 if (OUTPUT_UNIT.ne.7) write(6,*) "NG"
 print *,'pass'
 end

