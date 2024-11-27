 type x
   type(x),pointer::y
   integer        ::yy
 end type
 type(x),pointer::b
 b=> fun()
 if (associated(b%y)) print *,'err-4'
 print *,'pass'
 contains
   function fun()
   type(x),pointer::fun
   type(x),pointer::yx=>null()
   allocate(yx)
   nullify(yx%y)
   fun=>yx
   end function
end

