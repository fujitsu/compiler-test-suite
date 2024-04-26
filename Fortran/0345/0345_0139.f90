        integer(2) function ifunc(i)
         integer(4)::i
          ifunc=100
          i=i+1
        end function

      program main
       integer(4)::jj
       integer(4),external::ifunc
        j=1
        jj=ifunc(j)
        if (j/=2.or.jj/=100) print *,'error'
        print *,'pass'
      end program
