
integer(1)  :: r1(1001)
real(8) :: r2(1001)
real(8) :: r3(1001)
real(8 ):: r4(1001)
common /com/ r2,r3,r1,r4
r1=1
r2=5
if (sizeof(r2(1)).ne.8) print *,'array merye err'
if (sizeof(r1(1)).ne.1) print *,'array merye err'
print *,'pass'
end
