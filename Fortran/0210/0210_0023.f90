call s1
call s2
print *,'pass'
end
subroutine s1
parameter(k=2)
complex(k)::x=(1,1),y,z
z=x
if(z.ne.transfer(x,y)) print *,'err'
end
subroutine s2
parameter(k=8)
complex(k)::x=(1,1),y,z
z=x
if(z.ne.transfer(x,y)) print *,'err'
end
