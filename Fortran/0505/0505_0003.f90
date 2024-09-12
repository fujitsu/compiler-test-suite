type, abstract :: abst01
contains
   procedure(gname), deferred,nopass:: get_name
end type abst01
type, abstract :: x01
contains
   procedure(gname), deferred,nopass:: get_name
end type x01
interface
   function gname(this) result(name)
   end function gname
end interface

print *,'pass'
end
