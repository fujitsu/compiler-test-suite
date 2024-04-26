      module mod
       contains
        subroutine sub0
          print *,'error'
         entry     sub0_entry0()
          print *,'pass 0'
          call sub1_entry0()
          return
         entry     sub1_entry1()
          print *,'pass 5'
        end subroutine sub0
        subroutine sub1
          print *,'error'
         entry     sub1_entry0()
          print *,'pass 1'
          call sub2_entry0()
        end subroutine sub1
        subroutine sub2
          print *,'error'
         entry     sub2_entry0()
          print *,'pass 2'
          call sub3_entry0()
        end subroutine sub2
        subroutine sub3
          print *,'error'
         entry     sub3_entry0()
          print *,'pass 3'
          call sub4_entry0()
        end subroutine sub3
        subroutine sub4
          print *,'error'
         entry     sub4_entry0()
          print *,'pass 4'
          call sub1_entry1()
        end subroutine sub4
      end module

      program main
       use mod
        call sub0_entry0()
        print *,'pass'
      end
