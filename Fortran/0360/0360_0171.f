      complex*8  a(10)/(1,2),(3,4),(5,6),(7,8),(9,10),
     +                 (11,12),(13,14),(15,16),(17,18),(19,20)/
      complex*8  b(10)/(1,2),(3,4),(5,6),(7,8),(9,10),
     +                 (11,12),(13,14),(15,16),(17,18),(19,20)/
      complex*8  c(10)/10*0/,var1/(1.,2.)/,var2/(5.,5.)/
      complex*8  rc1(1)/(1.,2.)/,rc2(1)/(5.,5.)/
      real*4     var3/7/,rc3(1)/7/

      do i=1,10
         c(i)= a(i)
      enddo
      write(6,*) c

      do i=1,10
         c(i)= cmplx(4.,5.)
      enddo
      write(6,*) c
      do i=1,10
         c(i)= cmplx(8.,8.)
      enddo
      write(6,*) c
      do i=1,10
         c(i)= (1.,1.)
      enddo
      write(6,*) c

      do i=1,10
         c(i)= (2.,5.)
      enddo
      write(6,*) c

      do i=1,10
         c(i)= var1
      enddo
      write(6,*) c
      do i=1,10
         c(i)= var2
      enddo
      write(6,*) c
      do i=1,10
         c(i)= var3
      enddo
      write(6,*) c

      do i=1,10
         c(i)= rc1(1)
      enddo
      write(6,*) c
      do i=1,10
         c(i)= rc2(1)
      enddo
      write(6,*) c
      do i=1,10
         c(i)= rc3(1)
      enddo
      write(6,*) c
      end



