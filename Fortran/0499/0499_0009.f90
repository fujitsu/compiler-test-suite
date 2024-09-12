      !$OMP simd
do i=1,1
end do
      !$OMP task
do i=1,1
end do
      !$OMP endtask

print *,'pass'
end
