      module mod
      contains
       function rfunc(ii)  result(rj)
        real(4)::rj
        integer(4)::jk
         ii=ii+1
         rj=real(ii)
         return
       entry ient(ii) result(jk)
         jj=ii-1
         jk=jj
         return
       end function
      end module

      program main
       use mod
       integer(4)::ll(2)
       ii=0
       jj=2
       rr=rfunc(ii)
       ll=ient(jj)
       if (rr/=1.00) print *,'error1'
       if (any(ll/=1)) print *,'error2'
       print *,'pass'
      end program
