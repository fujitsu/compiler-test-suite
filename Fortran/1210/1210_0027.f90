MODULE m1
  TYPE :: x
    integer(8) :: z0(1000)
  END TYPE
  type,extends(x):: xxx
    integer, ALLOCATABLE :: z1(:)
  END TYPE
CONTAINS
!impure elemental   FUNCTION f( d ) RESULT( r )
FUNCTION f( d ) RESULT( r )
    type(xxx), INTENT(IN) :: d
    TYPE(xxx) :: r
   r%z1=d%z1
 !print *,30221,loc(r%z1)
 !print *,30222,r%z1
  END FUNCTION 
END MODULE 

subroutine s3
use  m1
  type(xxx),allocatable :: v,w
allocate(xxx:: w)
allocate(xxx:: v)
write(1001, '(z16.16)') loc(v)
w%z0=1
allocate(w% z1(10),source=-1)
v= f(w)
if (v%z1(10)/=-1) print *,20222,v%z1
end
do n=1,30
  call s3
end do
!call chk(1001)
print *,'sngg713r : pass'
end
 subroutine  chk(k)
     character(16)::x(1000)
     rewind (k)
     kk=1
     do
       read(k ,'(a)',end=100) x(kk)
       kk=kk+1
     end do
  100 continue
     kk=kk-1
     if (kk>1000) stop 999
     do nn=1,kk-1
      do nnn=nn+1,kk
        if (x(nn)==x(nnn)) return
      end do
     end do
  500 print *,"Please check UNIT",k
     end

