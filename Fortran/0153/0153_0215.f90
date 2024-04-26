      subroutine s1
      call ss
      contains
      subroutine ss
      call hhh(*1,"1")
 1    continue
      end subroutine
      subroutine hhh(*,p) 
      character(kind=1,len=*)::p
      end subroutine
      end 
      call s1
      print *,'pass'
      end 
