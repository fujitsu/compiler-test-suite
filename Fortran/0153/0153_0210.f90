      subroutine ss
   interface
      subroutine hhh(p,*) 
      character(len=1)::p
      end subroutine
   end interface
      call hhh('x',*1)
 1    continue
      end subroutine
      subroutine hhh(p,*) 
      character(len=1)::p
      end subroutine
      call ss
      print *,'pass'
      end 
