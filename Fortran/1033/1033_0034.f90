      type z
        integer,allocatable::za(:)
      end type
      type x
        type(z),pointer::xx1
        type(z)        ::xx2
      end type
      type(x),pointer::a1
      type(x),pointer::a2

      allocate(a1,a2)
      allocate(a1%xx1,a2%xx1)
      allocate(a2%xx1%za(5)) ; a2%xx1%za=(/11,12,13,14,15/)
      allocate(a2%xx2%za(5)) ; a2%xx2%za=(/21,22,23,24,25/)
      a1=a2
      deallocate(a2%xx2%za)

      if (.not.associated(a1%xx1)) print *,'error 0'
      if (.not.allocated(a1%xx1%za)) print *,'error 1'
      if (any(a1%xx1%za/=(/11,12,13,14,15/))) print *,'error 2'
      if (any(a1%xx2%za/=(/21,22,23,24,25/))) print *,'error 3'
      print *,'pass'
      end
