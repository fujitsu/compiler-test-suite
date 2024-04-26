intrinsic :: dlog , dabs
real*8 a
call zee (a,dabs,dlog)
print *,'pass'
end
subroutine zee(a,b,c)
real*8 a,b,c
a=1
if(c(a).ne.dlog(a)) print *,'err1'
if(b(a).ne.dabs(a)) print *,'err2'
end
