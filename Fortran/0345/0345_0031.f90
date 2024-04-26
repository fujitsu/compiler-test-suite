      logical(4) function fun0()
        fun0=.true.
        assign 10 to ii
        if (ii/=0) goto ii
   10   assign 20 to ii
        assign 30 to ii
        goto ii
   20   print *,'error2'
        return
   30   fun0=.false.      
      end function 

      module mod
        integer(4)::ii
      contains
        subroutine sub()
          logical(4),external::fun0
          assign 20 to ii
          if (fun0()) print *,'error3'
   20     print *,'pass'
        end subroutine
      end module

      program main
       use mod
        call sub()
      end program
