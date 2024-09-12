type x
  integer::x1
end type
type,extends(x)::y
  integer::y1
end type
class (x),allocatable::a(:)
type  (y),allocatable::b(:)
allocate(b(6))
    b(5)%x1=51
    b(5)%y1=52
    b(6)%x1=61
    b(6)%y1=62
if (allocated(a)) print *,201
a=b
if (.not.allocated(a)) print *,202
k=1
select type(a)
  type is (y)
    k=2
    if(a(5)%x1/=51) print *,301
    if(a(5)%y1/=52) print *,302
    if(a(6)%x1/=61) print *,303
    if(a(6)%y1/=62) print *,304
end select
if (k/=2) print *,501
print *,'pass'
end
  
