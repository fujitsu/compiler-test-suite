module m1
  type xx
     integer:: xx1 
     integer:: xx2 
  end type
  type x0
     integer:: x01 
     class(*),allocatable:: x02(:)
  end type
end
subroutine s1
use m1
type (x0),target,allocatable::v1(:),v2(:)
class(*),pointer    :: p(:)


allocate(v2(2))
do k=1,2
allocate(xx::v2(k)%x02(2))
p=>         v2(k)%x02
select type(p)
classis (xx)
  p(1)%xx1=1+k
  p(1)%xx2=1+k+100
  p(2)%xx1=2+k
  p(2)%xx2=2+k+100
class default
 print *,9099
end select
end do

allocate( v1 ,source=v2,stat=nmk) 
if (nmk/=0 ) print *,6789

do k=1,2
p=>         v1(k)%x02
select type(p)
classis (xx)
  if (p(1)%xx1/=1+k) print *,33001
  if (p(2)%xx1/=2+k) print *,33002
  if (p(1)%xx2/=1+k+100) print *,33011
  if (p(2)%xx2/=2+k+100) print *,33012
class default
 print *,90991
end select
p=>         v2(k)%x02
select type(p)
classis (xx)
  if (p(1)%xx1/=1+k) print *,33101
  if (p(2)%xx1/=2+k) print *,33102
  if (p(1)%xx2/=1+k+100) print *,33111
  if (p(2)%xx2/=2+k+100) print *,33112
class default
 print *,90992
end select
end do

do k=1,2
p=>         v2(k)%x02
select type(p)
classis (xx)
 p(1)%xx1=11+k
 p(2)%xx1=12+k
 p(1)%xx2=11+k+100
 p(2)%xx2=12+k+100
class default
 print *,90993
end select
p=>         v1(k)%x02
select type(p)
classis (xx)
  if (p(1)%xx1/=1+k) print *,33201
  if (p(2)%xx1/=2+k) print *,33202
  if (p(1)%xx2/=1+k+100) print *,33211
  if (p(2)%xx2/=2+k+100) print *,33212
class default
 print *,90994
end select
p=>         v2(k)%x02
select type(p)
classis (xx)
  if (p(1)%xx1/=11+k) print *,33301
  if (p(2)%xx1/=12+k) print *,33302
  if (p(1)%xx2/=11+k+100) print *,33311
  if (p(2)%xx2/=12+k+100) print *,33312
class default
 print *,90992
end select

deallocate (v2(k)%x02)
if (allocated(v2(k)%x02)) print *,301,k
p=>         v1(k)%x02
select type(p)
classis (xx)
  if (p(1)%xx1/=1+k) print *,33401
  if (p(2)%xx1/=2+k) print *,33402
  if (p(1)%xx2/=1+k+100) print *,33411
  if (p(2)%xx2/=2+k+100) print *,33412
class default
 print *,90995
end select

deallocate (v1(k)%x02)
if (allocated(v1(k)%x02)) print *,401,k
end do

end
call s1
print *,'pass'
end
