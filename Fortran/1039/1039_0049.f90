subroutine s(i,a,b,c,d)
integer a(i)
integer,dimension(i)::b,c,d
b=1;c=2;d=3
if (any(shape(b)/=i))print *,'error-11'
if (any(shape(c)/=i))print *,'error-12'
if (any(shape(d)/=i))print *,'error-13'
if (any(shape(a)/=i))print *,'error-14'
end
parameter (i=3)
integer,parameter:: a(i)=(/1,2,3/)
integer,dimension(a(i))::b,c,d
call s(i,a,b,c,d)
if (any(a/=(/1,2,3/)))print *,'error-1'
if (any(b/=1))print *,'error-2'
if (any(c/=2))print *,'error-3'
if (any(d/=3))print *,'error-4'
print *,'pass'
end
