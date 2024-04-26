	program main
	call foo
	call bar
	call foo
	call bar
        print *,'ok'
	contains 
	  subroutine foo
	  real,save::i=100
	  i=i+1
	  end subroutine
	  subroutine bar
	  integer,save::i=1
	  i=i+1
	  end subroutine
	end
