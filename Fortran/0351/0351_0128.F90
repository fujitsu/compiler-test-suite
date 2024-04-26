program main
  complex(kind=8),dimension(64) :: a,b,res
  integer(kind=4),dimension(64) :: c,d,e
  call init(a,b,c,d,64,e,res)
  do i=1,2
     call test(a,b,c,d,e)
  enddo

  do i=1,64
     if(a(i) .ne. res(i)) then
      print *, "NG"
     endif
  enddo

  print *, "OK"
end program main

subroutine init(a,b,c,d,n1,e,res)
  complex(kind=8),dimension(1:n1) :: a,b,res
  integer(kind=4),dimension(1:n1) :: c,d,e

  do i=1,n1
     a(i) = cmplx(0,0,kind=8)
     b(i) = cmplx(i,i,kind=8)
     c(i) = i
     d(i) = i
     if (i .le. 64/2) then
       e(i) = 1
       res(i) = b(i)
     else
       e(i) = 0
       res(i) = cmplx(0,0,kind=8)
     endif
  enddo
end subroutine init


subroutine test(a,b,c,d,e)
complex(kind=8),dimension(1:64) :: a,b
integer(kind=4),dimension(1:64) :: c,d,e

 do i=1,64
  if (e(i) .eq. 1) then
   a(c(i)) = b(d(i))
  endif
 enddo
end subroutine test
