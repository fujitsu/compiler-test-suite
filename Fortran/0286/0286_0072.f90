	module test
 	integer,parameter::n=10
  	integer,parameter::t=4
  	integer,parameter::max_bits=32
	contains
	  integer(kind=t) elemental function ibit(a,b,c)
	  integer(kind=t),intent(in):: a
	  integer*4,intent(in):: b,c
	  ibit = ibits(a,b,c)
	  end function
	end
	subroutine sub(a,ip,is)
	use test
	implicit none
	integer,save::c = 0
	integer*4 ip,is
	integer(kind=t),dimension(n)::a
	integer(kind=t),dimension(n)::b
	select case(c)
         case ( 0 )
         b = ibits(a, 0 , 0 )
         case ( 1 )
         b = ibits(a, 0 , 1 )
         case ( 2 )
         b = ibits(a, 0 , 2 )
         case ( 3 )
         b = ibits(a, 0 , 31 )
         case ( 4 )
         b = ibits(a, 0 , 32 )
         case ( 5 )
         b = ibits(a, 1 , 0 )
         case ( 6 )
         b = ibits(a, 1 , 1 )
         case ( 7 )
         b = ibits(a, 1 , 2 )
         case ( 8 )
         b = ibits(a, 1 , 31 )
         case ( 9 )
         b = ibits(a, 2 , 0 )
         case ( 10 )
         b = ibits(a, 2 , 1 )
         case ( 11 )
         b = ibits(a, 2 , 2 )
         case ( 12 )
         b = ibits(a, 31 , 0 )
         case ( 13 )
         b = ibits(a, 31 , 1 )
         case ( 14 )
         b = ibits(a, 32 , 0 )
	end select
	if( .not.all( b == ibit(a,ip,is) ) ) then
	  print *,"NG",ip,is
	endif
	c=c+1
	end 
	program main
	use test
	implicit none
	integer*4 i,j,ii,jj
	integer(kind=t),dimension(:),allocatable::a
	real,dimension(:),allocatable::r
	integer*4,parameter::data(5)=( / 0,1,2,max_bits-1,max_bits /)
        allocate(a(n),r(n))
        call random_number(r)
        a=(r-0.5)*2.0*huge(a)
        do i=1,5
        do j=1,5
	ii = data(i)
	jj = data(j)
        if( ii+jj <= max_bits ) then
	   call sub(a,ii,jj)
	endif
	end do
	end do
	print *,"PASS"
        end
