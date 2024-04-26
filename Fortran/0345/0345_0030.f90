       subroutine sub0()
         assign 10 to ii
         if (ii/=0) goto ii

   10    assign 20 to ii
         assign 30 to ii
         goto ii
   20    print *,'error2'
   30    continue          
       end subroutine 

      module mod
       integer(4)::ii
      contains
        subroutine sub()
          assign 20 to ii
          call sub0()
   20     print *,'pass'
        end subroutine
      end module

      program main
       use mod
        call sub()
      end program
