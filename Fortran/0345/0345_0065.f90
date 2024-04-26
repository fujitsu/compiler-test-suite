      module mod1
       integer::iii
      contains
       integer function sub0()
         call sub0_sub()
         sub0 = iii
       contains
        subroutine sub0_sub()
          iii = iii + 1
        end subroutine
       end function
      end module

      module mod2
      contains
       function sub()
        use mod1
         iii=4
         kkk = sub0()
         if (kkk/=5) print *,'error1'
         sub=kkk
       end function
      end module

      program main
       use mod2
        jjj=sub()
         print *,'pass'
      end program 
