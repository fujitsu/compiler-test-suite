#define N 64
subroutine sub(y)
  complex(kind=2)::y(N,N)
  integer::i,j
  do i=1,N
     do j=1, N
        y(j,i) = 0.0_8
     end do
  end do
end subroutine sub

subroutine mysum(y)
  complex(kind=2)::y(N,N)
  complex(kind=2)::z
  complex(kind=4)::x
  integer::i,j
  z=cmplx(0,0,kind=2)
  do i=1,N
     do j=1, N
        z = y(j,i)
     end do
  end do
  x = z
  print *, x
end subroutine mysum

program main
  complex(kind=2)::y(N,N)
  y = cmplx(1.0_8, 1.0_8)
  call sub(y)
  call mysum(y)

end program main
