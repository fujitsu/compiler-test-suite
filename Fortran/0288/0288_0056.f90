call test()
print *,'pass'
end
subroutine test()
interface
subroutine sub(e,f,i)
dimension a(3,2,1)
dimension b(-3:3) 
dimension c(1:i)
dimension d(:,:,:)
dimension e(:,:)
dimension f(*)
allocatable :: d
end subroutine
end interface
dimension  e(10,10)
dimension  f(10)
e=1
f=0
call sub(e,f,10)
end
subroutine sub(e,f,i)
dimension a(3,2,1)
dimension b(-3:3) 
dimension c(1:i)
dimension d(:,:,:)
dimension e(:,:)
dimension f(*)
allocatable :: d
if (size(a).ne.(3*2*1)) print *,'err'
if (lbound(b,1).ne.-3) print *,'err'
if (ubound(b,1).ne.3) print *,'err'
if (lbound(c,1).ne.1) print *,'err'
if (ubound(c,1).ne.i) print *,'err'
allocate(d(1,1,1))
deallocate(d)
f(1)=e(1,1)
end subroutine
