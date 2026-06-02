module mod1
contains
  subroutine test(a,b,n1,n2)
    real(kind=8),dimension(:,:), pointer, contiguous :: a,b
    do j=1,n2
       do i=1,n1
          a(i,j) = a(i,j) + b(i,j)
       enddo
    enddo
  end subroutine test
end module mod1

module mod2
contains
  subroutine test(a,b,n1,n2)
      real(kind=8),dimension(:,:), pointer,contiguous :: a,b
      !ocl norecurrence
      do j=1,n2
         do i=1,n1
            a(i,j) = a(i,j) + b(i,j)
         enddo
      enddo
  end subroutine test
end module mod2

subroutine sub1
use mod1
integer, parameter::n1 = 100
integer, parameter::n2 = 200
real(kind=8),dimension(:,:),pointer, contiguous :: a,b
allocate(a(n1,n2), b(n1,n2))
a = 1
b = 2
call test(a,b,n1,n2)
if (.not.all(a.eq.3)) then
   print *,"NG", a
   stop
endif
end subroutine sub1

subroutine sub2
use mod2
integer, parameter::n1 = 100
integer, parameter::n2 = 200
real(kind=8),dimension(:,:),pointer, contiguous :: a,b
allocate(a(n1,n2), b(n1,n2))
a = 1
b = 2
call test(a,b,n1,n2)
if (.not.all(a.eq.3)) then
   print *,"NG", a
   stop
endif
end subroutine sub2

program main
call sub1
call sub2
print *,'PASS'
end program main
