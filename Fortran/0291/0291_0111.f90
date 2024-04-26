	implicit none
	integer,parameter::k=8
	integer,parameter::n=100,ns=1000
        real(kind=k),dimension(:),pointer::r1,r2
        real(kind=k)::s1,s2
        integer i,c1,c2,rate
        allocate(r1(ns),r2(ns))
        r1=2
        r2=2
        call system_clock(c1,rate)
	s1 = 0
  	  do i=1,n
            s1 = s1 + dot_product(r1,r2)
	  end do
        call system_clock(c2,rate)

        call system_clock(c1,rate)
	s2 = 0
	  do i=1,n
            s2 = s2 + myprod(r1,r2,ns)
	  end do
        call system_clock(c2,rate)

	if( s1 == 400000 .and. s2 == 400000 ) then
	  print *,' OK '
	else
	  print *,' NG '
	endif
        contains
          real(kind=k) function myprod(r1,r2,n) result(prod)
          real(kind=k),dimension(:),pointer::r1,r2
          real(kind=k) s,s1,s2,s3,s4
	  integer i,n5,n
	  s = 0
	  n5 = mod(n,5)
	  do i=1,n5
	    s = s + r1(i) * r2(i)
	  end do
	  s1 = 0 ; s2 = 0 ; s3 = 0 ; s4 = 0
	  do i=n5+1,n,5
	    s = s + r1(i) * r2(i)
	    s1 = s1 + r1(i+1) * r2(i+1)
	    s2 = s2 + r1(i+2) * r2(i+2)
	    s3 = s3 + r1(i+3) * r2(i+3)
	    s4 = s4 + r1(i+4) * r2(i+4)
	  end do
	  s = s + s1 + s2 + s3 + s4
          prod = s
	  end function
	end
