      module mod1
       integer::iii
      contains
       subroutine sub0()
         call sub0_sub()
       contains
        subroutine sub0_sub()
          iii = iii + 1
        end subroutine
       end subroutine
      end module

      module mod2
      contains
       subroutine sub()
        use mod1
         iii=4
         call sub0()
         if (iii/=5) print *,'error1'
       end subroutine
      end module

      program main
       use mod2
        call sub()
        print *,'pass'
      end program 
