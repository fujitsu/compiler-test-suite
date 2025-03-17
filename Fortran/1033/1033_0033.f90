      type z
       sequence
        integer,allocatable::aa(:)
      end type
      type y
       sequence
        type(z),pointer::p
        type(z),pointer::q
      end type
      type x
        type(z)::a
      end type
      type(y)::yy
      type(x)::xx

      allocate(yy%p)
      allocate(yy%p%aa(4)) ; yy%p%aa=(/21,22,23,24/)
      yy%q=>yy%p
      if (any(yy%p%aa/=(/21,22,23,24/))) print *,'error 1'

      allocate(xx%a%aa(2)) ; xx%a%aa=(/11,12/)
      yy%p=xx%a
      deallocate(xx%a%aa)
      xx%a=z((/0,0/))

      if (any(yy%p%aa/=(/11,12/))) print *,'error 2'
      if (any(yy%q%aa/=(/11,12/))) print *,'error 3'
      print *,'pass'
      end
