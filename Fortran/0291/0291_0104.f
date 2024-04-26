	program main
	call sub1
	call sub2
	call sub3
	call sub4
	call sub5
	call sub6
	end
!
	module moda
	integer i
	contains
	  subroutine test1
	  i=i+1
	  end subroutine test1
	  subroutine test2
	  i=1
	  call test1
	  if( i==2 ) then
	    print *,' OK 1'
          else
	    print *,' NG 1'
          endif
	  end subroutine test2
        end module moda
!
	subroutine sub1
	use moda
	call test2
	end
!
	module modb
	integer i
	contains
	  subroutine test2
	  i=1
	  call test1
	  if( i==2 ) then
	    print *,' OK 2'
          else
	    print *,' NG 2'
          endif
	  end subroutine test2
        end module modb
!
	subroutine sub2
	use modb
	call test2
	end
        subroutine test1
        use modb
	i=i+1
	end subroutine test1
!
	module modc
	integer i
	contains
	  subroutine test2
	  i=1
	  call test1
	  if( i==2 ) then
	    print *,' OK 3'
          else
	    print *,' NG 3'
          endif
          contains
             subroutine test1
             i=i+1
             end subroutine test1
	  end subroutine test2
        end module modc
	subroutine sub3
        use modc
	call test2
	end
!
	module modd
	integer,private::i
	contains
	  subroutine test2
	  i=1
	  call test1
	  if( i==2 ) then
	    print *,' OK 4'
          else
	    print *,' NG 4'
          endif
          contains
             subroutine test1
             i=i+1
             end subroutine test1
	  end subroutine test2
        end module modd
	subroutine sub4
        use modd
	call test2
	end
!
	module mode
	contains
	  subroutine test2
          integer i
	  i=1
	  call test1
	  if( i==2 ) then
	    print *,' OK 5'
          else
	    print *,' NG 5'
          endif
          contains
             subroutine test1
             i=i+1
             end subroutine test1
	  end subroutine test2
        end module mode
	subroutine sub5
        use mode
	call test2
	end
!
	module modf
	contains
	  recursive subroutine test2
          integer i
	  i=1
	  call test1
	  if( i==2 ) then
	    print *,' OK 6'
          else
	    print *,' NG 6'
          endif
          contains
             recursive subroutine test1
             i=i+1
             end subroutine test1
	  end subroutine test2
        end module modf
	subroutine sub6
        use modf
	call test2
	end




