        subroutine test1
	common /com/st
	type TAG
	  sequence
	  integer  a(1000)
	  integer  b(1000)
	  integer  c(1000)
	  integer  c1(1)
	  integer last
	end type
	type(TAG)st 
	call init(st)
	do i=1000,1,-1
	  st%c1(1) = st%a(i)
	  st%c1(1) = st%c1(1) + st%b(500)
	  st%c1(1) = st%c1(1) + st%c(i)
	  st%last = st%c1(1)
	end do
	print *,st%last
	end
        subroutine test2
	type TAG
	  sequence
	  integer  a(1000)
	  integer  b(1000)
	  integer  c(1000)
	  integer  c1(1)
	  integer last
	end type
	type(TAG)st 
	call init(st)
	do i=1000,1,-1
	  st%c1(1) = st%a(i)
	  st%c1(1) = st%c1(1) + st%b(500)
	  st%c1(1) = st%c1(1) + st%c(i)
	  st%last = st%c1(1)
	end do
	print *,st%last
	end
        recursive subroutine test3
	type TAG
	  sequence
	  integer  a(1000)
	  integer  b(1000)
	  integer  c(1000)
	  integer  c1(1)
	  integer last
	end type
	type(TAG)st 
	call init(st)
	do i=1000,1,-1
	  st%c1(1) = st%a(i)
	  st%c1(1) = st%c1(1) + st%b(500)
	  st%c1(1) = st%c1(1) + st%c(i)
	  st%last = st%c1(1)
	end do
	print *,st%last
	end
        subroutine test4
	type TAG
	  sequence
	  integer::  a(1000)
	  integer::  b(1000)
	  integer::  c(1000)
	  integer::  c1(1)
	  integer last
	end type
	type(TAG)st,dummy
	pointer(base,st)
	base = loc(dummy)
	call init(st)
	do i=1000,1,-1
	  st%c1(1) = st%a(i)
	  st%c1(1) = st%c1(1) + st%b(500)
	  st%c1(1) = st%c1(1) + st%c(i)
	  st%last = st%c1(1)
	end do
	print *,st%last
	end
	subroutine init(st)
	type TAG
	  sequence
	  integer  a(1000)
	  integer  b(1000)
	  integer  c(1000)
	  integer  c1(1)
	  integer  last
	end type
	type(TAG)st 
	do i=1,1000
	  st%a(i) = i
	  st%b(i) = i
	  st%c(i) = i
	end do
	end
        call test1
        call test2
        call test3
        call test4
        end
