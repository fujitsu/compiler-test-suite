    module mod
     real(4),dimension(15,4)::a2,b2,c2
    end module

    program main
     use mod
      call init()
      call sub2()
      print *,'pass'
    end program main

    subroutine sub2()
     use mod
      do i=1,4
        a2(:,i)=b2(:,i)+c2(:,i)
      enddo
    end subroutine

    subroutine init()
     use mod
	a2 = 0
	b2 = 2
	c2 = 3
    end subroutine
