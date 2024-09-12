program main
real t1(1:10), t2(1:10), x1(1:10), x2(1:10)
volatile a
volatile b
pointer(a,x1)
pointer(b,x2)
a = loc(t1)
b = loc(t2)
do i=1,10
  t1(i) = real(i)
  t2(i) = real(11-i)
enddo
print *,x1,x2
end program
