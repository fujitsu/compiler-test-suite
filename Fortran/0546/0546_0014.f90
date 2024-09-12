    module mod0
      type aaa
        integer(4)      ::i4
      end type aaa
      type(aaa),target     ,dimension(4)::st3
    end module mod0

    module mod00
     use mod0
       type(aaa),allocatable,dimension(:)::p_st
    end module mod00

    program main
      print *,'pass'
    end program main

    subroutine sub2(p_st)
     use mod0
     type(aaa),allocatable,dimension(:)::p_st
     contains

      subroutine sub2_sub(ppp)
       use mod00
       type(aaa),allocatable,dimension(:)::ppp
        ppp=st3
      end subroutine sub2_sub

    end subroutine sub2

