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
      character(*) :: a,b
      character(len(a)+len(b)) :: c
   end 
  end interface
end 

submodule (m1) smod
 type (x) :: e
contains
 module procedure s
    implicit none
      type (x) :: f
      if (len(a)/=2) print *,201
      if (len(b)/=3) print *,202
      if (len(c)/=5) print *,203
      if (d%d/=1) print *,205
      if (e%d/=1) print *,206
      if (f%d/=1) print *,207
      if (a/='12') print *,401
      if (b/='345') print *,402
      c=a//b
 end
end
use m1
    implicit none
      character(1) :: a*(2),b*(3)
a='12'
b='345'
if (s(a,b)/='12345')print *,505
print *,'sngg299h : pass'
end
