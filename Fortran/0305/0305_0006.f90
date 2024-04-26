integer i, j
real*8 a, b(2), nnn

do i = 1, 1000
   a = 0.0d0
!$omp parallel do reduction(+:a)
   do j = 1, 10
      a = a + 1.33333333333333d0 / nnn()
   end do
!$omp end parallel do

   b = 0.0d0
!$omp parallel do reduction(+:b)
   do j = 1, 10
      b(1) = b(1) + 1.33333333333333d0 / nnn()
   end do
!$omp end parallel do

   if (abs(a - b(1)) .gt. 0.00001) then
      print *, a, b(1)
   endif
enddo
print *, 'pass'
end

function nnn()
  real(8) :: nnn
  integer tid, omp_get_thread_num
  tid = omp_get_thread_num()
  nnn = dble(tid + 1)
end
