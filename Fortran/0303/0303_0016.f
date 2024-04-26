	integer i2,i3,i
	integer*4 v1
	integer*4 v2
	integer*4 v3
	
	v1=2
	v2=3
	v3=1

	v1 = v3
	do i2=5,0,-1
            do i3=0,5,2
              v2 = v3
              print *, v1,v2,v3
            end do
          v3 = v1 + v1
        end do
        print *, v1,v2,v3
        end
