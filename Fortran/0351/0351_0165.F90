program main
  real(kind=8),dimension(64) :: a,b,c
  call init(a,b,c,64)
  do i=1,2
     call test(a,b,c)
  enddo

  do i=1,64
     if(a(i) .ne. dmod(b(i), c(i))) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(a,b,c,n1)
  real(kind=8),dimension(1:n1) :: a,b,c

  do i=1,n1
     a(i) = 0._8
     b(i) = 2._8*(real(i,kind=8)+1.0_8)+1.0_8
     c(i) = real(i,kind=8)+1.0_8
  enddo
end subroutine init


subroutine test(a,b,c)
  real(kind=8), dimension(1:64) :: a,b,c

  do i=1,64
     a(i) = dmod(b(i), c(i))
  enddo
end subroutine test
