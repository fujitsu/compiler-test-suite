module type_mod
  type tt1
     real(kind=8) :: tt1a = 0._8, tt1b = 2._8
  end type tt1
  type tt2
     real(kind=8) :: tt2a = 0._8, tt2b = 1._8, tt2c = 2._8, tt2d = 3._8
  end type tt2
  type tt3
     integer(kind=8) :: tt3a = 0_8, tt3b = 2_8
  end type tt3
  type tt4
     integer(kind=8) :: tt4a = 0_8, tt4b = 1_8, tt4c = 2_8, tt4d = 3_8
  end type tt4
  type tt5
     type(tt1) :: tt5a
  end type tt5
end module type_mod

subroutine f1(f1a)
  use type_mod
  type(tt1),value :: f1a

!$omp parallel shared(f1a)
  !$omp parallel shared(f1a)
    !$omp parallel shared(f1a)
      f1a%tt1a = f1a%tt1b + 1._8
    !$omp endparallel
  !$omp endparallel
!$omp endparallel

  if ( f1a%tt1a .ne. 3._8 ) then
     print *, "NG"
  endif
end subroutine f1
subroutine f2(f2a)
  use type_mod
  type(tt2),value :: f2a

!$omp parallel shared(f2a)
  !$omp task shared(f2a)
    !$omp parallel shared(f2a)
      f2a%tt2a = f2a%tt2b + f2a%tt2c + f2a%tt2d
    !$omp endparallel
  !$omp endtask
!$omp endparallel

  if ( f2a%tt2a .ne. 6._8 ) then
     print *, "NG"
  endif
end subroutine f2
subroutine f3(f3a)
  use type_mod
  type(tt3),value :: f3a
  
  call if3()
  if ( f3a%tt3a .ne. 3_8 ) then
     print *, "NG"
  endif
contains
  subroutine if3()
  !$omp parallel shared(f3a)
    !$omp parallel shared(f3a)
      f3a%tt3a = f3a%tt3b + 1_8
    !$omp endparallel
  !$omp endparallel

  end subroutine if3
end subroutine f3
module test_mod
  real(kind=4) :: tm4a/0._4/
  integer(kind=4) :: tm5a/0_4/
contains
  subroutine f4(f4a)
    use type_mod
    type(tt4),value :: f4a

    !$omp parallel shared(f4a)
      !$omp parallel shared(f4a)
        f4a%tt4a = f4a%tt4b + f4a%tt4c + f4a%tt4d
        tm4a = 6._4
      !$omp endparallel
    !$omp endparallel

    if ( f4a%tt4a .ne. 6_8 .or. tm4a .ne. 6._4) then
       print *, "NG"
    endif
  end subroutine f4
  subroutine f5(f5a)
    use type_mod
    type(tt5),value :: f5a
    
    call if5()

  contains
    subroutine if5()
      !$omp parallel shared(f5a)
         f5a%tt5a%tt1a = f5a%tt5a%tt1b + 1._8
         tm5a = 3_4
      !$omp endparallel

      if ( f5a%tt5a%tt1a .ne. 3._8 .or. tm5a .ne. 3_4 ) then
         print *, "NG"
      endif
    end subroutine if5
  end subroutine f5
end module test_mod
program main
  use type_mod
  use test_mod
  interface
     subroutine f1(f1a)
       use type_mod
       type(tt1),value :: f1a
     end subroutine f1
     subroutine f2(f2a)
       use type_mod
       type(tt2),value :: f2a
     end subroutine f2
     subroutine f3(f3a)
       use type_mod
       type(tt3),value :: f3a
     end subroutine f3
  end interface

  type(tt1) :: m1a
  type(tt2) :: m2a
  type(tt3) :: m3a
  type(tt4) :: m4a
  type(tt5) :: m5a

  call f1(m1a)
  call f2(m2a)
  call f3(m3a)
  call f4(m4a)
  call f5(m5a)
  print *, "OK"
end program main
