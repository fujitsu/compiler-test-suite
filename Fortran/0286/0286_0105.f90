	block data
	implicit none
	common/com/a,b
	real*8 a(10),b(10)
	data b/10000, 100, 10, 5, 0, &
               -10000, -100, -10, -5, -0.0/
	end

	subroutine test(p,test_f,func,is_exp,is_sqrt)
	implicit none
	logical is_exp,is_sqrt
	common/com/a,b
	real*8 a(10),b(10)
	external p,test_f
	character*(*) func
	real*8  x,y,p
	integer i
	call test_f(10,a,b)
	do i=1,10
	  if( is_exp .and. b(i) <= 0 ) cycle
	  if( is_exp .and. b(i) >= 709.0 ) cycle
	  if( is_sqrt .and. b(i) <= 0 ) cycle
	  x=p(b(i))
	  y=a(i)
          if( x.ne.x .and. y.ne.y ) cycle
          if( x.eq.0 .and. y.eq.0 ) cycle
	  if( abs((x-y)/x) > 1E-13) then
            print *,"NG : ",func,"(",b(i),") = ",x," != ",a(i)
          endif
        enddo
        print *,"PASS:",func
	end

	subroutine foo_sin(n,a,b)
	implicit none
	integer n
	real*8 a(n),b(n)
	integer i
	do i=1,n
	  a(i) = sin(b(i))
	enddo
	end

	subroutine foo_cos(n,a,b)
	integer n
	real*8 a(n),b(n)
	integer i
	do i=1,n
	  a(i) = cos(b(i))
	enddo
	end

	subroutine foo_log(n,a,b)
	integer n
	real*8 a(n),b(n)
	integer i
	do i=1,n
          if( b(i) <= 0 ) cycle
	  a(i) = log(b(i))
	enddo
	end

	subroutine foo_log10(n,a,b)
	integer n
	real*8 a(n),b(n)
	integer i
	do i=1,n
          if( b(i) <= 0 ) cycle
	  a(i) = log10(b(i))
	enddo
	end

	subroutine foo_exp(n,a,b)
	integer n
	real*8 a(n),b(n)
	integer i
	do i=1,n
          if( b(i).ge.709.0 ) cycle
	  a(i) = exp(b(i))
	enddo
	end

	subroutine foo_sqrt(n,a,b)
	integer n
	real*8 a(n),b(n)
	integer i
	do i=1,n
          if( b(i).lt.0.0 ) cycle
	  a(i) = sqrt(b(i))
	enddo
	end

	program main
	implicit none
	intrinsic dsin,dcos,dlog,dlog10,dexp,dsqrt
	external  foo_sin,foo_cos,foo_log,foo_log10,foo_exp,foo_sqrt
	call test(dsin,foo_sin,"sin",.false.,.false.)
	call test(dcos,foo_cos,"cos",.false.,.false.)
	call test(dlog,foo_log,"log",.true.,.false.)
	call test(dlog10,foo_log10,"log10",.true.,.false.)
	call test(dexp,foo_exp,"exp",.true.,.false.)
	call test(dsqrt,foo_sqrt,"sqrt",.false.,.true.)
	end

