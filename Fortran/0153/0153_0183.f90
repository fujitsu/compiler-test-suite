      subroutine ss
         interface
      subroutine hhh(*,p) 
      character(kind=1,len=*)::p(:)
      end subroutine
         end interface
      call hhh(*1,(/"1"/))
 1    print *,'pass'
      end subroutine
      subroutine hhh(*,p) 
      character(kind=1,len=*)::p(:)
      end subroutine
      call ss
      end 
