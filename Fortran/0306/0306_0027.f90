subroutine sub(a,b,c,indxa)
  real(kind=8),dimension(1024)::a,b,c
  integer(kind=4),dimension(1024)::indxa
  integer(kind=4)::i

  do i=1,1024
     a(indxa(i)) = a(indxa(i)) + b(indxa(i))*c(i)
  end do
end subroutine sub

subroutine sub2(x,y,z,n,iter)
  integer(kind=4),dimension(n)::x,y,z
  integer(kind=4)::j,i,n,iter

  do j=1, iter
     do i=1, n
        y(i) = y(i) + x(z(i))
     end do
  end do
end subroutine sub2

program main
  print *, "OK"
end program main
