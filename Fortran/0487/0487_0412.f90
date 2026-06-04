module m1
contains
 subroutine ss( d ,k)
  integer:: d(..)
 end 
end
subroutine s1
use m1
integer,target:: a(5)=[1,2,3,4,5]
integer, pointer:: p(:)
 call ss( a , 0)
p=>a
 call ss( p , 0)
p=>a(::2)
 call ss( p , 1)
call xx(p)
contains
subroutine xx(h)
integer:: h(:)
 call ss( h , 2)
end
end
call s1
print *,'pass'
end
