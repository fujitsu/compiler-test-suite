 type x
   type(x),pointer::y
   integer        ::yy
 end type
 type(x),pointer::a=>null()
 type(x),pointer::b
 allocate(a)
 b=> fun()
 if (.not.associated(b)) print *,'err-4'
 print *,'pass'
 contains
   function fun()
   type(x),pointer::fun
   type(x),pointer::yx
   fun=>yx
   allocate(fun)
   end function
end
 
