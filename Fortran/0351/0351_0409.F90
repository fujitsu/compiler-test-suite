program main
  complex(kind=8),dimension(1:64) :: dest
  complex(kind=8) :: b
  integer,dimension(1:64) :: mask

  interface
      subroutine test(dest, b, mask)
      complex(kind=8),dimension(64) :: dest
      complex(kind=8),value :: b
      integer,dimension(1:64) :: mask
      end subroutine test
  end interface

  call init(b,dest,mask)

  do i=1,2
     call test(dest, b, mask)
  enddo
  do i=1,64
     if(((abs(real(dest(i)) - real( b))/abs(real(dest(i)))) .gt. 1.0D-13 .or. (abs(imag(dest(i)) - imag( b))/abs(imag(dest(i)))) .gt. 1.0D-13)) then
        print *, "NG"
     endif
  enddo

  print *, "OK"

end program main

subroutine init(b,dest,mask)
  complex(kind=8),dimension(1:64) :: dest
  complex(kind=8) :: b
  integer,dimension(1:64) :: mask

  do i=1,64
     dest(i) = cmplx(0._8, 0._8, kind=8)
     mask(i) = 1_4
  enddo
  b = cmplx(real(64,kind=8),real(64,kind=8),kind=8)
end subroutine init


subroutine test(dest,b,mask)
  complex(kind=8),dimension(1:64) :: dest
  complex(kind=8),value :: b
  integer,dimension(1:64) :: mask








  do i=1,64
     dest(i) = b
  enddo

end subroutine test
