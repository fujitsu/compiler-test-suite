subroutine s1
integer,pointer::a(:)
integer,allocatable::b(:)
integer,target::c(4)=[0,1,2,3]
a=>c(2::2)
allocate(b,source=a)
if (any(b/=[1,3]))print *,101,b(1),b(2)
allocate(a(2:3))
a=[11,12]
deallocate(b)
allocate(b,source=a)
if (any(shape(b)/=[2]))print *,201
if (any(lbound(b)/=[2]))print *,202
if (any(ubound(b)/=[3]))print *,203
if (size(b)/=2)print *,204
if (sizeof(b)/=2*4)print *,205
if (any(b/=[11,12]))print *,206,b(1),b(2)
deallocate(b)
allocate(b,source=a(:))
if (any(shape(b)/=[2]))print *,301
if (any(lbound(b)/=[1]))print *,302
if (any(ubound(b)/=[2]))print *,303
if (size(b)/=2)print *,304
if (sizeof(b)/=2*4)print *,305
if (any(b/=[11,12]))print *,306,b(1),b(2)
deallocate(b)
allocate(b,source=a+a)
if (any(shape(b)/=[2]))print *,401
if (any(lbound(b)/=[1]))print *,402,lbound(b)
if (any(ubound(b)/=[2]))print *,403,ubound(b)
if (size(b)/=2)print *,404
if (sizeof(b)/=2*4)print *,405
if (any(b/=[11,12]*2))print *,406,b(1),b(2)
deallocate(b)
allocate(b,source=f(a))
if (any(shape(b)/=[2]))print *,501
if (any(lbound(b)/=[2]))print *,502
if (any(ubound(b)/=[3]))print *,503
if (size(b)/=2)print *,504
if (sizeof(b)/=2*4)print *,505
if (any(b/=[11,12]))print *,506,b(1),b(2)
deallocate(b)
allocate(b,source=e(a))
if (any(shape(b)/=[2]))print *,601
if (any(lbound(b)/=[1]))print *,602
if (any(ubound(b)/=[2]))print *,603
if (size(b)/=2)print *,604
if (sizeof(b)/=2*4)print *,605
if (any(b/=[11,12]))print *,606,b(1),b(2)
contains
function f(a)
integer,pointer::a(:),f(:)
f=>a
end function
function e(a) result(f)
integer,pointer::a(:)
integer::f(lbound(a,1):ubound(a,1))
f=a
end function
end 
call s1
print *,'pass'
end
