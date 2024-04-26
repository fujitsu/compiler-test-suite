      complex*8 c8(16)
      real*4 r4,x(16)/16*2/
      real*4 y(16)/16*2/
      real*4 dd(16)/16*2/
      data c8/(1.,0.),(2.,-1.),(3.,-2.),(4.,-3.),(5.,-4.),(1,1),
     +       (6.,-5.),(0.,-6.),(8.,-7.),(9.,-8.),(10.,-9.),      
     +       (1.,-2.),(2.,-1.),(3.,-2.),(4.,-3.),(5.,-4.)/      

      write(*,*) " TEST start "
      r4 = 0
      do i = 1, 16
         r4 = r4 * dd(i) * real(c8(i)-(2.,4.)) + 1
      end do
      if (r4 .ne. 79.0)  then
         write(*,*) "NG1 --> ", r4
      endif
      r4 = 0
      do i = 1, 16
         r4 = r4 * dd(i) * real(c8(i)-(2.,4.)) + x(i)
      end do
      if (r4 .ne. 158.0)  then
         write(*,*) "NG2 --> ", r4
      endif
      r4 = 0
      do i = 1, 16
         r4 = r4 * dd(i) * real(c8(i)-(2.,4.)) + x(i) + y(i)
      end do
      if (r4 .ne. 316.0)  then
         write(*,*) "NG3 --> ", r4
      endif
      r4 = 0
      do i = 1, 16
         r4 = r4 * dd(i) * real(c8(i)-(2.,4.)) + x(3)
      end do
      if (r4 .ne. 158.0)  then
         write(*,*) "NG4 --> ", r4
      endif

      r4 = 0
      do i = 1, 16
         r4 = r4 + dd(i) * imag(c8(i)-(2.,4.)) + 1
      end do
      if (r4 .ne. -224)  then
         write(*,*) "NG5 --> ", r4
      endif
      r4 = 0
      do i = 1, 16
         r4 = r4 + dd(i) * imag(c8(i)-(2.,4.)) + x(i)
      end do
      if (r4 .ne. -208)  then
         write(*,*) "NG6 --> ", r4
      endif
      r4 = 0
      do i = 1, 16
         r4 = r4 + dd(i) * imag(c8(i)-(2.,4.)) + x(i) + y(i)
      end do
      if (r4 .ne. -176)  then
         write(*,*) "NG7 --> ", r4
      endif
      r4 = 0
      do i = 1, 16
         r4 = r4 + dd(i) * imag(c8(i)-(2.,4.)) + x(3)
      end do
      if (r4 .ne. -208)  then
         write(*,*) "NG8 --> ", r4
      endif


      write(*,*) " TEST end  "
      end

