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

      function sub()
       use mod1
        iii=4
        call sub0()
        if (iii/=5) print *,'error1'
        sub=iii
      end function

      program main
        jjj=sub()
        print *,'pass'
      end program 
