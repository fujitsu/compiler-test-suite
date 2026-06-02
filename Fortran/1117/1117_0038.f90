program main
integer total, s_total
real*8 mul, s_mul, delta

total = 0
s_total = 0
mul = 1.0
s_mul = 1.0

!$omp parallel do reduction(+:total), reduction(*:mul)
  do i=1, 32 
    total = total+i
    mul = mul * i
  end do
!$omp end parallel do

do i=1, 32
  s_total = s_total+i
  s_mul = s_mul * i
end do

delta = mul - s_mul
if(delta .lt. 0) delta = -delta

if(s_total .ne. total) then
  write(*,*) "REDUCTION(+:list) is not correct"
end if

if(mul .eq. 0) then
  write(*,*) "REDUCTION(*:list) is not initialized"
else if(delta .gt. 1.0e20) then
  write(*,*) "REDUCTION(*:list) is not correct"
end if

if((s_total .eq. total) .and. (delta .le. 1.0e20)) then
  write(*,*) "ok"
end if

end
