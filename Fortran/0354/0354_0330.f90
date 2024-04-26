#define NI (10)

program main
  integer::m,n
  integer,dimension(1:NI,1:NI)::b
  equivalence(m,n)
  m = 1
  b = 1
  print *,b
contains 
  subroutine foo(b)
    integer::i,j
    integer,dimension(1:NI, 1:NI)::b
    do j=2,i
       do i=1,NI
          b(i,j) = b(i,j-1)
       enddo
    end do
  end subroutine foo
end program main

