subroutine s1
 type x
   integer::x1
   integer,allocatable::x2(:)
   type(x),pointer::x3=>null()
   integer,allocatable::x4(:)
 end type
 type(x):: v
 integer::z2(2)=[2,3]
 integer::z4(3)=[12,13,14]
v= x(x1=1 , x2=z2 , x4=z4)
if (v%x1/=1) print *,101
if (any(v%x2/=z2)) print *,102
if (any(v%x4/=z4)) print *,104
if (associated(v%x3)) print *,103
end
call s1
print *,'pass'
end
