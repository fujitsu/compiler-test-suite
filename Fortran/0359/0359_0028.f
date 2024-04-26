      complex*16 c8(16)
      real*8 r4a(16)/16*3/,r4
      real*8 z(16)/16*0/

      data c8/(1.,-10.),(2.,-29.),(9.,-12.),(4.,-13.),(5.,-14.),(1,1),
     +       (6.,-15.),(0.,-16.),(8.,-17.),(9.,-18.),(10.,-19.),      
     +       (11.,-20.),(12.,-21.),(13.,-22.),(14.,-23.),(15.,-24.)/      

      write(*,*) " TEST start "
      do i = 1, 16
         r4 =  real(c8(i)-(2.,4.)) 
         z(i) = 1
      end do
      if (r4 .ne. 13.0)  then
         write(*,*) "NG1 --> ", r4,z
      endif
      do i = 1, 16
         r4 =  imag(c8(i)-(2.,4.)) 
         z(i) = 1
      end do
      if (r4 .ne. -28.0)  then
         write(*,*) "NG2 --> ", r4,z
      endif
      do i = 1, 16
         r4a(i) =  real(c8(i)-(2.,4.)) 
         z(i) = 1
      end do
      write(*,*) r4a,z
      do i = 1, 16
         r4a(i) =  imag(c8(i)-(2.,4.)) 
         z(i) = 1
      end do
      write(*,*) r4a,z

      write(*,*) " TEST end  "
      end

