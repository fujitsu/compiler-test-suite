 type x
   type(x),pointer::y=>null()
   integer        ::yy=-1
 end type
 type(x),pointer::a=>null()
 if (associated(a)) print *,'err-1'
 allocate(a)
 if (associated(a%y)) print *,'err-2'
 if (a%yy/=-1)print *,'err-3'
 a%yy=100
 allocate(a%y)
 if (.not.associated(a%y)) print *,'err-4'
 if (a%yy/=100)print *,'err-5'
 call sub(a)
 if (associated(a%y)) print *,'err-7'
 if (a%yy/=-1)print *,'err-8'
 print *,'pass'
  contains
   subroutine sub(aa)
   type(x),intent(out)::aa
   if (aa%yy/=-1)print *,'err-6'
   end subroutine
 end
