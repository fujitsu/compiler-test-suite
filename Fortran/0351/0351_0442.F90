program main
  complex(kind=4), dimension(64) :: a
  complex(kind=4) :: dest,res
      
  do i=1,2
      call init(a,res,64)
      call test(a,dest)
  enddo
  if(res .ne. dest) then
      print *, "NG"
  endif
  print *, "OK"
end program main

subroutine init(a,res,n1)
  complex(kind=4), dimension(64) :: a
  complex(kind=4) :: res
  res = cmplx(0,0,kind=4)

  do i=1,n1
     a(i) = cmplx(i,i,kind=4)
     res = res + a(i)
  enddo
end subroutine init


subroutine test(a,dest)
  complex(kind=4), dimension(64) :: a
  complex(kind=4) :: dest,tmp
  tmp = cmplx(0,0,kind=4)

  do i=1,64
      tmp = tmp + a(i)
  enddo
  dest = tmp
end subroutine test
