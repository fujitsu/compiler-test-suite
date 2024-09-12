      real      a(10),b(10)
      logical*4 l2(10),l3(10)
      data l2/2*.true.,2*.false.,.true.,.false.,2*.true.,2*.false./
      data l3/2*.false.,2*.true.,.false.,2*.true.,2*.false.,.true./
      data a/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
      data b/1.,1.,3.,3.,5.,7.,7.,7.,9.,1./
      do 10 i=1,10
        if ( l2(i) .and. l3(i) ) go to 10
          l3(i) = a(i) .gt. b(i)
  10  continue
      write(6,*) l3
      stop
      end
