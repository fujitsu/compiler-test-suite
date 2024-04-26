module m0
integer,parameter,dimension(*)::a=[3,3+4,3+8,3+16,3+32,3+64,3+128,3+256,&
  3+512,3+1024,3+2048,3+4096,3+4096*2,3+4096*4,3+4096*8,3+4096*16]
integer,parameter,dimension(*,*,*,*)::b= reshape( a, [2,4,2,1])
logical(8),parameter,dimension(*,*,*,*)::m= reshape( b==b, [2,4,2,1])
interface f
procedure f1,f4
end interface
contains
subroutine sx01(w,q,n)
integer:: w(:,:,:),q(:)
if (any(shape(w)/=q))print *,1001,shape(w),q,n
if (n==7 .or. n==11 .or. n==18 .or. n==22) then
if (all(w==3) ) print *,1003,w,n
else
if (any(w==3) ) print *,1004,w,n
endif
end subroutine
subroutine sx02(w,n)
integer:: w
if (w/=7 .and. w/=131071 ) print *,1002,w,n
end subroutine
function f1(w) result(r)
integer::w(:)
integer,pointer:: r(:)
allocate(r( size(w) ) )
r=w
end function
function f4(w) result(r)
integer::w(:,:,:,:)
integer,pointer:: r(:,:,:,:)
allocate(r( size(w,1),size(w,2),size(w,3),size(w,4) ))
r=w
end function
end
subroutine s1
use m0
call sx02( iany( f( [3 , 7]) ) ,1)
call sx02( iany( f( a       )) ,2)
call sx02( iany( f( b       )) ,3)
call sx01( iany( f( b),dim=1 ),[  4,2,1], 04)
call sx01( iany( f( b),dim=2 ),[2,  2,1], 05)
call sx01( iany( f( b),dim=3 ),[2,4,  1], 06)
call sx01( iany( f( b),dim=4 ),[2,4,2  ], 07)
call sx01( iany(    dim=1,array=f(b) ),[  4,2,1], 08)
call sx01( iany(    dim=2,array=f(b) ),[2,  2,1], 09)
call sx01( iany(    dim=3,array=f(b) ),[2,4,  1], 10)
call sx01( iany(    dim=4,array=f(b) ),[2,4,2  ], 11)
call sx02( iany( f( [3 , 7] ),mask=[.true.,.true.]) ,12)
call sx02( iany( f( a      ),mask=a==a ) ,13)
call sx02( iany( f( b      ),mask=m ) ,14)
call sx01( iany( f( b),dim=1,mask=m ),[  4,2,1], 15)
call sx01( iany( f( b),dim=2,mask=m ),[2,  2,1], 16)
call sx01( iany( f( b),dim=3,mask=m ),[2,4,  1], 17)
call sx01( iany( f( b),dim=4,mask=m ),[2,4,2  ], 18)
call sx01( iany( dim=1,array=f(b),mask=m ),[  4,2,1], 19)
call sx01( iany( dim=2,array=f(b),mask=m ),[2,  2,1], 20)
call sx01( iany( dim=3,array=f(b),mask=m ),[2,4,  1], 21)
call sx01( iany( dim=4,array=f(b),mask=m ),[2,4,2  ], 22)
end
call s1
print *,'pass'
end
