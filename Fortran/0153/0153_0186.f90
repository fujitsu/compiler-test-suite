      module m
      contains
      subroutine ss
      call hhh(*1,['x'])
 1    continue
      end subroutine
      subroutine hhh(*,p) 
      character(len=1)::p(1)
      end subroutine
      end module
      use m
      call ss
      print *,'pass'
      end 
