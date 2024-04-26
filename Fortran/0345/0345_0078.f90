      module mod1
       integer::ii
       integer::zz
      contains
       recursive subroutine sub()
         if (zz.ge.1) return
         iii=ii*2
         ii=iii
         zz=zz+1
         call sub()
       end subroutine
      end module

      program main
       use mod1,jj=>ii
        jj=10
        zz=0
        call sub()
        if (jj/=20) then
          print *,'error1',jj
        else
          print *,'pass'
        endif
      end program
