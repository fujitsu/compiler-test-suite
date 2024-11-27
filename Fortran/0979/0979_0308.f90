function fun01(val)
  value   :: val
  integer :: val
  integer :: fun01

  val = val + 1

  fun01 = val
end function fun01

interface
  function fun01(p1)
  value   :: p1
  integer :: p1
  integer :: fun01
  end function
end interface

  integer :: aaa = 999
  ret = fun01(aaa)

  print *,"pass"
end
