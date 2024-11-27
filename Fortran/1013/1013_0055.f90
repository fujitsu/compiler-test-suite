  module mod
    implicit none
    integer n,i
    common/com/n,i

!$omp threadprivate(/com/)
    data i/101/
    integer  :: ggg
!$omp threadprivate(ggg)
    contains
      integer function ifun1()
        ifun1 = i
      end function ifun1
      integer function ifun2()
        ifun2 = ggg
      end function ifun2
  end module mod

  program main
    use mod
    implicit none
    ggg = 1000
    if (ifun1() + ifun2() + ifun3() .ne. 1202) stop
    print *,"PASS"
    contains
      integer function ifun3()
        ifun3 = i
      end function ifun3
  end program main
