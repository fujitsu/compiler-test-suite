            module ft
   type :: t1
       real :: x
   end type t1
   type :: t2
       real :: x
   end type t2
   interface g
      module procedure g12, g21
   end interface
contains
   function g12 (x1)
      type (t1), intent(in)  :: x1
      type (t2) g12
      g12%x = x1%x
   end function g12
   function g21 (x2)
      type (t2), intent(in)  :: x2
      type (t1) g21
      g21%x = x2%x
   end function g21
end module ft
use ft
type(t1)::y1
type(t2)::y2
y1=g(t2(1.0))
y2=g(t1(2.0))
if (y1%x/=1.0)write(6,*) "NG"
if (y2%x/=2.0)write(6,*) "NG"
print *,'pass'
end

