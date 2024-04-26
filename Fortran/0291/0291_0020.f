	program main
	integer*8 i8,j/-20/,k/20/
	integer    sum/0/
	do i8=j,k
	  sum=sum+i8
	end do
	if (int(sum)==0 ) then
	  print *,' OK '
        else
	  print *,' NG '
        endif
	end
