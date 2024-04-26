      complex*16 c8(16)
      real*8 r4,x(16)/16*3/
      real*8 y(16)/16*3/
      real*8 z(16)/16*0/
      data c8/(1.,-10.),(2.,-29.),(9.,-12.),(4.,-13.),(5.,-14.),(1,1),
     +       (6.,-15.),(0.,-16.),(8.,-17.),(9.,-18.),(10.,-19.),      
     +       (11.,-20.),(12.,-21.),(13.,-22.),(14.,-23.),(15.,-24.)/      

      write(*,*) " TEST start "
      do i = 1, 16
         r4 =  dreal(c8(i)-(2.,4.)) + 3
         z(i) = 1
      end do
      if (z(1) .ne. 1 .or. r4 .ne. 16.0)  then
         write(*,*) "NG1 --> ", r4
      endif
      do i = 1, 16
         r4 =  dreal(c8(i)-(2.,4.)) + x(i)
         z(i) = 1
      end do
      if (z(1) .ne. 1 .or. r4 .ne. 16.0)  then
         write(*,*) "NG2 --> ", r4
      endif
      do i = 1, 16
         r4 =  dreal(c8(i)-(2.,4.)) + x(i) + y(i)
         z(i) = 1
      end do
      if (z(1) .ne. 1 .or. r4 .ne. 19.0)  then
         write(*,*) "NG3 --> ", r4
      endif
      do i = 1, 16
         r4 =  dreal(c8(i)-(2.,4.)) + x(3)
         z(i) = 1
      end do
      if (z(1) .ne. 1 .or. r4 .ne. 16.0)  then
         write(*,*) "NG4 --> ", r4
      endif

      do i = 1, 16
         r4 =  dimag(c8(i)-(2.,4.)) + 3
         z(i) = 1
      end do
      if (z(1) .ne. 1 .or. r4 .ne. -25)  then
         write(*,*) "NG5 --> ", r4
      endif
      do i = 1, 16
         r4 =  dimag(c8(i)-(2.,4.)) + x(i)
         z(i) = 1
      end do
      if (z(1) .ne. 1 .or. r4 .ne. -25)  then
         write(*,*) "NG6 --> ", r4
      endif
      do i = 1, 16
         r4 =  dimag(c8(i)-(2.,4.)) + x(i) + y(i)
         z(i) = 1
      end do
      if (z(1) .ne. 1 .or. r4 .ne. -22)  then
         write(*,*) "NG7 --> ", r4
      endif
      do i = 1, 16
         r4 =  dimag(c8(i)-(2.,4.)) + x(3)
         z(i) = 1
      end do
      if (z(1) .ne. 1 .or. r4 .ne. -25)  then
         write(*,*) "NG8 --> ", r4
      endif


      write(*,*) " TEST end  "
      end

