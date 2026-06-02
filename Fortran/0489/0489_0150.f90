module mod
use iso_c_binding,only:c_int
interface
  subroutine c_sub(d,n) bind(c)
  import:: c_int
  type(*):: d(..)
  integer,value:: n
  end subroutine
  subroutine c_x(d,n) bind(c)
  import:: c_int
  type(*):: d(..)
  integer,value:: n
  end subroutine
end interface
integer(c_int):: a(2,3)=reshape([1,2,3,4,5,6],[2,3])
contains
subroutine fort_sub(d,n) bind(c)
  type(*):: d(..)
  integer,value:: n
   call c_sub( d ,n )
end subroutine
end
use mod
call c_x(a(:,:2) ,1)
call c_x(a(:,::2),2)
call c_x(a(2,1)  ,3)


print *,'pass'
end
  subroutine c_sub(d,n) bind(c)
use iso_c_binding,only:c_int
  type(*):: d(..)
  integer,value:: n
  end subroutine
  subroutine c_x(d,n) bind(c)
use iso_c_binding,only:c_int
  type(*):: d(..)
  integer,value:: n
  end subroutine
