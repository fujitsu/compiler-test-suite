call sub()
print *,"pass"
end
subroutine sub()
save i
integer::j
!$omp threadprivate(i)
!$omp simd 
do j=1,10
end do
end
