subroutine s1(n)
  type x(k)
   integer,kind :: k
   integer:: a1(k)
   integer,allocatable:: a2(:)
  end type
  type (x(2)):: v
 v%a1=[1,2]
if (n==1) then
  allocate( v%a2(3))
 v%a2=[3,4,5]
end if
if (any(v%a1/=[1,2])) print *,101
if (n==1) then
 if (any(v%a2/=[3,4,5])) print *,201
end if
end
subroutine s2(n)
  type x(k)
   integer,kind :: k
   integer:: a1(k)
   integer,allocatable:: a2(:)
  end type
  type (x(2)):: w(n)
do nn=1,n
 w(nn)%a1=[1,2]
if (n==1) then
  allocate( w(nn)%a2(3))
 w(nn)%a2=[3,4,5]
end if
if (any(w(nn)%a1/=[1,2])) print *,101
if (n==1) then
 if (any(w(nn)%a2/=[3,4,5])) print *,201
end if
end do
end
do nnn=1,3
call s1(0)
call s1(1)
call s2(0)
call s2(1)
end do
print *,'pass'
end
