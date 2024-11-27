module mod01
 contains
  subroutine m01_sub01()
   entry m01_ent01()
  end subroutine
  function m01_func01() result(rst)
   integer :: rst
   entry m01_ent02() result(rst)
   rst = 1
  end function
  subroutine m01_sub02()
   type ty01
    sequence
    procedure(m01_ent01), pointer, nopass :: pr_pn01
   end type
   type ty02
    sequence
    procedure(m01_ent02), pointer, nopass :: pr_pn02
   end type
   type (ty01) :: t01
   type (ty02) :: t02
   call sub01(t01)
   i = ifunc01(t02)
  end subroutine

  subroutine m01_sub03()
   type ty01
    sequence
    procedure(m01_sub01), pointer, nopass :: pr_pn01
   end type
   type ty02
    sequence
    procedure(m01_func01), pointer, nopass :: pr_pn02
   end type
   type (ty01) :: t01
   type (ty02) :: t02
   call sub01(t01)
   i = ifunc01(t02)
  end subroutine

end module

end

subroutine sub01(s01_arg01)
 type ty01
  sequence
  procedure(ent01), pointer, nopass :: pr_pn01
 end type
 type (ty01) :: s01_arg01
 entry ent01()
end subroutine

function ifunc01(f01_arg01) result(rst)
 integer :: rst
 type ty02
  sequence
  procedure(ent02), pointer, nopass :: pr_pn02
 end type
 type (ty02) :: f01_arg01
 entry ent02() result(rst)
 rst = 1
end function
