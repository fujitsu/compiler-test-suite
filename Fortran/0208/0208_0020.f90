
subroutine sub()
!$omp declare reduction(a:real(2):OMP_OUT=OMP_IN)
do i=1,1
end do
end
call sub()
print *,'pass'
end
