call s1(1._2)
call s2(1._8)
print *,'pass'
contains
subroutine s1(x)
parameter(k=2)
real(k),optional::x
real(k)::y,z
z=x
if(z.ne.transfer(x,y)) print *,'err'
end
subroutine s2(x)
parameter(k=8)
real(k),optional::x
real(k)::y,z
z=x
if(z.ne.transfer(x,y)) print *,'err'
end
end
