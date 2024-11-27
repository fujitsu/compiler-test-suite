subroutine s1
integer::iii=1
associate(ppp=>iii)
!$omp do  schedule(static,ppp)
do i=1,1
end do
!$omp end do

!$omp do schedule(static,iii)
do i=1,1
end do
!$omp end do
end associate
end
print *,'pass'
end
