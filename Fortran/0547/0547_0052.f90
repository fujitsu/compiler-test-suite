module m1
  type w1
    integer::y1
  end type
  type x1
     class(w1),allocatable::y1(:)
  end type
   type,extends(x1)::x2
      class(w1),allocatable::y2(:)
   end type
  type z1
     class(x1),allocatable::y3(:)
  end type
end
subroutine s1
use m1
 type (z1),allocatable:: v1(:)
 allocate(v1(2))
 allocate(x2::v1(2)%y3(2))
k=0
select type(p=>v1(2)%y3)
 type is(x2)
   k=1
   allocate(w1::p(2)%y2(2))
end select
if (k/=1) print *,101
end
call s1
print *,'pass'
end
   
