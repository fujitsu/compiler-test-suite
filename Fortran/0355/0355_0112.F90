#define N 64
subroutine sub(y)
  complex(kind=8)::y(N,N)
  integer::i,j
  do i=1,N
     do j=1, N
        y(j,i) = 0.0_8
     end do
  end do
end subroutine sub

program main

  complex(kind=8)::y(N,N)
  y = cmplx(1.0_8, 1.0_8)
  call sub(y)
  print *, sum(y)
    
end program main
