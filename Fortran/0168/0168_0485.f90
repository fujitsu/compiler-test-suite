module m0
integer,parameter,dimension(4)::a=[3,7,11,19]
integer,parameter,dimension(2,1)::b= reshape( a, [2,1])
integer,parameter,dimension(2,2)::c= reshape( a, [2,2])
contains
subroutine sx01(w,q,n)
integer:: w(:),q(:)
if (any(shape(w)/=q))print *,1001,shape(w),q,n
if (n==1) then
if (any(w/=7) ) print *,1003,w,n
else if (n==2) then 
if (any(w/=[3,7]) ) print *,1004,w,n
else if (n==3) then 
if (any(w/=[7,27]) ) print *,1004,w,n
else if (n==4) then 
if (any(w/=[11,23]) ) print *,1005,w,n
endif
end subroutine
end
subroutine s1
use m0
call sx01( iany( b,dim=1 ),[1] ,1)
call sx01( iany( b,dim=2 ),[2] ,2)
call sx01( iany( c,dim=1 ),[2] ,3)
call sx01( iany( c,dim=2 ),[2] ,4)
end
call s1
print *,'pass'
end
