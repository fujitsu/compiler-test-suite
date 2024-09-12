logical::f=.false.
call sub(c='1',f=f)
call sub(c='1',f=.not.f)
call sub(c='1')
call chk
print *,'pass'
contains
subroutine sub(c,f)
logical,optional:: f
character(*)::c
write(1,*)1,index('12344321',c,back=f)
write(1,*)2,maxloc([1,2,3,4,4,3,2,1],back=f)
end subroutine
subroutine chk
integer:: n(2)
rewind 1
read(1,*) n; if (any(n/=[1,1])) print *,101,n
read(1,*) n; if (any(n/=[2,4])) print *,102,n
read(1,*) n; if (any(n/=[1,8])) print *,103,n
read(1,*) n; if (any(n/=[2,5])) print *,104,n
read(1,*) n; if (any(n/=[1,1])) print *,105,n
read(1,*) n; if (any(n/=[2,4])) print *,106,n
end subroutine
end
