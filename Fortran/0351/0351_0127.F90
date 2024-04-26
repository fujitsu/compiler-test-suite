program main
  complex(kind=4),dimension(64) :: a,b
  integer(kind=4),dimension(64) :: c,d
  call init(a,b,c,d,64)
  do i=1,2
     call test(a,b,c,d)
  enddo

  do i=1,64
     if(a(i) .ne. b(i)) then
      print *, "NG"
     endif
  enddo

  print *, "OK"
end program main

subroutine init(a,b,c,d,n1)
  complex(kind=4),dimension(1:n1) :: a,b
  integer(kind=4),dimension(1:n1) :: c,d

  do i=1,n1
     a(i) = cmplx(0,0,kind=4)
     b(i) = cmplx(i,i,kind=4)
     c(i) = i
     d(i) = i
  enddo
end subroutine init


subroutine test(a,b,c,d)
complex(kind=4),dimension(1:64) :: a,b
integer(kind=4),dimension(1:64) :: c,d

 do i=1,64
   a(c(i)) = b(d(i))
 enddo
end subroutine test
