 type x
   type(x),pointer::y=>null()
   integer        ::yy=-1
 end type
 type(x),pointer::b
 b=> fun()
 if (associated(b%y)) print *,'err-4'
 print *,'pass'
 contains
   function fun()
   type(x),pointer::fun
   type(x),save,pointer::yx
   allocate(yx)
   fun=>yx
   end function
end

