	program main
	print *,' TEST '
	call sub
	print *,' END '
	end
	recursive subroutine sub
	implicit none
	integer counter1,counter2
	real    rdim(10)
	counter1=0 
	counter2=0 
	rdim=0
	call rec
	print *,counter1,counter2,rdim
	contains
	  recursive subroutine rec
	  counter2=counter2+1
	  rdim(counter2) = rdim(counter2) + 1.0
	  if( counter2 < 10 ) call rec
	  counter1=counter1-1
	  end subroutine rec
	end

