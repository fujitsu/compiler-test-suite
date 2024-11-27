program main
  interface
    function fun01(p01)
      integer,value :: p01
      integer :: fun01
    end function
  end interface

  integer :: aaa = 999

  if (fun01(aaa) == 1000) then
    print *,"pass"
  else
    print *,"ng ",aaa
  end if

end

function fun01(val)
  integer :: val,fun01

  fun01 = val + 1
end function fun01
