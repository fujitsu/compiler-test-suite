      module mod1
       integer::ii
      contains
       recursive function ifunc()
         volatile::iii
         iii=10*10
         iii=ii*2
         ifunc=iii
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
