program main
  interface
    subroutine ent01(p01)
      integer,value :: p01
    end subroutine
  end interface

  integer :: aaa = 999

  call ent01(aaa)

  if (aaa == 999) then
    print *,"pass"
  else
    print *,"ng ",aaa
  end if

end

subroutine sub01()
  integer :: val
entry ent01(val)
  val = val + 1
end subroutine sub01
