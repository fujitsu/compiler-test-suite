block data
  logical(2) :: cl2
  logical(4) :: cl4
  logical(8) :: cl8
  common /com/ cl2,cl4,cl8
  bind(C) :: /com/
end block data

module mod

  logical(2),bind(C) :: ml2
  logical(4),bind(C) :: ml4
  logical(8),bind(C) :: ml8

  contains

  subroutine msub(mal2,mal4,mal8) bind(C)
    logical(2) :: mal2
    logical(4) :: mal4
    logical(8) :: mal8
  end subroutine

  function xfunc2() bind(C) result(mretl2)
    logical(2) :: mretl2
  end function

  function xfunc4() bind(C) result(mretl4)
    logical(4) :: mretl4
  end function

  function xfunc8() bind(C) result(mretl8)
    logical(8) :: mretl8
  end function

end module

subroutine sub(al2,al4,al8) bind(C)
  logical(2) :: al2
  logical(4) :: al4
  logical(8) :: al8
end subroutine

subroutine esub1(al2,al4,al8)
  logical(2) :: al2
  logical(4) :: al4
  logical(8) :: al8
  entry eent1(al2,al4,al8) bind(C)
end subroutine

subroutine esub2(al2,al4,al8)
  entry eent2(al2,al4,al8) bind(C)
  logical(2) :: al2
  logical(4) :: al4
  logical(8) :: al8
end subroutine

subroutine esub3()
  logical(2) :: al2
  logical(4) :: al4
  logical(8) :: al8
  entry eent3(al2,al4,al8) bind(C)
end subroutine

subroutine esub4()
  entry eent4(al2,al4,al8) bind(C)
  logical(2) :: al2
  logical(4) :: al4
  logical(8) :: al8
end subroutine

function func2() bind(C) result(retl2)
  logical(2) :: retl2
end function

function func4() bind(C) result(retl4)
  logical(4) :: retl4
end function

function func8() bind(C) result(retl8)
  logical(8) :: retl8
end function

function efunc2() result(eretl2)
  logical(2) :: eretl2
  entry ent2() bind(C) result(eretl2)
end function

function efunc4() result(eretl4)
  logical(4) :: eretl4
  entry ent4() bind(C) result(eretl4)
end function

function efunc8() result(eretl8)
  logical(8) :: eretl8
  entry ent8() bind(C) result(eretl8)
end function

function eefunc2() result(eretl2)
  entry eeent2() bind(C) result(eretl2)
  logical(2) :: eretl2
end function

function eefunc4() result(eretl4)
  entry eeent4() bind(C) result(eretl4)
  logical(4) :: eretl4
end function

function eefunc8() result(eretl8)
  entry eeent8() bind(C) result(eretl8)
  logical(8) :: eretl8
end function

end
