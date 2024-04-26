module m0
integer,parameter,dimension(*)::a=[3,3+4,3+8,3+16,3+32,3+64,3+128,3+256,&
  3+512,3+1024,3+2048,3+4096,3+4096*2,3+4096*4,3+4096*8,3+4096*16]
integer,parameter,dimension(*,*,*,*)::b= reshape( a, [2,4,2,1])
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
call sx(a)
call sx02( iall( [3 , 7] ) )
call sx02( iall( a       ) )
call sx02( iall( b       ) )
call sx01( iall( b,dim=1 ),[  4,2,1] )
call sx01( iall( b,dim=2 ),[2,  2,1] )
call sx01( iall( b,dim=3 ),[2,4,  1] )
contains
subroutine sx(z)
integer::z(:)
write(1,'(i4,z16.16)') (k,z(k),k=1,size(z))
end subroutine
end
call s1
print *,'pass'
end
