module m1
contains
 subroutine ss( d ,k)
  integer,contiguous:: d(:)
  if (k==0) then
    if (.not.is_contiguous( d ) ) print *,101,is_contiguous(d),k
  else 
    if (.not.is_contiguous( d ) ) print *,102,is_contiguous(d),k
  endif
 end 
end
subroutine s1
use m1
integer,target:: a(5)=[1,2,3,4,5]
integer, pointer:: p(:)
 call ss( a , 0)
 call ss( a(::2) , 1)
p=>a
 call ss( p , 0)
p=>a(::2)
 call ss( p , 1)
end
call s1
print *,'pass'
end
