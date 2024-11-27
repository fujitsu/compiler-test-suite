  module mod
    common/com/n,i
!$omp threadprivate(/com/)
    data i/101/
    integer global
!$omp threadprivate(global)
    contains
      subroutine init
        global = i
      end subroutine init
  end module mod

  program main
    use mod
    call init
    print *, global;
  end program main
