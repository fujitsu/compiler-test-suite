module m0
integer,parameter,dimension(4)::a=[3,7,11,19]
integer,parameter,dimension(2,2,1,1)::b= reshape( a, [2,2,1,1])
contains
subroutine sx01(w,q,n)
integer:: w(:,:,:),q(:)
if (any(shape(w)/=q))print *,1001,shape(w),q,n
if (n==1) then
if (any(w/=reshape([11,23],[2,1,1])) ) print *,1003,w,n
else
if (all(w==3) ) print *,1004,w,n
end if
end subroutine
end
subroutine s1
use m0
call sx01( iany( b,dim=2 ),[2,1,1  ] ,1)
call sx01( iany( b,dim=3 ),[2,2,1  ] ,2)
call sx01( iany( b,dim=4 ),[2,2,1  ] ,3)
end
call s1
print *,'pass'
end
