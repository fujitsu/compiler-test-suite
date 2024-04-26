	implicit none
	integer,parameter::k=16
	integer,parameter::n=100,ns=100
        complex(kind=k),dimension(:),pointer::r1,r2
        complex(kind=k)::s0,s1,s2
        integer i,c1,c2,rate
        allocate(r1(ns),r2(ns))
        r1=2
        r2=2
        call system_clock(c1,rate)
	s0 = 0
  	  do i=1,n
            s0 = s0 + sum(conjg(r1)*r2)
	  end do
        call system_clock(c2,rate)

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

	if( s0 == 40000 .and. s1 == 40000 .and. s2 == 40000 ) then
	  print *,' OK '
	else
	  print *,' NG ',s0,s1,s2
	endif
        contains
          complex(kind=k) function myprod(r1,r2,n) result(prod)
          complex(kind=k),dimension(:),pointer::r1,r2
          complex(kind=k) s,s1,s2,s3,s4
	  integer i,n5,n
	  s = 0
	  n5 = mod(n,5)
	  do i=1,n5
	    s = s + r1(i) * r2(i)
	  end do

	  do i=n5+1,n,5
	    s = s + r1(i) * r2(i) + r1(i+1) * r2(i+1) + r1(i+2) * r2(i+2) + r1(i+3) * r2(i+3) + r1(i+4) * r2(i+4)
	  end do
          prod = s
	  end function
	end
