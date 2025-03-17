      type z
        integer,allocatable,dimension(:) :: za
      end type
      type y
        type(z),pointer::yp
      end type
      type(y) :: a,b
      allocate(a%yp,b%yp)
      allocate(b%yp%za(1))
      a%yp=b%yp
      if (loc(a%yp%za).eq.loc(b%yp%za)) then
        print *,'*** NG ***'
      else
        print *,'pass'
      endif
      end
