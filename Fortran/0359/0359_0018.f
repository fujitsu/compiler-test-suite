      complex*16 c8(16),c8b(16)/16*0/
      real*8 r4(16)/16*0/,x(16)/16*3/
      real*8 y(16)/16*3/
      data c8/(1.,-10.),(2.,-29.),(9.,-12.),(4.,-13.),(5.,-14.),(1,1),
     +       (6.,-15.),(0.,-16.),(8.,-17.),(9.,-18.),(10.,-19.),      
     +       (11.,-20.),(12.,-21.),(13.,-22.),(14.,-23.),(15.,-24.)/      

      write(*,*) " TEST start "

      do i = 1, 16
         c8b(i) =  dreal(c8(i)-(2.,4.)) + 3
      end do
      write(*,*) "NG1 --> ", c8b

      do i = 1, 16
         c8b(i) =  dreal(c8(i)-(2.,4.)) + x(i)
      end do
      write(*,*) "NG2 --> ", c8b

      do i = 1, 16
         c8b(i) =  dreal(c8(i)-(2.,4.)) + x(i) + y(i)
      end do
      write(*,*) "NG3 --> ", c8b

      do i = 1, 16
         c8b(i) =  dreal(c8(i)-(2.,4.)) + x(3)
      end do
      write(*,*) "NG4 --> ", c8b


      do i = 1, 16
         c8b(i) =  dimag(c8(i)-(2.,4.)) + 3
      end do
      write(*,*) "NG5 --> ", c8b

      do i = 1, 16
         c8b(i) =  dimag(c8(i)-(2.,4.)) + x(i)
      end do
      write(*,*) "NG6 --> ", c8b

      do i = 1, 16
         c8b(i) =  dimag(c8(i)-(2.,4.)) + x(i) + y(i)
      end do
      write(*,*) "NG7 --> ", c8b

      do i = 1, 16
         c8b(i) =  dimag(c8(i)-(2.,4.)) + x(3)
      end do
      write(*,*) "NG8 --> ", c8b


      write(*,*) " TEST end  "
      end

