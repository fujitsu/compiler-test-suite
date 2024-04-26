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
	real r(1)/1.0/
	contains
	  subroutine test1(s)
	  real,intent(in)::s
	  r(1)=r(1)+s-1.0
	  end subroutine test1
	  subroutine test2
	  call test1(r(1)+1.0)
	  if( r(1)==2 ) then
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
	module modb
	real r(1)/1.0/
	contains
	  subroutine test2
	  call test1(r(1)+1.0)
	  if( r(1)==2 ) then
	    print *,' OK 2'
          else
	    print *,' NG 2'
          endif
	  end subroutine test2
        end module modb
	subroutine sub2
	use modb
	call test2
	end
        subroutine test1(s)
        use modb
	real,intent(in)::s
	r(1)=r(1)+s-1.0
	end subroutine test1
!
	module modc
	real r(1)/1.0/
	contains
	  subroutine test2
	  call test1(r(1)+1.0)
	  if( r(1)==2 ) then
	    print *,' OK 3'
          else
	    print *,' NG 3'
          endif
          contains
             subroutine test1(s)
	     real,intent(in)::s
             r(1)=r(1)+s-1.0
             end subroutine test1
	  end subroutine test2
        end module modc
	subroutine sub3
        use modc
	call test2
	end
!
	module modd
	real,private::r(1)/1.0/
	contains
	  subroutine test2
	  call test1(r(1)+1.0)
	  if( r(1)==2 ) then
	    print *,' OK 4'
          else
	    print *,' NG 4'
          endif
          contains
             subroutine test1(s)
	     real,intent(in)::s
             r(1)=r(1)+s-1.0
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
          real r(1)  /1.0/
	  call test1(r(1)+1.0)
	  if( r(1)==2 ) then
	    print *,' OK 5'
          else
	    print *,' NG 5'
          endif
          contains
             subroutine test1(s)
	     real,intent(in)::s
             r(1)=r(1)+s-1.0
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
          real r(1)
	  r = 1.0
	  call test1(r(1)+1.0)
	  if( r(1)==2 ) then
	    print *,' OK 6'
          else
	    print *,' NG 6'
          endif
          contains
             recursive subroutine test1(s)
	     real,intent(in)::s
             r(1)=r(1)+s-1.0
             end subroutine test1
	  end subroutine test2
        end module modf
	subroutine sub6
        use modf
	call test2
	end
