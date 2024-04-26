      module moda
       contains
        subroutine sub
         call bar
          print *,'pass2'
        end subroutine
        subroutine foo
          print *,'pass0'
         entry bar
          print *,'pass1'
        end subroutine
      end 

       use moda
        call sub
        print *,'pass'
      end
