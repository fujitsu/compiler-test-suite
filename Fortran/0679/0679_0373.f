      dimension a(10),b(10),c(10),d(10)
      data a/10*0.0/
      data b/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
      data c/0.,2.,4.,3.,5.,7.,6.,8.,10.,10./
      data d/0.,1.,-4.,3.,0.,-0.,6.,-1.,0.,10./

      do 10 i=1,10
          if (d(i)) 20,30,40
  20       a(i) = b(i) * c(i)
           go to 10
  30       a(i) = b(i) - c(i)
           go to 10
  40       a(i) = b(i) + c(i)
  10  continue
      write(6,*) a

      do 60 i=1,10
          if (d(i)) 70,80,80
  70       a(i) = b(i) * c(i)
           go to 60
  80       a(i) = b(i) - c(i)
           go to 60
  60  continue
      write(6,*) a

      do 100 i=1,10
          if (d(i)) 110,110,120
 110       a(i) = b(i) * c(i)
           go to 100
 120       a(i) = b(i) - c(i)
           go to 100
 100  continue
      write(6,*) a

      do 200 i=1,10
          if (d(i)) 210,210,210
 210       a(i) = b(i) * c(i)
           go to 200
 200  continue
      write(6,*) a
      stop
      end
