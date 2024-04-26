      subroutine ss
   interface
      subroutine hhh(*) 
      character(len=1)::p
      end subroutine
   end interface
      call hhh(*1)
 1    continue
      end subroutine
      subroutine hhh(*) 
      end subroutine
      call ss
      print *,'pass'
      end 
