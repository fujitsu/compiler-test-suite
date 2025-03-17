	  real b(1:3)
	  real a(3,10)
       call sub(a,b,1)
       end
       subroutine sub(a,b,j)
	  real b(j+1:3)
	  real a(3,*)
       end
