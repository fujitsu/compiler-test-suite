#define N 1024
subroutine sub(a,b,c,d,m1,m2,m3,m4)
  integer::i
  real(kind=8),dimension(N)::a,b,c,d
  logical(kind=1),dimension(N)::m1,m2,m3,m4
  do i=1,N
     if(m1(i)) then
        a(i) = a(i) + b(i)
     endif
     if(m2(i)) then
        b(i) = a(i) * c(i)
        if(m3(i)) then
           c(i) = a(i) + b(i)
           if(m4(i)) then
              d(i) = i
           endif
        endif
     endif
  end do
end subroutine sub

program main
  print *, "OK"
end program main
