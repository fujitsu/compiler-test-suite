	subroutine test2()
	volatile t
	integer t
	common/ma/mask
	logical  mask(1000)
	common/com/s,r
	t=0
	do i=1,1
 	  if( mask(i) ) s=s+t
	  t = t + i
	  if( mask(i) ) r=r+t
          print *,s,r
	end do
	end 
	program main
	common/ma/mask
	logical  mask(1000)
	common/com/s,r
        s=0
        r=0
	mask=.true.
	call test2()
        end
