interface
  subroutine sub01(p1)
  value   :: p1
  integer :: p1
  end subroutine
end interface

  integer :: aaa = 999
  call sub01(aaa)

  if (aaa == 999) then
    print *,"pass"
  else
    print *,"ng ",aaa
  end if

end

subroutine sub01(val)
  value   :: val
  integer :: val

  val = val + 1
end subroutine sub01
