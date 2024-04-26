	subroutine sub1(a)
	real,dimension(10,10)::a
	i=1
10      continue
  	  j=1
20        continue
            a(j,i) = 1
	    j=j+1
          if( j.le.10 ) goto 20
	  i=i+1
        if( i.le.10 ) goto 10
	end 
	subroutine sub2(a)
	real,dimension(10,10)::a
	i=1
10      continue
  	  do j=1,10
            a(j,i) = a(j,i) + 1
          end do
	  i=i+1
        if( i.le.10 ) goto 10
	end 
	subroutine sub3(a)
	real,dimension(10,10)::a
	do i=1,10
  	  j=1
20        continue
            a(j,i) = a(j,i) + 2
	    j=j+1
          if( j.le.10 ) goto 20
        end do
	end 
	program main
	real,dimension(10,10)::a
	call sub1(a)
	call sub2(a)
	call sub3(a)
	if( sum(a) == 400 ) then
	  print *,' OK '
	else 
	  print *,' NG '
	end if
	end
