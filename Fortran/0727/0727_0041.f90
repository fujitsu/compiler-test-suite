    type default_initialized
      integer :: comp1 = 5
    end type default_initialized
    type(default_initialized),dimension(10)::arg

    arg = default_initialized(1)
    call assumed_shape_array_has_default_initialized_value(arg)

    print *,'pass'
 contains
  subroutine assumed_shape_array_has_default_initialized_value(arg)
    type(default_initialized),intent(out),dimension(:) :: arg
  end subroutine assumed_shape_array_has_default_initialized_value
end
