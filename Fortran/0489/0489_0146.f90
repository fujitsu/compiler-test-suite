use iso_c_binding,only:c_int
interface
  subroutine c_sub(d,n) bind(c)
  import:: c_int
  type(*):: d(..)
  integer,value:: n
  end subroutine
end interface
integer(c_int):: a(2,3)=reshape([1,2,3,4,5,6],[2,3])
call c_sub(a(:,::2),1)
call c_sub(a(:,:2),2)
call c_sub(a(2,1),3)

call ss( a(:,::2) )

print *,'pass'
contains
 subroutine ss( dd )
  type(*):: dd(..)
  call c_sub( dd , 4) 
 end subroutine
end




subroutine chk(k1,k2,k3) bind(c)
use iso_c_binding,only:c_int
integer(c_int):: k1,k2,k3
if (k1/=k2) print *,k1,k2,k3
end
  subroutine c_sub(d,n) bind(c)
use iso_c_binding,only:c_int
  type(*):: d(..)
  integer,value:: n
  end subroutine
