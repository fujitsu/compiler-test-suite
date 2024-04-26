      function rfun(r)
       real(4),dimension(1)::r
        r(1)=r(1)+1
        rfun=int(r(1))
      end function

      program main
       integer(4),dimension(1)::r
        r=1
        i=rfun(r)
        print *,'pass'
      end program
