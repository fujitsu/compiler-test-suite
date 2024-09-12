call sub()
print *,"pass"
end
subroutine sub()
save i
integer::j,k
!$omp threadprivate(i)
!$omp dosimd collapse(2)
do j=1,10
do k=1,10
do i=1,10
end do
end do
end do
!$omp dosimd collapse(2)
do j=1,10
do k=1,10
end do
end do
end
