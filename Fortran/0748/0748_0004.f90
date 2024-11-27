subroutine s1
associate(aaa=>1_8)
!$omp do collapse(aaa)
do i=1,1
end do
!$omp end do
end associate

associate(ppp=>+1)
!$omp do collapse(ppp)
do i=1,1
end do
!$omp end do

!$omp do collapse((+1))
do i=1,1
end do
!$omp end do
end associate

end
print *,'pass'
end
