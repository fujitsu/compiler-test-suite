      module m
      contains
      subroutine hhh(*,p) 
      character(len=1)::p
      end subroutine
      subroutine ss
      call hhh(*1,'x')
 1    continue
      end subroutine
      end module
      use m
      call ss
      print *,'pass'
      end 
