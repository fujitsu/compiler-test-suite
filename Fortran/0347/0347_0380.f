      real*8 d(10)
      do 10 i=1,10
        d(i)=1./dfloat(i)
   10   d(1)=d(1)+d(i)
      write(6,600) (d(i),i=1,10)
  600 format((1h ,3(d24.17),/))
      stop
      end
