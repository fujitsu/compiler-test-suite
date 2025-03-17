      type z
        integer,allocatable,dimension(:) :: za
      end type
      type y
        type(z),pointer::yp
      end type
      type(y) :: a,b
      type(z),pointer::yp
      allocate(a%yp,b%yp)
      allocate(b%yp%za(1))
      allocate(a%yp%za(1))
      a%yp%za(1)=10
      b%yp%za(1)=20
      yp=>a%yp
      a%yp=b%yp
      write(1,*) 1,2
      write(1,*) 3,4
      if (yp%za(1)/=20)print *,'error-1'
      if (a%yp%za(1)/=20)print *,'error-2'
      if (b%yp%za(1)/=20)print *,'error-3'
      print *,'pass'
      end
