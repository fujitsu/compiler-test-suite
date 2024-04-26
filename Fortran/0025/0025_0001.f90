
integer(8)  :: r(1000)
real(4) :: rr(1000)
real(4) :: r1(100,100,100,3)
real(8) :: r2(100,100,100,3)
common /com/ rr,r
r=1
rr=5
if (sizeof(r(1)).ne.8) print *,'array merye err'
print *,'pass'
end
