subroutine s(i,a,b,c,d)
integer a(i)
integer,dimension(a(2),a(3),3)::b,c,d
b=1;c=2;d=3
if (any(shape(b)/=(/4,2,3/)))print *,'error-11'
if (any(shape(c)/=(/4,2,3/)))print *,'error-12'
if (any(shape(d)/=(/4,2,3/)))print *,'error-13'
end
parameter (i=3)
integer,parameter:: a(i)=(/1,4,2/)
integer,dimension(a(2),a(3),3)::b,c,d
call s(i,a,b,c,d)
if (any(a/=(/1,4,2/)))print *,'error-1'
if (any(b/=1))print *,'error-2'
if (any(c/=2))print *,'error-3'
if (any(d/=3))print *,'error-4'
print *,'pass'
end
