logical::f=.false.
call sub(f=f)
call sub(f=.not.f)
call sub()
call chk
print *,'pass'
contains
subroutine sub(f)
logical,optional:: f
write(1,*)1,maxloc([1,2,3,4,4,3,2,1],mask=f,back=.true.)  
write(1,*)2,maxloc([1,2,3,4,4,3,2,1],mask=f,back=.false.)  
write(1,*)3,maxloc([1,2,3,4,4,3,2,1],mask=f)  
end subroutine
subroutine chk
integer:: n(2)
rewind 1
read(1,*) n; if (any(n/=[1,0])) print *,101,n
read(1,*) n; if (any(n/=[2,0])) print *,102,n
read(1,*) n; if (any(n/=[3,0])) print *,103,n
read(1,*) n; if (any(n/=[1,5])) print *,104,n
read(1,*) n; if (any(n/=[2,4])) print *,105,n
read(1,*) n; if (any(n/=[3,4])) print *,106,n
read(1,*) n; if (any(n/=[1,5])) print *,107,n
read(1,*) n; if (any(n/=[2,4])) print *,108,n
read(1,*) n; if (any(n/=[3,4])) print *,109,n
end subroutine
end
