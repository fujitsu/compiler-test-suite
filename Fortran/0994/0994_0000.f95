  module define_type
    type derived_type ; integer i ; end type
  end module

  module defined_operation

    use define_type

    interface operator(.uniope.)
      module procedure uniopefun
    end interface

    interface operator(.binaope.)
      module procedure binaopefun
    end interface

    interface operator(-)
      module procedure derived_type_uni_minus
    end interface

    interface operator(+)
      module procedure derived_type_bina_plus
    end interface

    contains

    integer pure function uniopefun(arg1)
      integer , intent(IN) :: arg1
      uniopefun = 1+arg1*0
    end function

    integer pure function binaopefun(arg1,arg2)
      integer , intent(IN) :: arg1,arg2
      binaopefun = 2+arg1*arg2*0
    end function

    integer pure function derived_type_uni_minus(arg1)
      type(derived_type) , intent(IN) :: arg1
      derived_type_uni_minus = 1+arg1%i*0
    end function

    integer pure function derived_type_bina_plus(arg1,arg2)
      type(derived_type) , intent(IN) :: arg1,arg2
      derived_type_bina_plus = 1+arg1%i*0*arg2%i
    end function

  end module

  program main

    use define_type
    type(derived_type) :: vt
    call specification_function_check(vt)

  end program main

  subroutine specification_function_check(vt)

    use defined_operation
    type(derived_type) :: vt

    character(LEN=.uniope.1) :: er1
    character(LEN=1.binaope.2) :: er2
    character(LEN=-vt) :: er3
    character(LEN=vt+vt) :: er4

  end subroutine
