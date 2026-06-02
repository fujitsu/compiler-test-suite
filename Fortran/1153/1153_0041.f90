integer             ::i_do1, bbb=1
integer             ::i_do2, i_do3,ccc
common /com/ ccc
ccc=1
!$omp parallel default(none)  
!$omp single private(bbb)
do i_do1=1,10000
  bbb=i_do1
end do
!$omp end single
!$omp single private(/com/)
do i_do2=1,10
do i_do3=1,10
  ccc=i_do2+i_do3
end do
end do
!$omp end single
!$omp end parallel
if ( bbb /= 1 ) print *,bbb
if ( ccc /= 1 ) print *,ccc
print *,"pass"
end
