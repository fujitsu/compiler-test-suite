real(8)::x
x=1.0d0
call s(abs(x)>=1.0d0, abs(x) , 1.0d0)
call c
print *,'pass'
end
subroutine s(d1,d2,d3)
logical d1
real(8):: d2,d3
write(1,*)d1,d2,d3,abs(d2)>=d3
end
subroutine c
logical t1,t2
real(8):: d1,d2
rewind 1
read(1,*) t1,d1,d2,t2
if (.not. t1) print *,101
if (.not. t2) print *,102
if (d1/=d2) print *,103
end
