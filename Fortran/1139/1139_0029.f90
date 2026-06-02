subroutine s1(d)
type :: r
   integer  m
end type 
type :: v_r
   class (r) , allocatable :: item
end type
type :: xx
     type(v_r), allocatable :: ele(:)
end type
class(xx)::d
class(r),allocatable::a
allocate(a,source=d%ele(1)%item)
end
print *,'sngg279k : pass'
end



