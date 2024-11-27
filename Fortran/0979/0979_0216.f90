 use , intrinsic:: iso_fortran_env
 if (CHARACTER_STORAGE_SIZE.ne.8) write(6,*) "NG"
 if (ERROR_UNIT.ne.0) write(6,*) "NG"
 if (FILE_STORAGE_SIZE.ne.8) write(6,*) "NG"
 if (INPUT_UNIT.ne.5) write(6,*) "NG"
 if (IOSTAT_END.ne.-1) write(6,*) "NG"
 if (IOSTAT_EOR.ne.-2) write(6,*) "NG"
 if (NUMERIC_STORAGE_SIZE.ne.32) write(6,*) "NG"
 if (OUTPUT_UNIT.ne.6) write(6,*) "NG"
 print *,'pass'
 end

