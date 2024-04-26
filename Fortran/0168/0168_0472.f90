module m0
integer,parameter,dimension(2)::a=3
integer,parameter,dimension(2,1,1,1)::b= reshape( a, [2,1,1,1])
contains
subroutine sx01(w,q)
integer:: w(:,:,:),q(:)
if (any(shape(w)/=q))print *,1001,shape(w),q
if (any(w/=3) ) print *,1003,w
end subroutine
subroutine sx02(w)
integer:: w
if (w/=3 ) print *,1002,w
end subroutine
end
subroutine s1
use m0
call sx01( iall( b,dim=2 ),[2,1,1  ] )
call sx01( iall( b,dim=3 ),[2,1,1  ] )
call sx01( iall( b,dim=4 ),[2,1,1  ] )
end
call s1
print *,'pass'
end
