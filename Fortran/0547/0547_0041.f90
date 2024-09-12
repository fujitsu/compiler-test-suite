module m1
  type x1
     integer:: x1v
  end type
  type ,extends(x1)::x2
     integer::x2v
     class(x1),allocatable::x2a(:)
  end type
  type,extends(x2)::x3
     integer::x3v
     class(x1),allocatable::x3a(:)
  end type
  class (x2),allocatable:: a(:)
  class (x2),allocatable:: b(:)
end 
subroutine s1
use m1

allocate(x2::b(2))
select type(b)
 class is(x2)
   b%x1v=[1,2]
   b%x2v=[11,12]
   allocate(x2::b(1)%x2a(2))
end select

allocate(x2::a(2))
select type(p=>a)
 class is(x2)
   a%x1v=[1,2]
   p%x2v=[11,12]
   allocate(x2::p(1)%x2a(2))
end select
end
call s1
print *,'pass'
end
