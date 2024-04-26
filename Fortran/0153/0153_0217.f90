     module m1
     contains
      subroutine ss
      call hhh(*1)
 1    continue
      end subroutine
      subroutine hhh(*) 
      end subroutine
     end
     use m1
      call ss
      print *,'pass'
      end 
