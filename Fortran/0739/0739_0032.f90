 type x
   type(x),pointer::y=>null()
   integer        ::yy=-1
 end type
 type(x),pointer::b
 b=> fun()
 if (associated(b)) print *,'err-4'
 b=> fun1()
 if (.not.associated(b)) print *,'err-5'
 b=> fun()
 if (associated(b)) print *,'err-4'
 print *,'pass'
 contains
   function fun()
   type(x),pointer::fun
   type(x),pointer::yx=>null()
   if (associated(yx))write(6,*) "NG"
   fun=>yx
   end function
   function fun1()
   type(x),pointer::fun1
   type(x),pointer::yx=>null()
   if (associated(yx))write(6,*) "NG"
   allocate(yx)
   fun1=>yx
   end function
end

