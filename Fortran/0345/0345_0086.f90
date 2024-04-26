      module mod
      contains
       function ifunc(ii)
         ii=ii+1
         ifunc=ii
         return
       entry ient(jj) result(jk)
         jj=jj-1
         jk=jj
         return
       end function
      end module

      program main
       use mod
       ii=0
       jj=2
       kk=ifunc(ii)
       ll=ient(jj)
       if (kk/=1) print *,'error1'
       if (ll/=1) print *,'error2'
       print *,'pass'
      end program
