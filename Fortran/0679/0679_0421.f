      program main
      dimension ia(10),ib(10)
      data ia/10*1/,ib/10*2/
      integer*2 ih(10)/10*0/
      do 10 i=2,10
        ih(i) = ia(i)**3 + ib(i)
  10  continue
      write(6,*) ih,' i = ',i
      stop
      end
