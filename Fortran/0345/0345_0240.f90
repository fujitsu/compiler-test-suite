      module mod0
       contains
        subroutine sub0
          print *,'pass1'
          call sub1
          return
         entry ent0
          print *,'pass6'
          call ent1
         contains
          subroutine sub1
            print *,'pass2'
            call sub2
            print *,'pass4'
            call ent2
          end subroutine sub1
        end subroutine
        subroutine dummy
          print *,'error'
         entry ent1
          print *,'pass7'
        end subroutine dummy
      end module

      program main
       use mod0
        call sub0()
        call ent0()
        print *,'pass'
      end program

      subroutine sub2
        print *,'pass3'
        return
       entry ent2
        print *,'pass5'
      end subroutine sub2
