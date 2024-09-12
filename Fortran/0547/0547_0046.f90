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
  class (x1),allocatable:: a(:)
end 
subroutine s1(n)
use m1

do kk=1,n
allocate(x2::a(2))
select type(p=>a)
 class is(x2)
   a%x1v=[1,2]
   p%x2v=[11,12]
   allocate(x2::p(1)%x2a(2),stat=kkk)
   if (kkk/=0) print *,2001
   p(1)%x2a%x1v=[21,22]
 class default
   print *,1001
end select


end do
end
call s1(1)
print *,'pass'
end
