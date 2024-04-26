      call ss
      print *,'pass'
contains
      subroutine ss
      call hhh(*1,'x')
 1    continue
      end subroutine
      subroutine hhh(*,p) 
      character(len=1)::p
      end subroutine
      end 
