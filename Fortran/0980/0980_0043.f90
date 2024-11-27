program main
  integer :: aaa = 999,fun01

  if (fun01(aaa) == 1000) then
    print *,"pass"
  else
    print *,"ng ",aaa
  end if
end

function fun01(val)
  value :: val
  integer :: val
  integer :: fun01

  fun01 = val + 1
end function fun01
