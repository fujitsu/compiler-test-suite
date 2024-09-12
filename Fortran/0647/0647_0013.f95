  module define_the_pure_function
    implicit none

    contains

      pure integer function module_fun_1()
        module_fun_1 = 555
      end function

      elemental integer function module_fun_2()
        module_fun_2 = 555
      end function

      pure integer function module_fun_3(arg1)
        integer,intent(in) :: arg1
        module_fun_3 = 555 + arg1*0
      end function

      elemental integer function module_fun_4(arg1)
        integer,intent(in) :: arg1
        module_fun_4 = 555 + arg1*0
      end function

  end module

  program main

    integer :: error = 0

    call specification_expression_check1(error)
    call specification_expression_check2(error)
    call specification_expression_check3(error)

    if (error == 0) then
      print *," *** pass *** "
    endif

  end program main

  subroutine specification_expression_check1(error)

    use define_the_pure_function
    integer :: error

    character(len=module_fun_1( )) :: var1
    character(len=module_fun_2( )) :: var2
    character(len=module_fun_3(1)) :: var3
    character(len=module_fun_4(1)) :: var4

    integer,dimension(module_fun_1( )) :: var5
    integer,dimension(module_fun_2( )) :: var6
    integer,dimension(module_fun_3(1)) :: var7
    integer,dimension(module_fun_4(1)) :: var8

    if (any((/ len(var1) /= 555       , len(var1) /= len(var2) , &
 	&      len(var2) /= len(var3) , len(var3) /= len(var4)/))) then
      print *, " +++ error : item 1 +++ "
      error = error +1 ;
    endif

    if (any((/size(var5) /= 555       ,size(var5) /=size(var6) , &
	&     size(var6) /=size(var7) ,size(var7) /=size(var8)/))) then
      print *, " +++ error : item 2 +++ "
      error = error +1 ;
    endif

  end subroutine 

  subroutine specification_expression_check2(error)

    integer :: error

    interface
      pure integer function external_fun_1()
      end function

      elemental integer function external_fun_2()
      end function

      pure integer function external_fun_3(arg1)
        integer,intent(in) :: arg1
      end function

      elemental integer function external_fun_4(arg1)
        integer,intent(in) :: arg1
      end function
    end interface

    character(len=external_fun_1( )) :: var1
    character(len=external_fun_2( )) :: var2
    character(len=external_fun_3(1)) :: var3
    character(len=external_fun_4(1)) :: var4

    integer,dimension(external_fun_1( )) :: var5
    integer,dimension(external_fun_2( )) :: var6
    integer,dimension(external_fun_3(1)) :: var7
    integer,dimension(external_fun_4(1)) :: var8

    if (any((/ len(var1) /= 555       , len(var1) /= len(var2) , &
 	&      len(var2) /= len(var3) , len(var3) /= len(var4)/))) then
      print *, " +++ error : item 3 +++ "
      error = error +1 ;
    endif

    if (any((/size(var5) /= 555       ,size(var5) /=size(var6) , &
	&     size(var6) /=size(var7) ,size(var7) /=size(var8)/))) then
      print *, " +++ error : item 4 +++ "
      error = error +1 ;
    endif

  end subroutine 

  subroutine specification_expression_check3(error)

    use define_the_pure_function

    integer :: error

    interface
      pure integer function external_fun_1()
      end function

      elemental integer function external_fun_2()
      end function

      pure integer function external_fun_3(arg1)
        integer,intent(in) :: arg1
      end function

      elemental integer function external_fun_4(arg1)
        integer,intent(in) :: arg1
      end function
    end interface

    call specification_expression_check_2_1(error,module_fun_1)
    call specification_expression_check_2_3(error,module_fun_3)
    call specification_expression_check_2_1(error,external_fun_1)
    call specification_expression_check_2_3(error,external_fun_3)

    contains

      subroutine specification_expression_check_2_1(error,dummy_proc)
        integer :: error
        interface 
          pure integer function dummy_proc()
          end function
        end interface

        character(len=dummy_proc( )) :: var1
        integer,dimension(dummy_proc( )) :: var5

        if (any((/ len(var1) /= 555 , len(var1) /= size(var5) /))) then
          print *, " +++ error : item 5 +++ "
          error = error +1 ;
        endif
      end subroutine

      subroutine specification_expression_check_2_2(error,dummy_proc)
        integer :: error
        interface 
          elemental integer function dummy_proc()
          end function
        end interface

        character(len=dummy_proc( )) :: var1
        integer,dimension(dummy_proc( )) :: var5

        if (any((/ len(var1) /= 555 , len(var1) /= size(var5) /))) then
          print *, " +++ error : item 6 +++ "
          error = error +1 ;
        endif
      end subroutine

      subroutine specification_expression_check_2_3(error,dummy_proc)
        integer :: error
        interface 
          pure integer function dummy_proc(arg1)
            integer ,intent(in) :: arg1
          end function
        end interface

        character(len=dummy_proc(1)) :: var1
        integer,dimension(dummy_proc(1)) :: var5

        if (any((/ len(var1) /= 555 , len(var1) /= size(var5) /))) then
          print *, " +++ error : item 7 +++ "
          error = error +1 ;
        endif
      end subroutine

      subroutine specification_expression_check_2_4(error,dummy_proc)
        integer :: error
        interface 
          pure integer function dummy_proc(arg1)
            integer ,intent(in) :: arg1
          end function
        end interface

        character(len=dummy_proc(1)) :: var1
        integer,dimension(dummy_proc(1)) :: var5

        if (any((/ len(var1) /= 555 , len(var1) /= size(var5) /))) then
          print *, " +++ error : item 8 +++ "
          error = error +1 ;
        endif
      end subroutine

  end subroutine 

  pure integer function external_fun_1()
    external_fun_1 = 555
  end function

  elemental integer function external_fun_2()
    external_fun_2 = 555
  end function

  pure integer function external_fun_3(arg1)
    integer,intent(in) :: arg1
    external_fun_3 = 555 + arg1*0
  end function

  elemental integer function external_fun_4(arg1)
    integer,intent(in) :: arg1
    external_fun_4 = 555 + arg1*0
  end function
