module mod
   integer,dimension(2) ::a
 protected :: a
 contains
  subroutine sub(b)
   integer,dimension(2) ::a,b
!$omp parallel firstprivate(a)
   do i=1,2
     a(i)=i
     b(i)=a(i)
   enddo
!$omp endparallel
  end subroutine
end module
use mod
call sub(a)
if (a(1).ne.1) write(6,*) "NG"
if (a(2).ne.2) write(6,*) "NG"
print *,"pass"
end
