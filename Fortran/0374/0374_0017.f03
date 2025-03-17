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

 use, non_intrinsic:: iso_fortran_env
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
 use , non_intrinsic:: iso_fortran_env
 if (CHARACTER_STORAGE_SIZE.ne.4) print *,'fail'
 end subroutine

 subroutine sub1
 use , NON_INTRINSIC :: ISO_FORTRAN_ENV
 if (ERROR_UNIT.ne.1) print *,'fail'
 end subroutine

 subroutine sub2
 use , non_intrinsic:: iso_fortran_env
 if (FILE_STORAGE_SIZE.ne.16) print *,'fail'
 end subroutine

 subroutine sub3
 use , non_intrinsic:: iso_fortran_env
 if (INPUT_UNIT.ne.4) print *,'fail'
 end subroutine

 subroutine sub4
 use , non_intrinsic:: iso_fortran_env
 if (IOSTAT_END.ne.-98) print *,'fail'
 end subroutine

 subroutine sub5
 use , non_intrinsic:: ISO_FORTRAN_ENV
 if (IOSTAT_EOR.ne.-99) print *,'fail'
 end subroutine

 subroutine sub6
 use , NON_INTRINSIC:: iso_fortran_env
 if (NUMERIC_STORAGE_SIZE.ne.64) print *,'fail'
 end subroutine

 subroutine sub7
 use , NON_INTRINSIC:: ISO_FORTRAN_ENV
 if (OUTPUT_UNIT.ne.7) print *,'fail'
 end subroutine

 subroutine sub8
 use ,intrinsic:: iso_fortran_env
 if (CHARACTER_STORAGE_SIZE.ne.8) print *,'fail'
 end subroutine

