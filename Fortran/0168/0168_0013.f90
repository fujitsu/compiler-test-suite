logical::f=.false.
write(1,*)0,minloc([1,2,3,4,4,3,2,1])
write(1,*)1,minloc([1,2,3,4,4,3,2,1],mask=F)  
call sub(F1=F,n=2)
call sub(     n=3) 
call chk
print *,'pass'
contains
subroutine sub(f1,n)
logical,optional:: f1
write(1,*)n,minloc([1,2,3,4,4,3,2,1],mask=f1        )  
end subroutine
subroutine chk
integer:: n(2)
rewind 1
read(1,*) n; if (any(n/=[0,1])) print *,101,n
read(1,*) n; if (any(n/=[1,0])) print *,102,n
read(1,*) n; if (any(n/=[2,0])) print *,103,n
read(1,*) n; if (any(n/=[3,1])) print *,104,n
end subroutine
end
