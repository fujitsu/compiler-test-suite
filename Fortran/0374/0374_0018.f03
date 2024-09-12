 use , intrinsic:: iso_fortran_env
 if (kind(CHARACTER_STORAGE_SIZE).ne.4) call errtra
 if (kind(ERROR_UNIT).ne.4) call errtra
 if (kind(FILE_STORAGE_SIZE).ne.4) call errtra
 if (kind(INPUT_UNIT).ne.4) call errtra
 if (kind(IOSTAT_END).ne.4) call errtra
 if (kind(IOSTAT_EOR).ne.4) call errtra
 if (kind(NUMERIC_STORAGE_SIZE).ne.4) call errtra
 if (kind(OUTPUT_UNIT).ne.4) call errtra
 if (CHARACTER_STORAGE_SIZE.ne.8) call errtra
 if (ERROR_UNIT.ne.0) call errtra
 if (FILE_STORAGE_SIZE.ne.8) call errtra
 if (INPUT_UNIT.ne.5) call errtra
 if (IOSTAT_END.ne.-1) call errtra
 if (IOSTAT_EOR.ne.-2) call errtra
 if (NUMERIC_STORAGE_SIZE.ne.32) call errtra
 if (OUTPUT_UNIT.ne.6) call errtra
 call sub
 print *,'pass'
 end

 module iso_fortran_env
   integer(kind=4),parameter:: CHARACTER_STORAGE_SIZE=4
   integer(kind=4),parameter:: ERROR_UNIT=1
   integer(kind=4),parameter:: FILE_STORAGE_SIZE=16
   integer(kind=4),parameter:: INPUT_UNIT=4
   integer(kind=4),parameter:: IOSTAT_END=-98
   integer(kind=4),parameter:: IOSTAT_EOR=-99
   integer(kind=4),parameter:: NUMERIC_STORAGE_SIZE=64
   integer(kind=4),parameter:: OUTPUT_UNIT=7
 end module

 subroutine sub
 use , non_intrinsic:: iso_fortran_env
 if (kind(CHARACTER_STORAGE_SIZE).ne.4) call errtra
 if (kind(ERROR_UNIT).ne.4) call errtra
 if (kind(FILE_STORAGE_SIZE).ne.4) call errtra
 if (kind(INPUT_UNIT).ne.4) call errtra
 if (kind(IOSTAT_END).ne.4) call errtra
 if (kind(IOSTAT_EOR).ne.4) call errtra
 if (kind(NUMERIC_STORAGE_SIZE).ne.4) call errtra
 if (kind(OUTPUT_UNIT).ne.4) call errtra
 if (CHARACTER_STORAGE_SIZE.ne.4) call errtra
 if (CHARACTER_STORAGE_SIZE.ne.4) call errtra
 if (ERROR_UNIT.ne.1) call errtra
 if (FILE_STORAGE_SIZE.ne.16) call errtra
 if (INPUT_UNIT.ne.4) call errtra
 if (IOSTAT_END.ne.-98) call errtra
 if (IOSTAT_EOR.ne.-99) call errtra
 if (NUMERIC_STORAGE_SIZE.ne.64) call errtra
 if (OUTPUT_UNIT.ne.7) call errtra
 end subroutine

