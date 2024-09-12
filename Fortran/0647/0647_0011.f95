  module declare_interface_block

    interface generic_subroutine_1
      module procedure msub1,msub2
    end interface generic_subroutine_1
    interface generic_subroutine_2
      module procedure msub2,msub3
    end interface generic_subroutine_2
    interface generic_subroutine_3
      module procedure msub3,msub4
    end interface generic_subroutine_3
    interface generic_subroutine_4
      module procedure msub4,msub5
    end interface generic_subroutine_4

    private msub1,msub2,msub3,msub4,msub5,mfun1,mfun2,mfun3,mfun4,mfun5

    interface generic_function_1
      module procedure mfun1,mfun2
    end interface generic_function_1
    interface generic_function_2
      module procedure mfun2,mfun3
    end interface generic_function_2
    interface generic_function_3
      module procedure mfun3,mfun4
    end interface generic_function_3
    interface generic_function_4
      module procedure mfun4,mfun5
    end interface generic_function_4

    contains

      subroutine msub1(ptr,res)
        real,pointer :: ptr
        integer res ; res = 1
      end subroutine

      subroutine msub2(ptr,res)
        integer,pointer :: ptr
        integer res ; res = 2
      end subroutine

      subroutine msub3(ptr,res)
        integer(kind=8),pointer :: ptr
        integer res ; res = 3
      end subroutine

      subroutine msub4(ptr,res)
        integer(kind=8),pointer :: ptr(:)
        integer res ; res = 4
      end subroutine

      subroutine msub5(ptr,res)
        integer(kind=8),pointer :: ptr(:,:)
        integer res ; res = 5
      end subroutine

      function mfun1(ptr)
        real,pointer :: ptr
        integer mfun1 ; mfun1 = 1
      end function

      function mfun2(ptr)
        integer,pointer :: ptr
        integer mfun2 ; mfun2 = 2
      end function

      function mfun3(ptr)
        integer(kind=8),pointer :: ptr
        integer mfun3 ; mfun3 = 3
      end function

      function mfun4(ptr)
        integer(kind=8),pointer :: ptr(:)
        integer mfun4 ; mfun4 = 4
      end function

      function mfun5(ptr)
        integer(kind=8),pointer :: ptr(:,:)
        integer mfun5 ; mfun5 = 5
      end function
  end module

  program main

    use declare_interface_block

    implicit none
    real,pointer :: var_real
    integer,pointer :: var_integer
    integer(kind=8),pointer :: var_integer8
    integer(kind=8),pointer,dimension(:) :: var_integer8_dim1
    integer(kind=8),pointer,dimension(:,:) :: var_integer8_dim2

    integer :: result
    integer :: error = 0

    call generic_subroutine_1(var_real,result) 
    if (result /= 1) then 
      print *, " +++ error : item 1 +++ "
      error = error +1 ;
    end if
    call generic_subroutine_1(var_integer,result) 
    if (result /= 2) then 
      print *, " +++ error : item 1 +++ "
      error = error +1 ;
    end if
    call generic_subroutine_2(var_integer,result)  
    if (result /= 2) then 
      print *, " +++ error : item 1 +++ "
      error = error +1 ;
    end if
    call generic_subroutine_2(var_integer8,result)  
    if (result /= 3) then 
      print *, " +++ error : item 1 +++ "
      error = error +1 ;
    end if
    call generic_subroutine_3(var_integer8,result)  
    if (result /= 3) then 
      print *, " +++ error : item 1 +++ "
      error = error +1 ;
    end if
    call generic_subroutine_3(var_integer8_dim1,result)  
    if (result /= 4) then 
      print *, " +++ error : item 1 +++ "
      error = error +1 ;
    end if
    call generic_subroutine_4(var_integer8_dim1,result)  
    if (result /= 4) then 
      print *, " +++ error : item 1 +++ "
      error = error +1 ;
    end if
    call generic_subroutine_4(var_integer8_dim2,result)  
    if (result /= 5) then 
      print *, " +++ error : item 1 +++ "
      error = error +1 ;
    end if

    call generic_subroutine_1(NULL(var_real),result) 
    if (result /= 1) then 
      print *, " +++ error : item 2 +++ "
      error = error +1 ;
    end if
    call generic_subroutine_1(NULL(var_integer),result) 
    if (result /= 2) then 
      print *, " +++ error : item 2 +++ "
      error = error +1 ;
    end if
    call generic_subroutine_2(NULL(var_integer),result)  
    if (result /= 2) then 
      print *, " +++ error : item 2 +++ "
      error = error +1 ;
    end if
    call generic_subroutine_2(NULL(var_integer8),result)  
    if (result /= 3) then 
      print *, " +++ error : item 2 +++ "
      error = error +1 ;
    end if
    call generic_subroutine_3(NULL(var_integer8),result)  
    if (result /= 3) then 
      print *, " +++ error : item 2 +++ "
      error = error +1 ;
    end if
    call generic_subroutine_3(NULL(var_integer8_dim1),result)  
    if (result /= 4) then 
      print *, " +++ error : item 2 +++ "
      error = error +1 ;
    end if
    call generic_subroutine_4(NULL(var_integer8_dim1),result)  
    if (result /= 4) then 
      print *, " +++ error : item 2 +++ "
      error = error +1 ;
    end if
    call generic_subroutine_4(NULL(var_integer8_dim2),result)  
    if (result /= 5) then 
      print *, " +++ error : item 2 +++ "
      error = error +1 ;
    end if

    result = generic_function_1(var_real) 
    if (result /= 1) then 
      print *, " +++ error : item 3 +++ "
      error = error +1 ;
    end if
    result = generic_function_1(var_integer) 
    if (result /= 2) then 
      print *, " +++ error : item 3 +++ "
      error = error +1 ;
    end if
    result = generic_function_2(var_integer)  
    if (result /= 2) then 
      print *, " +++ error : item 3 +++ "
      error = error +1 ;
    end if
    result = generic_function_2(var_integer8)  
    if (result /= 3) then 
      print *, " +++ error : item 3 +++ "
      error = error +1 ;
    end if
    result = generic_function_3(var_integer8)  
    if (result /= 3) then 
      print *, " +++ error : item 3 +++ "
      error = error +1 ;
    end if
    result = generic_function_3(var_integer8_dim1)  
    if (result /= 4) then 
      print *, " +++ error : item 3 +++ "
      error = error +1 ;
    end if
    result = generic_function_4(var_integer8_dim1)  
    if (result /= 4) then 
      print *, " +++ error : item 3 +++ "
      error = error +1 ;
    end if
    result = generic_function_4(var_integer8_dim2)  
    if (result /= 5) then 
      print *, " +++ error : item 3 +++ "
      error = error +1 ;
    end if

    result = generic_function_1(NULL(var_real))
    if (result /= 1) then 
      print *, " +++ error : item 4 +++ "
      error = error +1 ;
    end if
    result = generic_function_1(NULL(var_integer))
    if (result /= 2) then 
      print *, " +++ error : item 4 +++ "
      error = error +1 ;
    end if
    result = generic_function_2(NULL(var_integer))
    if (result /= 2) then 
      print *, " +++ error : item 4 +++ "
      error = error +1 ;
    end if
    result = generic_function_2(NULL(var_integer8))
    if (result /= 3) then 
      print *, " +++ error : item 4 +++ "
      error = error +1 ;
    end if
    result = generic_function_3(NULL(var_integer8))
    if (result /= 3) then 
      print *, " +++ error : item 4 +++ "
      error = error +1 ;
    end if
    result = generic_function_3(NULL(var_integer8_dim1))
    if (result /= 4) then 
      print *, " +++ error : item 4 +++ "
      error = error +1 ;
    end if
    result = generic_function_4(NULL(var_integer8_dim1)) 
    if (result /= 4) then 
      print *, " +++ error : item 4 +++ "
      error = error +1 ;
    end if
    result = generic_function_4(NULL(var_integer8_dim2)) 
    if (result /= 5) then 
      print *, " +++ error : item 4 +++ "
      error = error +1 ;
    end if

    if (error == 0) then
      print *," *** pass *** "
    endif

  end program main
