  module type_define
    private
    public :: default_initialized
    type default_initialized
      integer :: comp1 = 5
    end type default_initialized
  end module type_define

    use type_define
    type(default_initialized),dimension(10)::arg

    integer :: error = 0

    interface 
      subroutine assumed_shape_array_has_default_initialized_value(arg)
        use type_define
        type(default_initialized),intent(out),dimension(:) :: arg
      end subroutine assumed_shape_array_has_default_initialized_value
    end interface

    arg = default_initialized(99)
    call assumed_shape_array_has_default_initialized_value(arg)

    if (.not.all(arg%comp1 == 5)) then
      print *, " +++ : error : item 1 +++ ",arg
      write(6,*) "NG"
      error = error + 1
    end if

    if (error == 0) then
      print *,'pass'
    endif
    
  end 

  subroutine assumed_shape_array_has_default_initialized_value(arg)
    use type_define
    type(default_initialized),intent(out),dimension(:) :: arg
  end subroutine assumed_shape_array_has_default_initialized_value
