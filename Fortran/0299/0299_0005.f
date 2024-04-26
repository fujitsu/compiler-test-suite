	real,dimension(10) :: a
        data a/10*1/
	s=0
        do i=1,10
          t=s+a(i)
          s=t
        end do

        print *,s
	end
