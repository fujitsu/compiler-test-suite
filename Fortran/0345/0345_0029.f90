      module mod
       integer(4)::ii
      contains
       logical(4) function sub0()
         sub0=.true.
         assign 10 to ii
         if (ii/=0) goto ii
   10    assign 20 to ii
         assign 30 to ii
         goto ii
   20    print *,'error2'
         return
   30    sub0=.false.      
       end function 

        subroutine sub()
          assign 20 to ii
          if (sub0()) print *,'error3'
   20     print *,'pass'
        end subroutine
      end module

      program main
       use mod
        call sub()
      end program
