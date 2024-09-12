subroutine s1
parameter (r=sin(0.1))
a=sin(.1)
if (r/=a)print *,1001,a,r
end
call s1
print *,'pass'
end
