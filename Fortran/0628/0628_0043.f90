implicit none

 integer, pointer:: pp
 integer         :: ret
 allocate(pp)

 pp = 0
 call sub01(pp)
 if (pp == 10) then
   print *,"pass01"
 else
   print *,"ng01",pp
 end if

 pp = 0
 ret = fun01(pp)
 if (pp == 10 .and. ret == 10) then
   print *,"pass02"
 else
   print *,"ng02",pp,ret
 end if

 pp = 0
 call sub02(pp)

 pp = 0
 ret = fun02(pp)

contains 

  recursive subroutine sub01(p01)
    intent(in) :: p01
    integer,pointer :: p01
    p01 = p01 + 1
    if (p01 < 10) then
      call sub01(p01)
    end if
  end subroutine

  recursive function fun01(p01) result(ret)
    intent(in) :: p01
    integer,pointer :: p01
    integer :: ret
    p01 = p01 + 1
    if (p01 < 10) then
      ret = fun01(p01)
    end if
    ret = p01
  end function

  pure subroutine sub02(p)
    integer, pointer,intent(in) :: p
    if (p == 0) then
    end if
  end subroutine

  pure function fun02(p)
    integer :: fun02
    integer, pointer,intent(in) :: p
    fun02 = p
  end function

end
