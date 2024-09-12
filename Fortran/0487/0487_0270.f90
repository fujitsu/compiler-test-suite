subroutine s1(a,k)
real::a(k),b(k)
b=a
write(1,*) sin(a)
write(1,*) sin(b)
write(1,*) int(a)
write(1,*) int(b)
end
parameter(k=2)
real::a(k)
a=0.1
call s1(a,k)
print *,'pass'
end
