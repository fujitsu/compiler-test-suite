      module mod
       integer(4)::ii
       contains
        function fun0()
          print *,'error'
          fun0=1.0
         entry mod_fun0_entry0()
          print *,'mod_fun0_entry0'
          call mod_sub0_entry0(0)
          call mod_sub0_entry0(1)
          call mod_sub0_entry1()
          fun0=0.0
        end function fun0

        subroutine mod_sub0()
          print *,'error'
         entry mod_sub0_entry0(jj)
          print *,'mod_sub0_entry0'
          if (jj==0) then
            call mod_sub1_entry0()
          else
            call mod_sub1_entry1()
          endif
          return
         entry mod_sub0_entry1()
          print *,'mod_sub0_entry1'
          call mod_sub1_entry1()
        end subroutine mod_sub0

        subroutine mod_sub1()
          print *,'error'
         entry mod_sub1_entry0()
          print *,'mod_sub1_entry0'
          return
         entry mod_sub1_entry1()
          print *,'mod_sub1_entry1'
          return
        end subroutine mod_sub1
      end module

      program main
       use mod
        if (mod_fun0_entry0()/=0.0) print *,'error'
        
        print *,'pass'
      end program
