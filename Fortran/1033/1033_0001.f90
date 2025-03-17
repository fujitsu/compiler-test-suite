      type z
        integer,allocatable::aa(:)
      end type

      type(z),pointer::p
      type(z)::a

      allocate(a%aa(3)) ; a%aa=(/1,2,3/)
      allocate(p)
      allocate(p%aa(5)) ; p%aa=(/11,12,13,14,15/)
      p=a
      if (any(p%aa/=(/1,2,3/))) print *,'error1'
      deallocate(a%aa)
      allocate(a%aa(10)) ; a%aa=0
      if (any(p%aa/=(/1,2,3/))) print *,'error2'
      print *,'pass'
      end
