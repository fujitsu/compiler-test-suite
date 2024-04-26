program main
  complex(kind=8),dimension(64) :: a,b,res
  call init(a,b,res,64)
  do i=1,2
     call test(a,b)
  enddo
  do i=1,64
     if(a(i) .ne. res(i)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(a,b,res,n1)
  complex(kind=8),dimension(1:n1) :: a,b,res

  do i=1,n1
     a(i) = cmplx(0,0,kind=8)
     b(i) = cmplx(0,0,kind=8)
     res(i) = cmplx(0,0,kind=8)
  enddo

  do i=1,n1,2
     b(i) = cmplx(i,i,kind=8)
     res(i) = cmplx(i,i,kind=8)
  enddo
end subroutine init


subroutine test(a,b)
  complex(kind=8), dimension(64) :: a,b
  do i=1,64,1

     a(i) = b(i)
  enddo
end subroutine test
