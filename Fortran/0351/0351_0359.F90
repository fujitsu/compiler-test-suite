program main
  complex(kind=4),dimension(64) :: a,b,res
  integer(kind=4),dimension(64) :: c
  call init(a,b,res,64,c)
  do i=1,2
     call test(a,b,c)
  enddo
  do i=1,64
     if(a(i) .ne. res(i)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(a,b,res,n1,c)
  complex(kind=4),dimension(1:n1) :: a,b,res
  integer(kind=4), dimension(64) :: c

  do i=1,n1
     a(i) = cmplx(0,0,kind=4)
     b(i) = cmplx(0,0,kind=4)
     res(i) = cmplx(0,0,kind=4)
     c(i) = 0
  enddo

  do i=1,n1,7
    if (i > 64/2) then
      c(i) = 1
      b(i) = cmplx(i,i,kind=4)
      res(i) = cmplx(i,i,kind=4)
    endif
  enddo
end subroutine init


subroutine test(a,b,c)
  complex(kind=4), dimension(64) :: a,b
  integer(kind=4), dimension(64) :: c

  do i=1,64,7
   if (c(i) .eq. 1) then
     a(i) = b(i)
   endif
  enddo
end subroutine test
