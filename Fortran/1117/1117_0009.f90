program main
integer a(1024), total, r_total

total = 0; r_total = 0

do i=1, 1024
  a(i) = i
  total = total+i
end do

!$omp parallel
!$omp do reduction(+:r_total)
  do i=1, 1024
    r_total = r_total + a(i)
  end do
!$omp end do
!$omp end parallel

if(total .eq. r_total) then
  write(*,*) "ok"
else
  write(*,*) "REDUCTION is not active", total, r_total
end if

end
