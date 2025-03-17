      type z
        integer,allocatable,dimension(:) :: za
      end type
      type y
        type(z),pointer::yp(:)
      end type
      type(y) :: a,b
      allocate(a%yp(1),b%yp(1))
      allocate(b%yp(1)%za(1))
      a%yp=b%yp
      if (loc(a%yp(1)%za).eq.loc(b%yp(1)%za)) then
        print *,'*** NG ***'
      else
        print *,'pass'
      endif
      end
