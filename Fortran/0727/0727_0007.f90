  module derived_type_definition
    type derived_type 
      integer :: component
    end type
  end module

  module define_the_defined_operator
    use derived_type_definition
    interface operator(.eee.)
      module procedure defined_operator_1 , defined_operator_2
    end interface 

    contains 

      elemental function   defined_operator_1 (arg1)
        type(derived_type) ,intent(in ) :: arg1
        type(derived_type) :: defined_operator_1
        defined_operator_1%component = 555 + arg1%component*0
      end function  

      function   defined_operator_2 (arg1)
        type(derived_type) , &
	&  intent(in ),dimension(3,3) :: arg1
        type(derived_type) , &
	&  dimension(size(arg1,1),size(arg1,1)) :: defined_operator_2
        do i = 1,size(arg1,1)
          defined_operator_2(i,:)%component = 777 + arg1(i,i)%component*0
        enddo
      end function  

  end module

  program main
    use define_the_defined_operator

    type(derived_type) ,dimension(3)   :: var1_1,var1_2
    type(derived_type) ,dimension(3,3) :: var2_1,var2_2,var2_3

    integer :: error = 0
    var1_1=derived_type(1)
    var1_2=derived_type(1)
    var2_1=derived_type(1)
    var2_2=derived_type(1)
    var2_3=derived_type(1)

    var1_1 = .eee.var1_1
    if (any((/var1_1%component /= 555/))) write(6,*) "NG"
    var2_1 = .eee.var2_1
    if (any((/var2_1%component /= 777/))) write(6,*) "NG"
  print *,"pass"
  end
