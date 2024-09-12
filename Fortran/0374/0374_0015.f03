 call sub0
 call sub1
 call sub2
 call sub3
 call sub4
 call sub5
 call sub6
 call sub7
 call sub8
 print *,'pass'
 end

 subroutine sub0
 use , intrinsic:: iso_fortran_env
 if (CHARACTER_STORAGE_SIZE.ne.8) call errtra
 end subroutine

 subroutine sub1
 use , INTRINSIC :: ISO_FORTRAN_ENV
 if (ERROR_UNIT.ne.0) call errtra
 end subroutine

 subroutine sub2
 use , intrinsic:: iso_fortran_env
 if (FILE_STORAGE_SIZE.ne.8) call errtra
 end subroutine

 subroutine sub3
 use , intrinsic:: iso_fortran_env
 if (INPUT_UNIT.ne.5) call errtra
 end subroutine

 subroutine sub4
 use , intrinsic:: iso_fortran_env
 if (IOSTAT_END.ne.-1) call errtra
 end subroutine

 subroutine sub5
 use , intrinsic:: ISO_FORTRAN_ENV
 if (IOSTAT_EOR.ne.-2) call errtra
 end subroutine

 subroutine sub6
 use , INTRINSIC:: iso_fortran_env
 if (NUMERIC_STORAGE_SIZE.ne.32) call errtra
 end subroutine

 subroutine sub7
 use , INTRINSIC:: ISO_FORTRAN_ENV
 if (OUTPUT_UNIT.ne.6) call errtra
 end subroutine

 module iso_fortran_env
   integer,parameter:: CHARACTER_STORAGE_SIZE=4
 end module

 subroutine sub8
 use , non_intrinsic:: iso_fortran_env
 if (CHARACTER_STORAGE_SIZE.ne.4) call errtra
 end subroutine
