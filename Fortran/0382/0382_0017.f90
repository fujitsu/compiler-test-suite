subroutine s1
complex,pointer::a(:)
complex,allocatable::b(:)
complex,target::c(2:4)=[(1,1),(2,2),(3,3)]
allocate(b,source=c)
if (any(abs(b-[(1,1),(2,2),(3,3)])>0.001))print *,101,b
if (any(lbound(b)/=[2]))print *,102
deallocate(b)
allocate(b,source=c(2::2))
if (any(abs(b-[(1,1),(3,3)])>0.001))print *,201,b
if (any(lbound(b)/=[1]))print *,202
deallocate(b)
allocate(a(2:4))
a=c+1
allocate(b,source=a)
if (any(abs(b-[(1,1),(2,2),(3,3)]-1)>0.001))print *,301,b
if (any(lbound(b)/=[2]))print *,302
deallocate(b)
a=>c
allocate(b,source=a)
if (any(abs(b-[(1,1),(2,2),(3,3)])>0.001))print *,401,b
if (any(lbound(b)/=[2]))print *,402
deallocate(b)
allocate(b,source=f())
if (any(abs(b-[(1,1),(2,2),(3,3)])>0.001))print *,501,b
if (any(lbound(b)/=[2]))print *,502
deallocate(b)
allocate(b,source=e(2,4))
if (any(abs(b-[(1,1),(2,2),(3,3)])>0.001))print *,601,b
if (any(lbound(b)/=[2]))print *,602
deallocate(b)
allocate(b,source=(c))
if (any(abs(b-[(1,1),(2,2),(3,3)])>0.001))print *,1101,b
if (any(lbound(b)/=[1]))print *,1102
deallocate(b)
allocate(b,source=(c(2::2)))
if (any(abs(b-[(1,1),(3,3)])>0.001))print *,1201,b
if (any(lbound(b)/=[1]))print *,1202
deallocate(b)
allocate(a(2:4))
a=c+1
allocate(b,source=(a))
if (any(abs(b-[(1,1),(2,2),(3,3)]-1)>0.001))print *,1301,b
if (any(lbound(b)/=[1]))print *,1302
deallocate(b)
a=>c
allocate(b,source=(a))
if (any(abs(b-[(1,1),(2,2),(3,3)])>0.001))print *,1401,b
if (any(lbound(b)/=[1]))print *,1402
deallocate(b)
allocate(b,source=(f()))
if (any(abs(b-[(1,1),(2,2),(3,3)])>0.001))print *,1501,b
if (any(lbound(b)/=[1]))print *,1502
deallocate(b)
allocate(b,source=(e(2,4)))
if (any(abs(b-[(1,1),(2,2),(3,3)])>0.001))print *,1601,b
if (any(lbound(b)/=[1]))print *,1602
deallocate(b)
allocate(b,source=c+c)
if (any(abs(b-[(1,1),(2,2),(3,3)]*2)>0.001))print *,2101,b
if (any(lbound(b)/=[1]))print *,2102
deallocate(b)
allocate(b,source=c(2::2)+c(2::2))
if (any(abs(b-[(1,1),(3,3)]*2)>0.001))print *,2201,b
if (any(lbound(b)/=[1]))print *,2202
deallocate(b)
allocate(a(2:4))
a=c+1
allocate(b,source=a+a)
if (any(abs(b-[(1,1),(2,2),(3,3)]*2-2)>0.001))print *,2301,b
if (any(lbound(b)/=[1]))print *,2302
deallocate(b)
a=>c
allocate(b,source=a+a)
if (any(abs(b-[(1,1),(2,2),(3,3)]*2)>0.001))print *,2401,b
if (any(lbound(b)/=[1]))print *,2402
deallocate(b)
allocate(b,source=f()+f())
if (any(abs(b-[(1,1),(2,2),(3,3)]*2)>0.001))print *,2501,b
if (any(lbound(b)/=[1]))print *,2502
deallocate(b)
allocate(b,source=e(2,4)+e(2,4))
if (any(abs(b-[(1,1),(2,2),(3,3)]*2)>0.001))print *,2601,b
if (any(lbound(b)/=[1]))print *,2602
deallocate(b)
contains
function f() result(r)
complex , pointer::r(:)
allocate(r(2:4))
r=[(1,1),(2,2),(3,3)]
end function
function e(k1,k2) result(r)
complex ::r(k1:k2)
r=[(1,1),(2,2),(3,3)]
end function
end 
call s1
print *,'pass'
end
