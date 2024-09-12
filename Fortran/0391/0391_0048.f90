module m1
integer::K1=1,K2=2,K3=3,K4=4,K5=5,K6=6,K7=7
contains
subroutine s1() 
REAL, CONTIGUOUS, POINTER :: A(:,:,:)
REAL            ,POINTER :: B(:,:,:)

ALLOCATE(B(2,3,4),source=reshape([(real(k),k=1,24)] , [2,3,4]))
A => B(K1:K2,K1:K3,K1:K4) 
if ( is_contiguous(B(K1:K2,K1:K3,K1:K4) )) then
else
  print *,401
endif
if (any([A]/=[(k,k=1,24)])) print *,201,A
if (any(ubound(A)/=[2,3,4])) print *,202
if (any(lbound(A)/=[1,1,1])) print *,203
if (size(A)/=size(b)) print *,204
if (size(A)/=24     ) print *,205
end subroutine
end
use m1
call s1(   )
print *,'pass'
end

