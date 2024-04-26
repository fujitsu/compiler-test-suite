    program main
     implicit none
     type(character*5), dimension(10) :: w1
     type(character(len=10)), dimension(10) :: w2
    interface
     subroutine char_example1(d2)
      implicit none
      type(character(len=10)), intent(inout) :: d2(:)
     end subroutine char_example1
    end interface
     w1='0123456789'
     w2='ABCDEFGHIJ'
     call char_example(w1(3))
     call char_example1(w2)
     print *,"Pass"
    end program main
    subroutine char_example(d1)
     implicit none
     type(character(len=5)), intent(inout) :: d1
     if(d1/='01234')print*,100
     if(len(d1) /=5 ) print *,101
    end subroutine char_example
    subroutine char_example1(d2)
     implicit none
     type(character(len=10)), intent(inout) :: d2(:)
     if(d2(1)/='ABCDEFGHIJ')print*,102
     if(len(d2) /=10) print *,103
    end subroutine char_example1
