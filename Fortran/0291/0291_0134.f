	module string
	type STRINGS
	  integer              ::length
	  character,dimension(:),pointer::c
	end type
	interface operator(+)
	  module procedure append
	end interface
	interface assignment(=)
	  module procedure copy_string
	  module procedure char_to_string
	end interface
	interface prt
	  module procedure print_string
	end interface
	interface index
	  module procedure index1
	  module procedure index2
	end interface
	contains
	  type(STRINGS) function append(a,b) result(res)
	  type(STRINGS),intent(in)::a,b
	  integer length
	  length = a%length + b%length
	  allocate(res%c(length))
	  res%c(1:a%length) = a%c
	  res%c(a%length+1:) = b%c
	  res%length = length
	  end function
!
	  subroutine copy_string(a,b)
	  type(STRINGS),intent(out)::a
	  type(STRINGS),intent(in)::b
	  if(loc(a%length).ne.loc(b%length).and.associated(a%c)) then
	    deallocate(a%c)
	  endif
	  allocate(a%c(b%length))
	  a%c      = b%c
	  a%length = b%length
	  end subroutine
!
	  subroutine char_to_string(a,b)
	  type(STRINGS),intent(out)::a
	  character*(*),intent(in)::b
	  allocate(a%c(len(b)))
	  a%length = len(b)
	  do i=1,len(b)
	    a%c(i) = b(i:i)
          end do
	  end subroutine
!
	  subroutine print_string(a)
	  type(STRINGS),intent(in)::a
	  print *,a%c(1:a%length)
	  end subroutine
!
	  integer function index1(this,c,pos) result(res)
	  type(STRINGS),intent(in)::this
	  character*(1),intent(in)::c
	  integer,optional,intent(in)::pos
	  if( present(pos) ) then
	    ipos = pos
	  else
	    ipos = 1
	  endif
	  do i=ipos,this%length
	    if( this%c(i) == c ) then
	      res = i
	      return
	    endif
	  end do
	  res = 0
	  return
	  end function
!
	  integer function index2(this,ic,pos) result(res)
	  type(STRINGS),intent(in)::this
	  integer,intent(in)::ic
	  integer,optional,intent(in)::pos
	  res = index1(this,char(ic),pos)
	  end function
!
	end module
	use string
	type (STRINGS) a,b,c
	nullify(c%c)
	a='ABC'
	b='DCF'
        c=''
	c=a+b
	call print_string(c)
	print *,c%c(1:c%length)
	if( index(c,'C')    /= 3        ) print *,' ERROR 2 '
	if( index(c,'C',4)  /= 5        ) print *,' ERROR 3 '
	print *,' PASS '
	end
