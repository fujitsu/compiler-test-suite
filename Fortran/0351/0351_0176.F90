program main
  complex(kind=8),dimension(1:64) :: dest,a,b
  integer,dimension(1:64) :: mask
  call init(dest,a,b,mask)
  do i=1,2
     call test(dest,a,b,mask)
  enddo
  do i=1,64/2
     if(((abs(real(b(i)) - real( dest(i)))/abs(real(b(i)))) .gt. 1.0D-13 .or. (abs(imag(b(i)) - imag( dest(i)))/abs(imag(b(i)))) .gt. 1.0D-13)) then
        print *, "NG"
     endif
  enddo
  do i=64/2+1,64
     if(((abs(real(a(i)) - real( dest(i)))/abs(real(a(i)))) .gt. 1.0D-13 .or. (abs(imag(a(i)) - imag( dest(i)))/abs(imag(a(i)))) .gt. 1.0D-13)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(dest,a,b,mask)
  complex(kind=8),dimension(1:64) :: dest,a,b
  integer,dimension(1:64) :: mask

  do i=1,64/2
     dest(i) = (1.0d0, 1.0d0)
     a(i) = (1.0d0, 1.0d0)
     b(i) = (1.0d0, 1.0d0)
     mask(i) = 1_4
  enddo

  do i=64/2+1,64
     dest(i) = (-1.0d0, -1.0d0)
     a(i) = (1.0d0, 1.0d0)
     b(i) = (-1.0d0, -1.0d0)
     mask(i) = 1_4
  enddo
end subroutine init


subroutine test(dest,a,b,mask)
  complex(kind=8), dimension(1:64) :: dest,a,b
  integer,dimension(1:64) :: mask

  do i=1,64
     if(a(i) .ne. b(i)) then
       dest(i) = a(i)		
     else			
       dest(i) = b(i)	
     endif
  enddo

end subroutine test
