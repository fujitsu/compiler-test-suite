	program main
	  interface 
	    function  test1() result(p)
	    real,dimension(1000) :: p
	    end function
	  end interface
!
       real,target,dimension(1000,1000) :: s
       common /com/s
       real,dimension(1000) :: p
       call init
       do i=1,1000
	 p = test1()
	 do j=1,1000
	   p(j) = p(j) + 3
         end do
	 s(i,:) = p
       end do
       call check
       end
       function  test1() result(p)
       real,dimension(1000) :: p
       real,target,dimension(1000,1000) :: s
       common /com/s
       integer c 
       data c/0/
       c=c+1
       p = s(c,:)
       return 
       end 
       subroutine init
       real,target,dimension(1000,1000) :: s
       common /com/s
       s = 0
       return 
       end
       subroutine check
       real,target,dimension(1000,1000) :: s
       common /com/s
       print *,sum(s)
       return 
       end

