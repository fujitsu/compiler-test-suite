      module mod0
       contains
        subroutine mod0_sub0
          print *,'pass1'
          call mod0_sub0_sub1
          return
         entry mod0_ent0
          print *,'pass8'
          call mod0_dummy_ent1
         contains
          subroutine mod0_sub0_sub1
            print *,'pass2'
            call sub2
            print *,'pass4'
            call ent2
            print *,'pass6'
            call mod0_dummy_ent2
          end subroutine mod0_sub0_sub1
        end subroutine mod0_sub0
        subroutine mod0_dummy
          print *,'error'
         entry mod0_dummy_ent1
          print *,'pass9'
          return
         entry mod0_dummy_ent2
          print *,'pass7'
        end subroutine mod0_dummy
      end module

      program main
       use mod0
        call mod0_sub0()
        call mod0_ent0()
        print *,'pass'
      end program

      subroutine sub2
        print *,'pass3'
        return
       entry ent2
        print *,'pass5'
      end subroutine sub2
