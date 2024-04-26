      subroutine ss
   interface
      subroutine hhh(*,*,pp) 
      character(len=1)::pp
      end subroutine
   end interface
      call hhh(*1,*1,'x')
 1    continue
      end subroutine
      subroutine hhh(*,*,pp) 
      character(len=1)::p,pp
      end subroutine
      call ss
      print *,'pass'
      end 
