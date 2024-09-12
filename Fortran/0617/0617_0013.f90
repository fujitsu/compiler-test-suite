subroutine s1
 type x
   character(:),allocatable::x1
 end type
   character(:),allocatable::y1
 type (x):: xx

 allocate(character(2)::y1)
 allocate(character(2)::xx%x1)
y1(:)='12'
xx%x1(:)='34'

xx=x(y1)
if (xx%x1/='12')print *,101
if (y1/='12')print *,102
end
call s1
call s2
print *,'pass'
end
subroutine s2
 type x
   character(:),allocatable::x1(:)
 end type
   character(:),allocatable::y1(:)
 type (x):: xx

 allocate(character(2)::y1(2))
 allocate(character(2)::xx%x1(2))
y1(:)='12'
xx%x1(:)='34'

xx=x(y1)
if (any(xx%x1/='12'))print *,201
if (any(y1/='12'))print *,202
end



