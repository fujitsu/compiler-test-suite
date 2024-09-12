      program main
      dimension ia(10),ib(10),ic(10)
      dimension ra(10),rb(10)
      logical*4 l(10)
      real*8  qa(10),qb(10)
      data qa/10*0/,qb/1,2,1,2,1,2,1,2,1,2/
      data ia/10*0/,ib/1,2,3,1,2,3,1,2,3,1/,ic/1,2,1,1,2,1,1,1,2,1/
      data ra/10*4./,m/1/ ,rb/10*0/
      data l/2*.true.,2*.false.,2*.true.,2*.true.,2*.false./
      do 10 i=1,10
        ia(i) = ib(i) + ic(i)**m
        qa(i) = qb(i)**ia(i)
  10  continue
      write(6,*) qa
      do 20 i=2,10
        if ( l(i) ) then
          ra(i) = sqrt(ra(i-1)) +rb(i)**m
        endif
  20  continue
      write(6,*) ra
      stop
      end
