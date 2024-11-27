module m1
  type w1
    integer::y1
  end type
   type,extends(w1)::w2
      class(w1),allocatable::wy2(:)
   end type
end
subroutine s1
use m1
 type (w2):: v1
 allocate(w2::v1%wy2(2))
end
call s1
print *,'pass'
end
   
