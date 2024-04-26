      module mod1
       integer::ii
      contains
       function ifunc()
        volatile::ifunc
         ifunc=ii*2
       end function
      end module

      program main
       use mod1,jfunc=>ifunc,jj=>ii
        jj=10
        kk=jfunc()
        if (kk/=20) then
          print *,'error',kk
        else
          print *,'pass'
        endif
      end program
