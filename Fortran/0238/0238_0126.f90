module m1
  type x0
     integer(8):: x01 (2)
     integer,allocatable:: x02(:)
  end type
end
subroutine s1(n)
use m1
type y
integer::v0
type (x0),allocatable::v1(:)
end type
type(y):: v11
type z
integer(8)::v0(10)
type (x0),pointer::v2(:)
end type
type(z):: v3
type (x0),allocatable::v(:)


allocate(v3%v2(3))
k=1
allocate(v3%v2(k)%x02(2))
v3%v2(k)%x01(1)=101
v3%v2(k)%x01(2)=102
v3%v2(k)%x02(1)=103
v3%v2(k)%x02(2)=104
k=k+2
allocate(v3%v2(k)%x02(2))
v3%v2(k)%x01(1)=201
v3%v2(k)%x01(2)=202
v3%v2(k)%x02(1)=203
v3%v2(k)%x02(2)=204

allocate( v ,source=v3%v2(1:3:2)) 

if (any(shape(v)/=2)) print *,10,shape(v)
if (v(1)%x01(1)/=101) print *,101,v(1)%x01(1)
if (v(1)%x01(2)/=102) print *,201,v(1)%x01(2)
if (v(1)%x02(1)/=103) print *,102,v(2)%x02(1)
if (v(1)%x02(2)/=104) print *,202,v(2)%x02(2)
if (v(2)%x01(1)/=201) print *,301,v(1)%x01(1)
if (v(2)%x01(2)/=202) print *,301,v(1)%x01(2)
if (v(2)%x02(1)/=203) print *,402,v(2)%x02(1)
if (v(2)%x02(2)/=204) print *,402,v(2)%x02(2)
if (any(shape(v(1)%x02)/=2)) print *,20,shape(v(1)%x02)
if (any(shape(v(2)%x02)/=2)) print *,20,shape(v(2)%x02)
if (v3%v2(1)%x01(1)/=101) print *,401,v3%v2(1)%x01(1)
if (v3%v2(1)%x01(2)/=102) print *,402,v3%v2(1)%x01(2)
if (v3%v2(1)%x02(1)/=103) print *,403,v3%v2(1)%x02(1)
if (v3%v2(1)%x02(2)/=104) print *,404,v3%v2(1)%x02(2)
if (v3%v2(3)%x01(1)/=201) print *,405,v3%v2(3)%x01(1)
if (v3%v2(3)%x01(2)/=202) print *,406,v3%v2(3)%x01(2)
if (v3%v2(3)%x02(1)/=203) print *,407,v3%v2(3)%x02(1)
if (v3%v2(3)%x02(2)/=204) print *,408,v3%v2(3)%x02(2)

end
call s1(2)
print *,'pass'
end
