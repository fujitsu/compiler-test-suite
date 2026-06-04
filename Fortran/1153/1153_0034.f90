integer             ::i_do1, bbb=1
integer             ::i_do2, i_do3,ccc
common /com/ ccc
ccc=1
bbb=1
!$omp parallel default(none)  
!$omp do   private(bbb)
do i_do1=1,10000
  bbb=1000
end do
!$omp end do
!$omp do private(/com/)
do i_do2=1,10
do i_do3=1,10
  ccc=200
end do
end do
!$omp end do
!$omp end parallel
if ( bbb /= 1 ) print *,bbb
if ( ccc /= 1 ) print *,ccc
print *,"pass"
end
