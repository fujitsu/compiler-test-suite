common /com1/i1
common /com2/i2
common /com3/i3
common /com4/i4
common /com5/i5
common /com6/i6
common /com7/i7

bind(c):: /com1/
bind(c):: /com2/
bind(c):: /com3/
bind(c):: /com4/
bind(c):: /com5/
bind(c):: /com6/
bind(c):: /com7/

!$omp parallel shared(/com2/)
do i=1,2
end do
!$omp end parallel

!$omp parallel private(/com3/)
do i=1,2
end do
!$omp end parallel

!$omp parallel firstprivate(/com5/)
do i=1,2
end do
!$omp end parallel

print *,'pass'
end
