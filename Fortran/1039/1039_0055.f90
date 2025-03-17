subroutine s(i,a)
integer a(i)
integer,dimension(a(1),a(3),a(3))::b
integer,dimension(a(1),a(2),a(3))::c
integer,dimension(a(1),a(2),a(3))::d
b=1;c=2;d=3
if (any(shape(b)/=(/3,2,2/)))print *,'error-11'
if (any(shape(c)/=(/3,4,2/)))print *,'error-12'
if (any(shape(d)/=(/3,4,2/)))print *,'error-13'
if (any(b/=1))print *,'error-2'
if (any(c/=2))print *,'error-3'
if (any(d/=3))print *,'error-4'
end
parameter (i=3)
integer,parameter:: a(i)=(/3,4,2/)
call s(i,a)
if (any(a/=(/3,4,2/)))print *,'error-1'
print *,'pass'
end
