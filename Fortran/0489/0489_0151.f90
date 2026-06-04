use iso_c_binding,only:c_int
interface
  subroutine c_sub(d) bind(c)
  type(*):: d(..)
  end subroutine
end interface
integer(c_int):: a(2,3)=reshape([1,2,3,4,5,6],[2,3])
call c_sub(a(:,:2) )
















print *,'pass'
end
  subroutine c_sub(d) bind(c)
use iso_c_binding,only:c_int
  type(*):: d(..)
  end subroutine
