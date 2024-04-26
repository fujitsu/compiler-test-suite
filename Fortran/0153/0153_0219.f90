      call ss
      print *,'pass'
contains
      subroutine ss
      call hhh(*1)
 1    continue
      end subroutine
      subroutine hhh(*) 
      end subroutine
      end 
