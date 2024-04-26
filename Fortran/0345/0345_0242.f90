      subroutine sub1()
        print *,'pass7'
      end subroutine

      module mod2
       contains
        subroutine mod2_sub0()
          print *,'pass0'
          return
         entry mod2_entry0()
          print *,'pass6'
          call sub1()
          return
         entry mod2_entry1()
          print *,'pass5'
          return
         entry mod2_entry2()
          print *,'pass3'
        end subroutine mod2_sub0
      end module

      module mod1
       use mod2
       contains
        subroutine mod1_sub0()
          print *,'pass9'
          return
         entry mod1_entry0()
          print *,'pass4'
          call mod2_entry1()
          return
         entry mod1_entry1()
          print *,'pass2'
          call mod2_entry2()
        end subroutine mod1_sub0
      end module

      module mod0
       use mod1
       contains
        subroutine mod0_sub0()
          print *,'pass8'
          return
         entry mod0_entry0()
          print *,'pass1'
          call mod1_entry1()
        end subroutine mod0_sub0
      end module

      subroutine sub0()
       use mod0
        call mod0_entry0()
        call mod1_entry0()
        call mod2_entry0()
        call mod0_sub0()
        call mod1_sub0()
        call mod2_sub0()
      end subroutine

      program main
        call sub0()
        print *,'pass'
      end 
