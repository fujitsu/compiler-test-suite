	program main
	  interface 
	    function  test1() result(p)
	    real,pointer,dimension(:) :: p
	    end function
	  end interface
!
       real,pointer,dimension(:) :: p
       call init
       do i=1,10
	 p => test1()
	 do j=1,10
	   p(j) = p(j) + 3
         end do
       end do
       call check
       end
       function  test1() result(p)
       real,pointer,dimension(:) :: p
       real,target,dimension(10,10) :: s
       common /com/s
       integer c 
       data c/0/
       c=c+1
       p => s(c,:)
       return 
       end 
       subroutine init
       real,target,dimension(10,10) :: s
       common /com/s
       s = 0
       return 
       end
       subroutine check
       real,target,dimension(10,10) :: s
       common /com/s
       print *,sum(s)
       return 
       end

