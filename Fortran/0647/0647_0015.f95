  module derived_type_definition
    type derived_type 
      integer :: component
    end type
  end module

  module define_the_defined_assignment
    use derived_type_definition
    interface assignment(=)
      module procedure defined_assignment_1 , defined_assignment_2
    end interface 

    contains 

      elemental subroutine defined_assignment_1 (arg1,arg2)
        type(derived_type) ,intent(out) :: arg1
        type(derived_type) ,intent(in)  :: arg2
        arg1%component = 555 + arg2%component*0
      end subroutine

      subroutine defined_assignment_2 (arg1,arg2)
        type(derived_type) ,intent(in) ,dimension(:)    :: arg2
        type(derived_type) , &
	&  intent(out),dimension(size(arg2),size(arg2)) :: arg1
        do i = 1,size(arg2)
          arg1(i,:)%component = 777 + arg2%component*0
        enddo
      end subroutine

  end module

  program main
    use define_the_defined_assignment

    type(derived_type) ,dimension(3)   :: var1_1,var1_2
    type(derived_type) ,dimension(3,3) :: var2_1,var2_2,var2_3

    integer :: error = 0

    var1_1 = derived_type(111)
    if (any((/var1_1%component /= 555/))) then
      print *, " +++ error : item 1 +++ "
      error = error +1
    endif
    var2_1 = derived_type(111)
    if (any((/var2_1%component /= 555/))) then
      print *, " +++ error : item 1 +++ "
      error = error +1
    endif

    var1_1%component = 111
    if (any((/var1_1%component /= 111/))) then
      print *, " +++ error : item 2 +++ "
      error = error +1
    endif
    var2_1%component = 111
    if (any((/var2_1%component /= 111/))) then
      print *, " +++ error : item 2 +++ "
      error = error +1
    endif

    var1_2 = var1_1
    if (any((/var1_2%component /= 555/))) then
      print *, " +++ error : item 3 +++ "
      error = error +1
    endif
    var2_2 = var2_1
    if (any((/var2_2%component /= 555/))) then
      print *, " +++ error : item 3 +++ "
      error = error +1
    endif

    var2_3 = var1_1
    if (any((/var2_3%component /= 777/))) then
      print *, " +++ error : item 4 +++ "
      error = error +1
    endif

    if (error == 0) then
      print *," *** pass *** "
    endif

  end program main
