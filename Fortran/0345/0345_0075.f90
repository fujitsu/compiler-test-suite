      module mod1
       integer::ii
      contains
       function ifunc()
        volatile::ifunc
         ifunc=ii*2
       end function
      end module

      program main
       use mod1,jj=>ii
        jj=10
        kk=ifunc()
        if (kk/=20) then
          print *,'error1',kk
        else
          print *,'pass'
        endif
      end program
