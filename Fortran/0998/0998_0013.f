      call ss1
      call ss2
      call ss3
      print *,' +++ error test ng +++'
      end
      subroutine ss1
      pointer i
      pointer (address,i_temp)
      type aa
        integer j
        integer,pointer :: i
      end type
      type (aa) :: str
      allocate(i)
      print *,loc(i)  
      print *,loc(i_tmp)  
      print *,loc(str)
      print *,loc(str%i)
      end
      module mm1
      contains
        subroutine module_sub_pud
        entry module_sub_sed
        end subroutine
      end
      subroutine ss2
      use mm1
      call internal_sub_pud
      print *,loc(mm1)
      print *,loc(module_sub_pud)
      print *,loc(module_sub_sed)
      print *,loc(internal_sub_pud)
      contains
        subroutine internal_sub_pud
        end subroutine
      end
      module mm2
      contains
        function module_func_pud()
        module_func_pud = 1.0
        return
        entry module_func_sed()
        module_func_sed = 2.0
        end function
      end
      subroutine ss3
      use mm2
      print *,internal_func_pud()
      print *,loc(mm2)
      print *,loc(module_func_pud)
      print *,loc(module_func_sed)
      print *,loc(internal_func_pud)
      contains
        function internal_func_pud()
        internal_func_pud = 3.0
        end function
      end
