      real*4  rc(10),rmin
      data    rc/10*1.0/

      rmin=10.
      j=0
      do 30 i=2,8
        dif=rmin-rc(i)
        if(dif) 30,30,32
   32     rmin=rc(i)
          j=i
   30 continue
      write(6,*) 'rmin=',rmin
      stop
      end
