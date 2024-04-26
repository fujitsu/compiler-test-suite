      function rfun(r)
       real(4),dimension(2)::r
        r(1)=r(2)+1
        rfun=int(r(1))
      end function

      program main
       integer(4),dimension(1)::r1,r2
        r2=1
        i=rfun(r1,r2)
        print *,'pass'
      end program
