 type x
   type(x),pointer::y
   integer        ::yy
 end type
 type(x),pointer::b
 b=> fun()
 if (.not.associated(b)) print *,'err'
 print *,'pass'
 contains
   function fun()
   type(x),pointer::fun
   type(x),target::yx
   fun=>yx
   allocate(fun)
   end function
end
 
