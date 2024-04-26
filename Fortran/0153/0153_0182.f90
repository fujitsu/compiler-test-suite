      module m
      contains
      subroutine ss
      call hhh(*1,(/"1"/))
 1    print *,'pass'
      end subroutine
      subroutine hhh(*,p) 
      character(kind=1,len=*)::p(:)
      end subroutine
      end module
      use m
      call ss
      end 
