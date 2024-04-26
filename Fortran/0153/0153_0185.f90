      module m
      contains
      subroutine ss
      call hhh(*1,'xx')
 1    continue
      end subroutine
      subroutine hhh(*,p) 
      character(len=2)::p
      end subroutine
      end module
      use m
      call ss
      print *,'pass'
      end 
