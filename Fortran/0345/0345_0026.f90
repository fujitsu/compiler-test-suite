      module mod
       integer(4)::ii
      contains
       subroutine sub0()
         assign 10 to ii
         if (ii/=0) goto ii
   10    assign 20 to ii
         assign 30 to ii
         goto ii
   20    print *,'error2'
   30    continue          
       end subroutine 
      end module

      subroutine sub()
       use mod
        assign 20 to ii
        call sub0()
   20   print *,'pass'
      end subroutine

      program main
        call sub()
      end program
