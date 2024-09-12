  module define_the_derived_type
    type derived_type
      integer,pointer :: integer_pointer_component_of_derived_type => NULL()
      type(derived_type),pointer :: &
	&  derived_type_pointer_component_of_derived_type => NULL()
    end type
  end module define_the_derived_type

  program main
    use define_the_derived_type

    type (derived_type) :: derived_type_value

    integer,pointer :: integer_pointer => NULL()
    integer,pointer :: integer_pointer2
    integer,target  :: integer_target 

    type(derived_type),pointer :: derived_type_pointer => NULL()
    type(derived_type),pointer :: derived_type_pointer2
    type(derived_type),target  :: derived_type_target 

    integer :: error = 0

    if (associated(integer_pointer)) then
      print *, " +++ error : item 1 +++ "
      error = error +1
    endif

    integer_pointer => integer_target
    if (.not.associated(integer_pointer)) then
      print *, " +++ error : item 1 +++ "
      error = error +1
    endif

    integer_pointer => &
	& derived_type_value%integer_pointer_component_of_derived_type
    if (associated(integer_pointer)) then
      print *, " +++ error : item 1 +++ "
      error = error +1
    endif

    integer_pointer2 => NULL()
    if (associated(integer_pointer2)) then
      print *, " +++ error : item 1 +++ "
      error = error +1
    endif

    integer_pointer => integer_pointer2    
    if (associated(integer_pointer2)) then
      print *, " +++ error : item 1 +++ "
      error = error +1
    endif

    if (associated(derived_type_pointer)) then
      print *, " +++ error : item 2 +++ "
      error = error +1
    endif

    derived_type_pointer => derived_type_target
    if (.not.associated(derived_type_pointer)) then
      print *, " +++ error : item 2 +++ "
      error = error +1
    endif

    derived_type_pointer => &
	& derived_type_value%derived_type_pointer_component_of_derived_type
    if (associated(derived_type_pointer)) then
      print *, " +++ error : item 2 +++ "
      error = error +1
    endif

    derived_type_pointer2 => NULL()
    if (associated(derived_type_pointer2)) then
      print *, " +++ error : item 2 +++ "
      error = error +1
    endif

    derived_type_pointer => derived_type_pointer2    
    if (associated(derived_type_pointer2)) then
      print *, " +++ error : item 2 +++ "
      error = error +1
    endif

    call pointer_assignment_check(error)

    if (error == 0) then
      print *," *** pass *** "
    endif

  end program main

  subroutine pointer_assignment_check(error)

    use define_the_derived_type

    type (derived_type) :: derived_type_value

    integer :: error 

    integer,pointer :: integer_pointer => NULL()
    type(derived_type),pointer :: derived_type_pointer => NULL()

    if (associated(integer_pointer)) then
      print *, " +++ error : item 3 +++ "
      error = error +1
    endif

    integer_pointer => &
	& derived_type_value%integer_pointer_component_of_derived_type
    if (associated(integer_pointer)) then
      print *, " +++ error : item 3 +++ "
      error = error +1
    endif

    if (associated(derived_type_pointer)) then
      print *, " +++ error : item 4 +++ "
      error = error +1
    endif

    derived_type_pointer => &
	& derived_type_value%derived_type_pointer_component_of_derived_type
    if (associated(derived_type_pointer)) then
      print *, " +++ error : item 4 +++ "
      error = error +1
    endif

  end subroutine
