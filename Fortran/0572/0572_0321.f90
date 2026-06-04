type x
integer::x(12)
end type x
type(x)::obj(10)
call sub(obj)
Print*,"Pass"
contains 
subroutine sub(bb111)
class(*)::bb111(..)
if(rank(bb111).ne.1)print*,"1001"
call sub2(bb111)
end subroutine sub
subroutine sub2(yy)
class(*)::yy(..)
if(rank(yy).ne.1)print*,"1002"
end subroutine sub2
end
