
integer(1)  :: r1(1000)
real(4) :: r2(1000)
real(8) :: r3(1000)
real(16):: r4(1000)
common /com/ r1,r2,r3,r4
r1=1
r2=5
if (sizeof(r1(1)).ne.1) print *,'array merye err'
print *,'pass'
end
