      program main
      real  b(10,10),e(20)
      real  d(20,20),c(20)
      equivalence (c(1),e(1))
      equivalence (d(1,1),c(1))
      equivalence (d(1,1),b(1,1))
      data d/400*2.0/
c
      do 20 i=1,2
       do 20 j=1,2
        write(6,*)'### ',i,j,'###'
        c(i) = c(i) + e(i+j)
        b(i,j) = 1.0/d(i,j)
  20  continue
c
      write(6,*) c(1),c(2)
      if( c(1) .eq. 2.25 .and. c(2) .eq. 2.25 ) then
        print *,' OK '
      else
        print *,' NG '
      endif
      stop
      end


