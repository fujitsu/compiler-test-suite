implicit none
 integer, pointer:: pp
 integer         :: ret
 allocate(pp)

 pp = 0

 call sub01(pp)
 if (pp == 1) then
   print *,"pass01"
 else
   print *,"ng01",pp
 end if
 call sub02(pp)
 if (pp == 2) then
   print *,"pass02"
 else
   print *,"ng02",pp
 end if
 call sub03(pp)
 if (pp == 3) then
   print *,"pass03"
 else
   print *,"ng03",pp
 end if
 call sub04(pp)
 if (pp == 4) then
   print *,"pass04"
 else
   print *,"ng04",pp
 end if
 call sub05(pp)
 if (pp == 1) then
   print *,"pass05"
 else
   print *,"ng05",pp
 end if

 pp = 0

 ret = fun01(pp)
 if (pp == 1 .and. ret == 0) then
   print *,"pass06"
 else
   print *,"ng06",pp,ret
 end if
 ret = fun02(pp)
 if (pp == 1 .and. ret == 0) then
   print *,"pass07"
 else
   print *,"ng07",pp,ret
 end if
 ret = fun03(pp)
 if (pp == 2 .and. ret == 1) then
   print *,"pass08"
 else
   print *,"ng08",pp,ret
 end if
 ret = fun04(pp)
 if (pp == 3 .and. ret == 2) then
   print *,"pass09"
 else
   print *,"ng09",pp,ret
 end if
 ret = fun05(pp)
 if (pp == 4 .and. ret == 3) then
   print *,"pass10"
 else
   print *,"ng10",pp,ret
 end if

contains 
  subroutine sub01(p)
    integer, pointer,intent(in) :: p
    p = p + 1
  end subroutine
  subroutine sub02(p)
    integer, pointer,intent(in) :: p
    p = p + 1
  end subroutine
  subroutine sub03(p)
    integer, pointer,intent(inout) :: p
    p = p + 1
  end subroutine
  subroutine sub04(p)
    integer, pointer,intent(in) :: p
    p = p + 1
  end subroutine
  subroutine sub05(p)
    integer, pointer,intent(out) :: p
    allocate(p) 
    p=0
    p = p + 1
  end subroutine

  function fun01(p)
    integer :: fun01
    integer, pointer,intent(in) :: p
    fun01 = p
    p = p + 1
  end function
  function fun02(p)
    integer :: fun02
    integer, pointer,intent(out) :: p
    allocate(p) 
    p=0
    fun02 = p
    p = p + 1
  end function
  function fun03(p)
    integer :: fun03
    integer, pointer,intent(in) :: p
    fun03 = p
    p = p + 1
  end function
  function fun04(p)
    integer :: fun04
    integer, pointer,intent(inout) :: p
    fun04 = p
    p = p + 1
  end function
  function fun05(p)
    integer :: fun05
    integer, pointer,intent(in) :: p
    fun05 = p
    p = p + 1
  end function
end
