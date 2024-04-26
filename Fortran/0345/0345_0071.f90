      module mod
       contains
        function ifun(i) result(ii)
         integer(4)::i
         integer(4)::ii(2)
         ii(1)=i
         ii(2)=i+1
         ii=100
        end function
      end module

      program main
       use mod
       integer(4)::jj(2)
       j=1
       jj=ifun(j)
       if (any(jj/=(/100,100/))) print *,jj
       print *,'pass'
      end program
