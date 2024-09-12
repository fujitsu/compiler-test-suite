implicit none
 integer, pointer:: pp
 integer         :: ret
 allocate(pp)

 pp = 0

 call sub01(pp)
 if (pp == 5) then
   print *,"pass01"
 else
   print *,"ng01",pp
 end if

 pp = 0

 ret = fun01(pp)
 if (pp == 5 .and. ret == 5) then
   print *,"pass02"
 else
   print *,"ng02",pp,ret
 end if

contains 
  subroutine sub01(p)
    integer, pointer,intent(in) :: p
    p = p + 1
    call sub02(p)
  end subroutine
  subroutine sub02(p)
    integer, pointer,intent(in) :: p
    p = p + 1
    call sub03(p)
  end subroutine
  subroutine sub03(p)
    integer, pointer,intent(in) :: p
    p = p + 1
    call sub04(p)
  end subroutine
  subroutine sub04(p)
    integer, pointer,intent(in) :: p
    p = p + 1
    call sub05(p)
  end subroutine
  subroutine sub05(p)
    integer, pointer,intent(in) :: p
    p = p + 1
  end subroutine

  function fun01(p)
    integer :: fun01
    integer, pointer,intent(in) :: p
    p = p + 1
    fun01 = fun02(p)
  end function
  function fun02(p)
    integer :: fun02
    integer, pointer,intent(in) :: p
    p = p + 1
    fun02 = fun03(p)
  end function
  function fun03(p)
    integer :: fun03
    integer, pointer,intent(in) :: p
    p = p + 1
    fun03 = fun04(p)
  end function
  function fun04(p)
    integer :: fun04
    integer, pointer,intent(in) :: p
    p = p + 1
    fun04 = fun05(p)
  end function
  function fun05(p)
    integer :: fun05
    integer, pointer,intent(in) :: p
    p = p + 1
    fun05 = p
  end function
end
