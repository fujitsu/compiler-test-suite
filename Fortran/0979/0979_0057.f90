module mod
 integer,dimension(2) ::a,b,c
 protected :: a,b,c
 contains
  subroutine sub(a1,b1,c1)
   integer,dimension(2) ::a1,b1,c1
   integer,save,dimension(2) :: t1,t2,t3
   integer,save,dimension(2) ::a,b,c
!$omp threadprivate(a,b,c,t1,t2,t3)
   a=1
   b=2
   c=3
 t1=2
 t2=2
 t3=2
!$omp parallel copyin(t1,a)
t1=a
!$omp end parallel
!$omp parallel copyin(t2,b)
t2=b
!$omp end parallel
!$omp parallel copyin(t3,c)
t3=c
!$omp end parallel
 a1 =t1
 b1 =t2
 c1 =t3
  end subroutine
end module

use mod
call sub(a,b,c)
if (a(1).ne.1) write(6,*) "NG"
if (b(2).ne.2) write(6,*) "NG"
if (c(2).ne.3) write(6,*) "NG"
print *,"pass"
end
