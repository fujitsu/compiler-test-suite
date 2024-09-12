common/com1/a(10000)
common/com2/b(10000)
!$omp simd
do i=1,10000
   open(6)
end do
print *,'PASS'
end
