integer,parameter :: n = 3
integer xx(n) /11,22,33/
integer:: a(n,n)=0,b(n,n)=0,x(n,n)=0,y(n,n)=0
 if (any(xx/=(/11,22,33/)))print *,'error-1'
 if (any(a/=0))print *,'error-2'
 if (any(b/=0))print *,'error-3'
 if (any(x/=0))print *,'error-4'
 if (any(y/=0))print *,'error-5'
i=0
call sub(i)
print *,'pass'
end
recursive subroutine sub(i)
integer,parameter :: n = 3
integer xx(n) /11,22,33/
integer:: a(n,n)=0,b(n,n)=0,x(n,n)=0,y(n,n)=0
 if (any(xx/=(/11,22,33/)))print *,'error-11'
 if (any(a/=0))print *,'error-12'
 if (any(b/=0))print *,'error-13'
 if (any(x/=0))print *,'error-14'
 if (any(y/=0))print *,'error-15'
i=i+1
if (i<5)call sub(i)
end
