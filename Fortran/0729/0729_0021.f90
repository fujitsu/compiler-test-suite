 type x
   type(x),pointer::y=>null()
   integer        ::yy=-1
 end type
 type(x),pointer::a=>null()
 if (associated(a)) print *,'err-1'
 allocate(a)
 if (associated(a%y)) print *,'err-2'
 if (a%yy/=-1)print *,'err-3'
 a%y=> fun()
 if (associated(a%y%y)) print *,'err-4'
 if (a%y%yy/=-1)print *,'err-5'
 print *,'pass'
 contains
   function fun()
   type(x),pointer::fun
   allocate(fun)
   end function
end
