module mod01
 contains
  function m1func01() result(m1rst01)
   integer :: m1rst01
   m1rst01 = 1
  end function
  function m1func02() result(m1rst02)
   integer :: m1rst02
   m1rst02 = 2
  end function
end module

module mod02

 contains
  function m2func01(dprocp01) result(m2rst01) bind(c)
   use mod01
   integer :: m2rst01
   procedure(m1func01) :: dprocp01
   procedure(m1func02) :: dprocp02
   entry m2ent01(dprocp02) result(m2rst01) bind(c)
   print *,dprocp01()
   print *,dprocp02()
   m2rst01 = 1
  end function
end module

end
