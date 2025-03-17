module m1
  integer,pointer::p(:,:)
  integer v(4),vv(8)
  contains
  subroutine set
  allocate(p(2,3))
  p=reshape((/1,2,3,4,5,6/),(/2,3/))
  v=(/11,12,13,14/)
  vv(::2)=(/11,12,13,14/)
  end subroutine
end
use m1
call set
call s(p(:,:),v(1:4))
call s(p(1:2,1:3),v(1:4))
call s(p(:,:),vv(1:8:2))
call s(p(1:2,1:3),vv(1:8:2))
print *,'pass'
end
subroutine s(p,v)
integer::p(2,3),v(4)
  if (any(p/=reshape((/1,2,3,4,5,6/),(/2,3/))))write(6,*) "NG"
  if (any(v/=(/11,12,13,14/)))write(6,*) "NG"
end
