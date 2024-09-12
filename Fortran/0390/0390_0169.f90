subroutine s1
associate(aaa=>1_8)
do i=1,1
end do
end associate

associate(ppp=>+1)
do i=1,1
end do

!$omp do collapse((+1))
do i=1,1
end do
!$omp end do
end associate

end
print *,'pass'
end
