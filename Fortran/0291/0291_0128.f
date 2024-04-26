	subroutine check( i, l)
	integer,intent(in):: i
	logical,intent(in):: l
	if( l ) then
	  print *,i,' OK '
        else
	  print *,i,' NG '
	endif 
	end
	subroutine dummy
	end
	program main
	call test1
	call test2
	call test3
	call test4
	end

	subroutine test1
	integer,pointer::p
	integer,target ::t
	p => t
	t = 1
	call dummy
	call check( 1, t+1 == 2 )
	end
!
	subroutine test2()
	common /com/p
	integer,pointer::p
	integer,target ::t
	p => t
	t = 1
	call test2sub()
	call check(2 ,  t+1 == 3 )
	end
	subroutine test2sub()
	common /com/p
	integer,pointer::p
	p=p+1
	end
!
	subroutine test3()
	integer,pointer::p
	integer,target ::t
	p => t
	t = 1
	call test3int()
	call check(2 ,  t+1 == 3 )
	contains
  	  subroutine test3int()
	  p=p+1
	  end subroutine 
	end
!
        module moda
	integer,public,pointer::p
	contains
  	  subroutine test4mod()
	  p=p+1
	  end subroutine 
        end module
	subroutine test4()
        use moda
	integer,target ::t
	p => t
	t = 1
	call test4mod()
	call check(2 ,  t+1 == 3 )
	end
