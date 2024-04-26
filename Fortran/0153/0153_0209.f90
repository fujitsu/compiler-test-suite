      subroutine ss
   interface
      subroutine hhh(*,p) 
      character(len=1)::p
      end subroutine
   end interface
      call hhh(*1,'x')
 1    continue
      end subroutine
      subroutine hhh(*,p) 
      character(len=1)::p
      end subroutine
      call ss
      print *,'pass'
      end 
