      module mo
      common /mo_cmn1/ mo_com1
      common /mo_cmn2/ mo_com2
      common /mo_cmn3/ mo_com3
      contains
        subroutine sub1()
	common /sub_cmn1/ sub_com1
	common /sub_cmn2/ sub_com2
	common /sub_cmn3/ sub_com3
	mo_com1=1
	mo_com2=1
	mo_com3=1
	sub_com1=1
	sub_com2=1
	sub_com3=1
	rc=fun1()
        contains
          function fun1()
	  common /fun_cmn1/ fun_com1
	  common /fun_cmn2/ fun_com2
	  common /fun_cmn3/ fun_com3
	mo_com1=2
	mo_com2=2
	mo_com3=2
	sub_fun1=2
	sub_fun2=2
	sub_fun3=2
	fun1=2
          end function
        end subroutine
      end module

      use mo
      call sub1()
      end
