type t
integer a
end type 
class(t),pointer::bb,cc,dd,ee,ff,gg
allocate(bb,cc,dd,ee,ff,gg)

!$omp parallel private(bb)
bb=>null()
!$omp end parallel

!$omp parallel firstprivate(cc)
cc=>null()

!$omp end parallel

!$omp parallel do lastprivate(dd)
do i=1,1
dd=>null()
end do
!$omp end parallel do

!$omp single
ee=>null()
!$omp end single copyprivate (ee)

!$omp task firstprivate(ff)
ff=>null()
!$omp end task

!$omp task private(gg)
gg=>null()
!$omp end task

print *,'pass'
end
