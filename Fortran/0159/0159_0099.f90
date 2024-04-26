module H
 type abc
  integer,allocatable :: x
 end type
  type(abc),allocatable:: d2
  type(abc),allocatable:: d3
  type(abc),allocatable:: d4
  type(abc),allocatable:: d1
  type(abc),allocatable:: d5
  type(abc),allocatable:: d6
end module H

module K
  use H,only:g1=>d1
end module K

module P
  use H,only:f1=>d1
  integer,allocatable:: d1(:)
end module P

module Px
  use P,only:d1=>f1
end module Px

subroutine s1()


  use P
  use Px,only:dd=>d1
f1%x=10
allocate(d1(10))
d1=10
end subroutine s1

module m1
use H
use K
use P
private
end
module mmm
use K
use Px
use H
contains
subroutine s2()
use P
call sub()
call sub2()
if (f1%x.ne.10) print *,'err1'
end subroutine
subroutine sub2()
if (d1%x.ne.10) print *,'err2'
end subroutine
subroutine sub()
use m1
if (g1%x.ne.10) print *,'err3'
end subroutine
end

use mmm
allocate(d1)
allocate(d1%x)
call s1()
call s2()
call sssss()
print *,'pass'
contains
subroutine sssss()
use Px
call s2()
call aaa()
if (d1%x.ne.10) print *,'err2'
end subroutine
subroutine aaa()
use P
call s2()
if (f1%x.ne.10) print *,'err2'
end subroutine
end
