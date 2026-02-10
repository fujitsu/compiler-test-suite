module m1
 contains
  subroutine s03()
   type ty1
    procedure(real), pointer, nopass :: pp
   end type
   type (ty1) :: tt
   external   :: f,x
   pointer    :: f
   f  => x
   tt =  ty1(x)
   if (abs(f()     -1) > 0.0001) print *, 'error 1'
   if (abs(tt%pp() -1) > 0.0001) print *, 'error 2'
   call z(f)
   call z(tt%pp)
  end subroutine

  subroutine z(p)
   procedure(real),pointer::p
   if (abs(p()     -1) > 0.0001) print *, 'error 3'
  end subroutine
end module

function x()
 x=1.0
end function

 use m1
 call s03()
 print *, 'pass'
end
