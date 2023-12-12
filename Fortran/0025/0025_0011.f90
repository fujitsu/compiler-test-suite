real(8)  :: r(1000),d1(1000)
real(4) :: rr(1000)
common /com/ r,rr
r=1
if (1.eq.2) then
d1=sqrt(r)
print*,d1
end if
print *,'pass'
end
