  module using_null_for_initialization_and_constant_which_is_component_of&
        &_the_derived_type

    type composed_pointer_which_is_scalar_and_not_have_default_initialization
      integer , pointer :: comp
    end type &
       & composed_pointer_which_is_scalar_and_not_have_default_initialization

    type composed_pointer_which_is_scalar_and_has_default_initialization
      integer , pointer :: comp => NULL()
    end type composed_pointer_which_is_scalar_and_has_default_initialization

    type composed_pointer_which_is_array_and_not_have_default_initialization
      integer , pointer , dimension(:) :: comp
    end type composed_pointer_which_is_array_and_&
                &not_have_default_initialization

    type composed_pointer_which_is_array_and_has_default_initialization
      integer , pointer , dimension(:) :: comp => null()
    end type composed_pointer_which_is_array_and_has_default_initialization

    type(composed_pointer_which_is_scalar_and_not_have_default_initialization)&
        & , parameter :: &
        & scalar_constant_has_scalar_pointer_not_have_default_initialization =&
        &composed_pointer_which_is_scalar_and_not_have_default_initialization&
        &(null())
    type(composed_pointer_which_is_scalar_and_has_default_initialization) &
	& , parameter :: &
	& scalar_constant_has_scalar_pointer_has_default_initialization = &
	& composed_pointer_which_is_scalar_and_has_default_initialization &
	& (null())
    type(composed_pointer_which_is_array_and_not_have_default_initialization)&
	& , parameter :: &
	& scalar_constant_has_array_pointer_not_have_default_initialization = &
	& composed_pointer_which_is_array_and_not_have_default_initialization &
	& (null())
    type(composed_pointer_which_is_array_and_has_default_initialization) &
	& , parameter :: &
	& scalar_constant_has_array_pointer_has_default_initialization = &
	& composed_pointer_which_is_array_and_has_default_initialization &
	& (null())
    type(composed_pointer_which_is_scalar_and_not_have_default_initialization)&
        & , parameter,dimension(3) :: &
        & array_constant_has_scalar_pointer_not_have_default_initialization =&
        &composed_pointer_which_is_scalar_and_not_have_default_initialization&
        &(null())
    type(composed_pointer_which_is_scalar_and_has_default_initialization) &
	& , parameter,dimension(3) :: &
	& array_constant_has_scalar_pointer_has_default_initialization = &
	& composed_pointer_which_is_scalar_and_has_default_initialization &
	& (null())
    type(composed_pointer_which_is_array_and_not_have_default_initialization)&
	& , parameter,dimension(3) :: &
	& array_constant_has_array_pointer_not_have_default_initialization = &
	& composed_pointer_which_is_array_and_not_have_default_initialization &
	& (null())
    type(composed_pointer_which_is_array_and_has_default_initialization) &
	& , parameter,dimension(3) :: &
	& array_constant_has_array_pointer_has_default_initialization = &
	& composed_pointer_which_is_array_and_has_default_initialization &
	& (null())

    type(composed_pointer_which_is_scalar_and_not_have_default_initialization)&
        & ,save :: &
        & scalar_initialized_variable_has_scalar_pointer_&
			        &not_have_default_initialization =&
        &composed_pointer_which_is_scalar_and_not_have_default_initialization&
        &(null())
    type(composed_pointer_which_is_scalar_and_has_default_initialization) &
	& ,save :: &
	& scalar_initialized_variable_has_scalar_pointer_&
				&has_default_initialization = &
	& composed_pointer_which_is_scalar_and_has_default_initialization &
	& (null())
    type(composed_pointer_which_is_array_and_not_have_default_initialization)&
	& ,save :: &
	& scalar_initialized_variable_has_array_pointer_&
				&not_have_default_initialization = &
	& composed_pointer_which_is_array_and_not_have_default_initialization &
	& (null())
    type(composed_pointer_which_is_array_and_has_default_initialization) &
	& ,save :: &
	& scalar_initialized_variable_has_array_pointer_&
				&has_default_initialization = &
	& composed_pointer_which_is_array_and_has_default_initialization &
	& (null())
    type(composed_pointer_which_is_scalar_and_not_have_default_initialization)&
        & ,save , dimension(3) :: &
        & array_initialized_variable_has_scalar_pointer_&
				&not_have_default_initialization =&
        &composed_pointer_which_is_scalar_and_not_have_default_initialization&
        &(null())
    type(composed_pointer_which_is_scalar_and_has_default_initialization) &
	& ,save , dimension(3) :: &
	& array_initialized_variable_has_scalar_pointer_&
				&has_default_initialization = &
	& composed_pointer_which_is_scalar_and_has_default_initialization &
	& (null())
    type(composed_pointer_which_is_array_and_not_have_default_initialization)&
	& ,save , dimension(3) :: &
	& array_initialized_variable_has_array_pointer_&
				&not_have_default_initialization = &
	& composed_pointer_which_is_array_and_not_have_default_initialization &
	& (null())
    type(composed_pointer_which_is_array_and_has_default_initialization) &
	& ,save , dimension(3) :: &
	& array_initialized_variable_has_array_pointer_&
				&has_default_initialization = &
	& composed_pointer_which_is_array_and_has_default_initialization &
	& (null())

    type(composed_pointer_which_is_scalar_and_has_default_initialization) &
	& ,save :: &
	& scalar_default_initialized_variable_has_scalar_pointer_&
				&has_default_initialization
    type(composed_pointer_which_is_array_and_has_default_initialization) &
	& ,save :: &
	& scalar_default_initialized_variable_has_array_pointer_&
				&has_default_initialization
    type(composed_pointer_which_is_scalar_and_has_default_initialization) &
	& ,save , dimension(3) :: &
	& array_default_initialized_variable_has_scalar_pointer_&
				&has_default_initialization
    type(composed_pointer_which_is_array_and_has_default_initialization) &
	& ,save , dimension(3) :: &
	& array_default_initialized_variable_has_array_pointer_&
				&has_default_initialization

  end module using_null_for_initialization_and_constant_which_is_component_of&
            &_the_derived_type

  program main

    use using_null_for_initialization_and_constant_which_is_component_of&
    &_the_derived_type &
    &,sc1=> scalar_constant_has_scalar_pointer_not_have_default_initialization&
    &,sc2=> scalar_constant_has_scalar_pointer_has_default_initialization&
    &,sc3=> scalar_constant_has_array_pointer_not_have_default_initialization&
    &,sc4=> scalar_constant_has_array_pointer_has_default_initialization&
    &,ac1=> array_constant_has_scalar_pointer_not_have_default_initialization&
    &,ac2=> array_constant_has_scalar_pointer_has_default_initialization&
    &,ac3=> array_constant_has_array_pointer_not_have_default_initialization&
    &,ac4=> array_constant_has_array_pointer_has_default_initialization&
    &,si1=> scalar_initialized_variable_has_&
		&scalar_pointer_not_have_default_initialization&
    &,si2=> scalar_initialized_variable_has_&
		&scalar_pointer_has_default_initialization&
    &,si3=> scalar_initialized_variable_has_&
		&array_pointer_not_have_default_initialization&
    &,si4=> scalar_initialized_variable_has_&
		&array_pointer_has_default_initialization&
    &,ai1=> array_initialized_variable_has_&
		&scalar_pointer_not_have_default_initialization&
    &,ai2=> array_initialized_variable_has_&
		&scalar_pointer_has_default_initialization&
    &,ai3=> array_initialized_variable_has_&
		&array_pointer_not_have_default_initialization&
    &,ai4=> array_initialized_variable_has_&
		&array_pointer_has_default_initialization&
    &,sdi1=> scalar_default_initialized_variable_has_&
		&scalar_pointer_has_default_initialization&
    &,sdi2=> scalar_default_initialized_variable_has_&
		&array_pointer_has_default_initialization&
    &,adi1=> array_default_initialized_variable_has_&
		&scalar_pointer_has_default_initialization&
    &,adi2=> array_default_initialized_variable_has_&
		&array_pointer_has_default_initialization

    integer :: error = 0

    if (associated(sc1%comp)) then
      print *, " +++ error : item 1 +++ "
      error = error + 1
    end if

    if (associated(sc2%comp)) then
      print *, " +++ error : item 1 +++ "
      error = error + 1
    end if

    if (associated(sc3%comp)) then
      print *, " +++ error : item 1 +++ "
      error = error + 1
    end if

    if (associated(sc4%comp)) then
      print *, " +++ error : item 1 +++ "
      error = error + 1
    end if

    if (any((/associated(ac1(1)%comp),associated(ac1(2)%comp),&
	&     associated(ac1(3)%comp)/))) then
      print *, " +++ error : item 2 +++ "
      error = error + 1
    end if

    if (any((/associated(ac2(1)%comp),associated(ac2(2)%comp),&
	&     associated(ac2(3)%comp)/))) then
      print *, " +++ error : item 2 +++ "
      error = error + 1
    end if

    if (any((/associated(ac3(1)%comp),associated(ac3(2)%comp),&
	&     associated(ac3(3)%comp)/))) then
      print *, " +++ error : item 2 +++ "
      error = error + 1
    end if

    if (any((/associated(ac4(1)%comp),associated(ac4(2)%comp),&
	&     associated(ac4(3)%comp)/))) then
      print *, " +++ error : item 2 +++ "
      error = error + 1
    end if

    if (associated(si1%comp)) then
      print *, " +++ error : item 3 +++ "
      error = error + 1
    end if

    if (associated(si2%comp)) then
      print *, " +++ error : item 3 +++ "
      error = error + 1
    end if

    if (associated(si3%comp)) then
      print *, " +++ error : item 3 +++ "
      error = error + 1
    end if

    if (associated(si4%comp)) then
      print *, " +++ error : item 3 +++ "
      error = error + 1
    end if

    if (any((/associated(ai1(1)%comp),associated(ai1(2)%comp),&
	&     associated(ai1(3)%comp)/))) then
      print *, " +++ error : item 4 +++ "
      error = error + 1
    end if

    if (any((/associated(ai2(1)%comp),associated(ai2(2)%comp),&
	&     associated(ai2(3)%comp)/))) then
      print *, " +++ error : item 4 +++ "
      error = error + 1
    end if

    if (any((/associated(ai3(1)%comp),associated(ai3(2)%comp),&
	&     associated(ai3(3)%comp)/))) then
      print *, " +++ error : item 4 +++ "
      error = error + 1
    end if

    if (any((/associated(ai4(1)%comp),associated(ai4(2)%comp),&
	&     associated(ai4(3)%comp)/))) then
      print *, " +++ error : item 4 +++ "
      error = error + 1
    end if

    if (associated(sdi1%comp)) then
      print *, " +++ error : item 5 +++ "
      error = error + 1
    end if

    if (associated(sdi2%comp)) then
      print *, " +++ error : item 5 +++ "
      error = error + 1
    end if

    if (any((/associated(adi1(1)%comp),associated(adi1(2)%comp),&
	&     associated(adi1(3)%comp)/))) then
      print *, " +++ error : item 6 +++ "
      error = error + 1
    end if

    if (any((/associated(adi2(1)%comp),associated(adi2(2)%comp),&
	&     associated(adi2(3)%comp)/))) then
      print *, " +++ error : item 6 +++ "
      error = error + 1
    end if

    if (error == 0) then
      print *," *** pass *** "
    endif

  end program main
