 use , intrinsic:: iso_fortran_env,only : CHARACTER_STORAGE_SIZE
 use , intrinsic:: iso_fortran_env,only : ERROR_UNIT
 use , intrinsic:: iso_fortran_env,only : FILE_STORAGE_SIZE
 use , intrinsic:: iso_fortran_env,only : INPUT_UNIT
 use , intrinsic:: iso_fortran_env,only : IOSTAT_END
 use , intrinsic:: iso_fortran_env,only : IOSTAT_EOR
 use , intrinsic:: iso_fortran_env,only : NUMERIC_STORAGE_SIZE
 use , intrinsic:: iso_fortran_env,only : OUTPUT_UNIT
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

 subroutine test01()
 use , intrinsic:: iso_fortran_env,only : CHARACTER_STORAGE_SIZE
 use , intrinsic:: iso_fortran_env,only : ERROR_UNIT
 use , intrinsic:: iso_fortran_env,only : FILE_STORAGE_SIZE
 use , intrinsic:: iso_fortran_env,only : INPUT_UNIT
 use , intrinsic:: iso_fortran_env,only : IOSTAT_END
 use , intrinsic:: iso_fortran_env,only : IOSTAT_EOR
 use , intrinsic:: iso_fortran_env,only : NUMERIC_STORAGE_SIZE
 use , intrinsic:: iso_fortran_env,only : OUTPUT_UNIT
 end
 subroutine test02()
 use , intrinsic:: iso_fortran_env,only :A_CHARACTER_STORAGE_SIZE =>CHARACTER_STORAGE_SIZE
 use , intrinsic:: iso_fortran_env,only :A_ERROR_UNIT =>ERROR_UNIT
 use , intrinsic:: iso_fortran_env,only : A_FILE_STORAGE_SIZE =>FILE_STORAGE_SIZE
 use , intrinsic:: iso_fortran_env,only : A_INPUT_UNIT =>INPUT_UNIT
 use , intrinsic:: iso_fortran_env,only : A_IOSTAT_END => IOSTAT_END
 use , intrinsic:: iso_fortran_env,only : A_IOSTAT_EOR => IOSTAT_EOR
 use , intrinsic:: iso_fortran_env,only : A_IOSTAT_EOR => NUMERIC_STORAGE_SIZE
 use , intrinsic:: iso_fortran_env,only : A_NUMERIC_STORAGE_SIZE =>OUTPUT_UNIT
 end

 subroutine test03()
 use , intrinsic:: iso_fortran_env,A_CHARACTER_STORAGE_SIZE => CHARACTER_STORAGE_SIZE
 use , intrinsic:: iso_fortran_env,A_ERROR_UNIT => ERROR_UNIT
 use , intrinsic:: iso_fortran_env, A_FILE_STORAGE_SIZE => FILE_STORAGE_SIZE
 use , intrinsic:: iso_fortran_env, A_INPUT_UNIT => INPUT_UNIT
 use , intrinsic:: iso_fortran_env, A_IOSTAT_END => IOSTAT_END
 use , intrinsic:: iso_fortran_env, A_IOSTAT_EOR => IOSTAT_EOR
 use , intrinsic:: iso_fortran_env, A_NUMERIC_STORAGE_SIZE => NUMERIC_STORAGE_SIZE
 use , intrinsic:: iso_fortran_env, A_OUTPUT_UNIT => OUTPUT_UNIT
 if (A_CHARACTER_STORAGE_SIZE.ne.8) write(6,*) "NG"
 if (A_ERROR_UNIT.ne.0) write(6,*) "NG"
 if (A_FILE_STORAGE_SIZE.ne.8) write(6,*) "NG"
 if (A_INPUT_UNIT.ne.5) write(6,*) "NG"
 if (A_IOSTAT_END.ne.-1) write(6,*) "NG"
 if (A_IOSTAT_EOR.ne.-2) write(6,*) "NG"
 if (A_NUMERIC_STORAGE_SIZE.ne.32) write(6,*) "NG"
 if (A_OUTPUT_UNIT.ne.6) write(6,*) "NG"
 end

 subroutine test04()
 use , intrinsic:: iso_fortran_env,A_CHARACTER_STORAGE_SIZE => CHARACTER_STORAGE_SIZE
 use , intrinsic:: iso_fortran_env,A_ERROR_UNIT => ERROR_UNIT
 use , intrinsic:: iso_fortran_env, A_FILE_STORAGE_SIZE => FILE_STORAGE_SIZE
 use , intrinsic:: iso_fortran_env, A_INPUT_UNIT => INPUT_UNIT
 use , intrinsic:: iso_fortran_env, A_IOSTAT_END => IOSTAT_END
 use , intrinsic:: iso_fortran_env, A_IOSTAT_EOR => IOSTAT_EOR
 use , intrinsic:: iso_fortran_env, A_NUMERIC_STORAGE_SIZE => NUMERIC_STORAGE_SIZE
 use , intrinsic:: iso_fortran_env, A_OUTPUT_UNIT => OUTPUT_UNIT
 use , intrinsic:: iso_fortran_env,only : CHARACTER_STORAGE_SIZE
 use , intrinsic:: iso_fortran_env,only : ERROR_UNIT
 use , intrinsic:: iso_fortran_env,only : FILE_STORAGE_SIZE
 use , intrinsic:: iso_fortran_env,only : INPUT_UNIT
 use , intrinsic:: iso_fortran_env,only : IOSTAT_END
 use , intrinsic:: iso_fortran_env,only : IOSTAT_EOR
 use , intrinsic:: iso_fortran_env,only : NUMERIC_STORAGE_SIZE
 use , intrinsic:: iso_fortran_env,only : OUTPUT_UNIT

 if (A_CHARACTER_STORAGE_SIZE.ne.8) write(6,*) "NG"
 if (A_ERROR_UNIT.ne.0) write(6,*) "NG"
 if (A_FILE_STORAGE_SIZE.ne.8) write(6,*) "NG"
 if (A_INPUT_UNIT.ne.5) write(6,*) "NG"
 if (A_IOSTAT_END.ne.-1) write(6,*) "NG"
 if (A_IOSTAT_EOR.ne.-2) write(6,*) "NG"
 if (A_NUMERIC_STORAGE_SIZE.ne.32) write(6,*) "NG"
 if (A_OUTPUT_UNIT.ne.6) write(6,*) "NG"
 if (CHARACTER_STORAGE_SIZE.ne.8) write(6,*) "NG"
 if (ERROR_UNIT.ne.0) write(6,*) "NG"
 if (FILE_STORAGE_SIZE.ne.8) write(6,*) "NG"
 if (INPUT_UNIT.ne.5) write(6,*) "NG"
 if (IOSTAT_END.ne.-1) write(6,*) "NG"
 if (IOSTAT_EOR.ne.-2) write(6,*) "NG"
 if (NUMERIC_STORAGE_SIZE.ne.32) write(6,*) "NG"
 if (OUTPUT_UNIT.ne.6) write(6,*) "NG"

 end

