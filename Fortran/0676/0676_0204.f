      program main
      complex(kind=4)::c_a(10),c_b(10),c_c(10),c_d
      real   (kind=4)::r_a
      integer(kind=4)::i_a

      do i=1,10
         c_a(i)=cmplx(i*5,i- 7)
         c_b(i)=cmplx(i/2,i+ 9)
         c_c(i)=cmplx(i  ,i**2)
      end do
      c_d=c_b(1)/c_c(1) 
      r_a=cos(0.0)*5+3
      i_a=r_a

      do i=1,10
         c_a(i)=c_b(i)/c_c(i)
      end do
      write(6,8) c_a

      do i=1,10
        c_c(i)=c_b(i)/c_d
      end do
      write(6,8) c_a

      do i=1,10
         c_c(i)=c_c(i)/r_a
      end do
      write(6,8) c_c

      do i=1,10
         c_b(i)=i_a   /c_a(i)
      end do
      write(6,8) c_b
 8    format(10('(',F10.6,', ',F10.6,')'))
      write(6,*) '*** pass  ***'

      stop
      end
