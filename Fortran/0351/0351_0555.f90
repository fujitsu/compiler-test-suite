#define N (1024)
#define M (9223372036854775806_8)

subroutine for_comp(a,b)
  real(kind=8),dimension(1:N)::a,b
  integer(kind=8)::u,c
  c = 0
  do u=1, M
     a(u) = 0
     b(u) = u * 1.0
     c = c + 1
  end do
end subroutine for_comp

program main
  print *, "OK"
end program main
