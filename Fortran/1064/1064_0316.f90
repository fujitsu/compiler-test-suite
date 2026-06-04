subroutine s()
integer,parameter:: r(1,2,3)=1
dimension a(1:*,1+2:*,kind(1):*)
integer,parameter:: a=r
if (any(a/=1)) print *,101
end
call s
print *,'pass'
end
