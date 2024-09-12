module m1
integer::K1=1,K2=2,K3=3,K4=4,K5=5,K6=6,K7=7
contains
function f2(x) result(r)
real,contiguous,pointer::r(:,:)
real,contiguous,target::x(:,:)
r=>x
end function
function f3(x) result(r)
real,contiguous,pointer::r(:,:,:)
real,contiguous,target::x(:,:,:)
r=>x
end function
function f4(x) result(r)
real,contiguous,pointer::r(:,:,:,:)
real,contiguous,target::x(:,:,:,:)
r=>x
end function
function f(x,k) result(r)
real,contiguous           ,pointer::r(:)
real           ,target::x(k)
r=>x
end function
subroutine s1(B) 
REAL, CONTIGUOUS, POINTER :: A(:,:,:)
REAL, CONTIGUOUS, POINTER :: C(:,:,:,:)
REAL, CONTIGUOUS, TARGET :: B(:,:)
A(K1:K2,K2:K4,K4:K7) => f2(B)
if (any([A]/=[(k,k=1,24)])) print *,201,A
if (any(ubound(A)/=[2,4,7])) print *,202
if (any(lbound(A)/=[1,2,4])) print *,203
if (size(A)/=size(b)) print *,204
if (size(A)/=24     ) print *,205
A=>NULL()
if (associated(A)) print *,206
A(K1:K2,K2:K4,K4:K7) => f(B,size(b))
if (any([A]/=[(k,k=1,24)])) print *,201,A
if (any(ubound(A)/=[2,4,7])) print *,202
if (any(lbound(A)/=[1,2,4])) print *,203
if (size(A)/=size(b)) print *,204
if (size(A)/=24     ) print *,205
C(K1:K2,K2:K4,K4:K5,K6:K7) => f2(B(1:,1:) )
if (any([C]/=[(k,k=1,24)])) print *,201,A
if (any(ubound(C)/=[2,4,5,7])) print *,202
if (any(lbound(C)/=[1,2,4,6])) print *,203
if (size(C)/=size(b)) print *,204
if (size(C)/=24     ) print *,205
C=>NULL()
if (associated(C)) print *,206
C(K1:K2,K2:K4,K4:K5,K6:K7) => f3(A) 
if (any([C]/=[(k,k=1,24)])) print *,201,A
if (any(ubound(C)/=[2,4,5,7])) print *,202
if (any(lbound(C)/=[1,2,4,6])) print *,203
if (size(C)/=size(b)) print *,204
if (size(C)/=24     ) print *,205
C=>NULL()
if (associated(C)) print *,206
C(K1:K2,K2:K4,K4:K5,K6:K7) => f(A(:,:,:),size(a)) 
if (any([C]/=[(k,k=1,24)])) print *,201,A
if (any(ubound(C)/=[2,4,5,7])) print *,202
if (any(lbound(C)/=[1,2,4,6])) print *,203
if (size(C)/=size(b)) print *,204
if (size(C)/=24     ) print *,205
A=>NULL()
if (associated(A)) print *,206
A(K1:K2,K2:K4,K4:K7) => f(C,size(C)) 
if (any([A]/=[(k,k=1,24)])) print *,201,A
if (any(ubound(A)/=[2,4,7])) print *,202
if (any(lbound(A)/=[1,2,4])) print *,203
if (size(A)/=size(b)) print *,204
if (size(A)/=24     ) print *,205
A=>NULL()
if (associated(A)) print *,206
A(K1:K2,K2:K4,K4:K7) => f4(C (:,:,:,:))
if (any([A]/=[(k,k=1,24)])) print *,201,A
if (any(ubound(A)/=[2,4,7])) print *,202
if (any(lbound(A)/=[1,2,4])) print *,203
if (size(A)/=size(b)) print *,204
if (size(A)/=24     ) print *,205
end subroutine
end
use m1
REAL :: B(2*3,4)=reshape([(k,k=1,24)] , [2*3,4])
call s1( B  )
print *,'pass'
end

