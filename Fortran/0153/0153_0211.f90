      subroutine ss
   interface
      subroutine hhh(p,*,pp) 
      character(len=1)::p,pp
      end subroutine
   end interface
      call hhh('x',*1,'x')
 1    continue
      end subroutine
      subroutine hhh(p,*,pp) 
      character(len=1)::p,pp
      end subroutine
      call ss
      print *,'pass'
      end 
