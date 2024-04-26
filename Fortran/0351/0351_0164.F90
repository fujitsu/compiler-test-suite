program main
  real(kind=4),dimension(64) :: a,b,c
  call init(a,b,c,64)
  do i=1,2
     call test(a,b,c)
  enddo

  do i=1,64
     if(a(i) .ne. amod(b(i), c(i))) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(a,b,c,n1)
  real(kind=4),dimension(1:n1) :: a,b,c

  do i=1,n1
     a(i) = 0._4
     b(i) = 2._4*(real(i,kind=4)+1.0_4)+1.0_4
     c(i) = real(i,kind=4)+1.0_4
  enddo
end subroutine init


subroutine test(a,b,c)
  real(kind=4), dimension(1:64) :: a,b,c

  do i=1,64
     a(i) = amod(b(i), c(i))
  enddo
end subroutine test
