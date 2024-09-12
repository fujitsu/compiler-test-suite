subroutine s1
 type x
   integer,allocatable::x1
 end type
 integer,allocatable::y1
 type (x):: xx

 allocate(y1)
 allocate(xx%x1)
y1=1
xx%x1=2

xx=x(y1)
if (xx%x1/=1)print *,101
if (y1/=1)print *,102
end
call s1
call s2
print *,'pass'
end
subroutine s2
 type x
   integer,allocatable::x1(:)
 end type
 integer,allocatable::y1(:)
 type (x):: xx

 allocate(y1(2))
 allocate(xx%x1(2))
y1=1
xx%x1=2

xx=x(y1)
if (any(xx%x1/=1))print *,201
if (any(y1/=1))print *,202
end
