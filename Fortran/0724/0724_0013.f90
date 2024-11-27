subroutine sub01(d_array01)

 interface operator (.unary.)
  function ifunc01(d_array01) result(irst01)
   integer, intent(in) :: d_array01(*)
   integer             :: irst01
  end function
 end interface

 interface operator (.binary.)
  function ifunc02(d_array01, d_array02) result(irst02)
   integer, intent(in) :: d_array01(*), d_array02(*)
   integer             :: irst02
  end function
 end interface

 integer :: d_array01(*)

 d_array01(1) = .unary.d_array01
 d_array01(1) = d_array01.binary.d_array01

end subroutine

function ifunc01(d_array01) result(irst01)
 integer :: d_array01(*)
 integer :: irst01
 irst01 = 1
end function

function ifunc02(d_array01, d_array02) result(irst02)
 integer :: d_array01(*), d_array02(*)
 integer :: irst02
 irst02 = 2
end function

end
