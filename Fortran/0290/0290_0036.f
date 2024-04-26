	call test1
	call test2
	call test3
	print *,'TEST passed '
	end
	subroutine test1
	integer a,b
	equivalence(a,b)
	b=1
	if( a /= 1 ) then
          print *,' NG '
        endif 
	end
	subroutine test2
	integer a(10),b(10)
	equivalence(a,b)
	b=1
	if( a(1) /= 1 ) then
          print *,' NG '
        endif 
	end
	subroutine test3
	type TAG
          sequence
          integer i
          integer j
        end type
	type (TAG)a,b
	equivalence(a,b)
	b%i=1
	if( a%i /= 1 ) then
          print *,' NG '
        endif 
	end
	subroutine test4
	type TAG
          sequence
          integer i
          integer j
        end type
	type (TAG)a(10),b(10)
	equivalence(a,b)
	b%i=1
	if( a(1)%i /= 1 ) then
          print *,' NG '
        endif 
	end
	subroutine test5
	type TAG
          sequence
          integer i(10)
          integer j(10)
        end type
	type (TAG)a,b
	equivalence(a,b)
	b%i=1
	if( a%i(1) /= 1 ) then
          print *,' NG '
        endif 
	end
