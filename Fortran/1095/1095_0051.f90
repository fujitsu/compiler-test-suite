MODULE m1
    implicit none
 TYPE :: x
   INTEGER ::d=1
 END TYPE
 TYPE,extends(x)::y
   integer:: e=2
 end type
 type (x) :: d
  interface
   module  function s(a,b) result(c)
    implicit none
      CLASS(x) :: a,b
      type (y) :: c
   end 
  end interface
end 

submodule (m1) smod
 type (x) :: e
contains
 module procedure s
    implicit none
      type (x) :: f
      if (d%d/=1) print *,201
      if (a%d/=1) print *,202
      if (b%d/=1) print *,203
      if (c%d/=1) print *,204
      if (d%d/=1) print *,205
      if (e%d/=1) print *,206
      if (f%d/=1) print *,207
      if (c%e/=2) print *,210
      select type(a)
      type is(y)
       c%e = c%e+a%e
      end select
      select type(b)
      type is(y)
       c%e = c%e+b%e
      end select
 end
end
use m1
    implicit none
      CLASS(x),allocatable :: a,b
      type (y) :: c
      allocate(y::a,b)
c= s(a,b)
if (c%d/=1) print *,301
if (c%e/=6) print *,302
print *,'sngg298h : pass'
end
