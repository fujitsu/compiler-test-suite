	program main
	call sub1
	call sub2
	call sub3
	call sub4
	end
!
	module moda
	integer i
	integer j
	equivalence(i,j)
	contains
	  subroutine test2
	  i=1
	  j=j+1
	  if( i==2 ) then
	    print *,' OK 1'
          else
	    print *,' NG 1'
	  endif
	  end subroutine test2
        end module moda
	subroutine sub1
	use moda
	call test2
	end
!
	module modd
	integer,private::i
	integer,private::j
	equivalence(i,j)
	contains
	  subroutine test2
	  i=1
	  j=j+1
	  if( i==2 ) then
	    print *,' OK 2'
          else
	    print *,' NG 2'
          endif
	  end subroutine test2
        end module modd
	subroutine sub2
        use modd
	call test2
	end
!
	module mode
	contains
	  subroutine test2
          integer i
          integer j  
	  equivalence(i,j)
	  i=1
	  j=j+1
	  if( i==2 ) then
	    print *,' OK 3'
          else
	    print *,' NG 3'
          endif
	  end subroutine test2
        end module mode
	subroutine sub3
        use mode
	call test2
	end
!
	module modf
	contains
	  recursive subroutine test2
          integer i   
          integer j  
	  equivalence(i,j)
	  i=1
	  j=j+1
	  if( i==2 ) then
	    print *,' OK 4'
          else
	    print *,' NG 4'
          endif
	  end subroutine test2
        end module modf
	subroutine sub4
        use modf
	call test2
	end
