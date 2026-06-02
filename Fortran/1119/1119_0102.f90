logical*2 l2(5)
l2=(/.true.,.false.,.true.,.false.,.true./)
call sub22(l2)
end
subroutine sub22(a)
logical*2 a(5)
!$omp parallel
do i=1,5
!$omp simd
do j=1,2
if(a(1).neqv..true.) print *,'err'
end do
!$omp end simd
enddo
!$omp endparallel
print *,'pass'
end
