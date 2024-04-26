      module mod1
       integer::ii
       integer::zz
      contains
       recursive function ifunc() result(ir)
         zz=zz+1
         iii=ii*2
         if (zz.gt.10) then
           ir=iii
           return
         endif
         ir=ifunc()
       end function
      end module

      program main
       use mod1,jj=>ii
        jj=10
        zz=0
        kk=ifunc()
        if (kk/=20) then
          print *,'error1',kk
        else
          print *,'pass'
        endif
      end program
