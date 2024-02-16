#define NI (10)

program main
  integer::m,n
  integer,dimension(1:NI)::b
  equivalence(m,n)
  m = 1
  b = 1
  print *,b
contains 
  subroutine foo(b)
    integer,dimension(1:NI)::b
    do i=1,NI
       m = i
       b(i) = n
    enddo
  end subroutine foo
end program main

