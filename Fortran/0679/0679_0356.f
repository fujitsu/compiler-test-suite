      dimension a(10),b(10),c(10),d(10)
      data a/10*0.0/
      data b/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
      data c/0.,2.,4.,3.,5.,7.,6.,8.,10.,10./
      data d/0.,1.,4.,3.,0.,0.,6.,-1.,10.,10./
      do 10 i=1,10
        if ( b(i) - c(i) ) 10,20,30
  20      a(i) = b(i) + c(i)
          if (d(i)) 10,30,40
  30       a(i) = b(i) * c(i)
           go to 10
  40       a(i) = b(i) - c(i)
  10  continue
      write(6,*) a
      stop
      end
