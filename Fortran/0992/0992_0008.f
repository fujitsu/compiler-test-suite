           interface operator(.minus.)
	   function neg(a1)
	   integer,intent(in) :: a1
	   integer ::neg
	   end function
	   end interface
	   i=10
	   print *,i
           i=.minus.100
	   call sub(.minus.10)
	   print *,i
	   end
	   function neg(ii)
	   integer ii,neg
	   neg = -(ii)
	   end
	   subroutine sub(j)
	   end
