#define N 21
subroutine sub(a,b)
  integer::i
  integer(kind=4)::a(N,N)
  integer(kind=8)::b(N,N)
  do i=1,N
     do j=1,4
        a(j,i) = a(j,i) + b(j,i)
     enddo
  end do
end subroutine sub

subroutine sub2(a,b,c,d)
  integer::i
  integer(kind=4)::a(N,N),c(N,N)
  integer(kind=8)::b(N,N),d(N,N)

  do i=1,N
     do j=1,4
        a(j,i) = a(j,i) + b(j,i)
     enddo

     do j=1,5
        c(j,i) = c(j,i) + d(j,i)
     enddo
  end do
end subroutine sub2

subroutine sub3(a,b,c)
  integer::i
  integer(kind=4)::a(N)
  integer(kind=8)::b(N),c(N)
  do i=1,N
     b(i) = i
     a(i) = i
     c(i) = a(i) + b(i)*i
  end do
end subroutine sub3

program main
  integer(kind=4)::a(N,N),c(N,N)
  integer(kind=8)::b(N,N),d(N,N)
  a = 0
  b = 1
  c = 2
  d = 3
  call sub(a,b)
  call sub2(a,b,c,d)
  if(ALL(a(1:4,:).eq.2).and.ALL(c(1:5,:).eq.5)) then
     print *, "OK"
  else
     print *, "NG"
  end if
end program main

