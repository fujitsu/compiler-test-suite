  module type_definition
    type init_compo_s
      integer :: cmp1 = 0
    end type init_compo_s
  end module type_definition

  module type_compare
    use type_definition
    private :: init_compo_s,type_eq_ary,type_eq_scalar,type_eq_elemental
    interface operator(==)
      module procedure type_eq_ary,type_eq_scalar
    end interface operator(==)
    contains
      function type_eq_ary(t1,t2)
        type(init_compo_s),intent(in) :: t1(:),t2(:)
        logical(kind=4) type_eq_ary
        type_eq_ary = all(type_eq_elemental(t1,t2))
      end function type_eq_ary

      function type_eq_scalar(t1,t2)
        type(init_compo_s),intent(in) :: t1,t2
        logical(kind=4) type_eq_scalar
        type_eq_scalar = type_eq_elemental(t1,t2)
      end function type_eq_scalar

      elemental function type_eq_elemental(t1,t2)
        type(init_compo_s),intent(in) :: t1,t2
        logical(kind=4) type_eq_elemental
        type_eq_elemental = .false.
        if (t1%cmp1 == t2%cmp1) type_eq_elemental = .true.
      end function type_eq_elemental

  end module

  program main
    use type_definition ,only : init_compo_s
    use type_compare ,only : operator(==)

    integer :: error = 0

    type (init_compo_s) :: var1 = init_compo_s(1)
    type (init_compo_s) :: var2 
    data var2/init_compo_s(1)/

    type (init_compo_s),dimension(:,:) :: var3(3) = init_compo_s(3)
    type (init_compo_s),dimension(:,:) :: var4(3) 
    data var4/3*init_compo_s(3)/

    type (init_compo_s) :: var5(3) = (/(init_compo_s(i),i=1,3)/)
    type (init_compo_s) :: var6(3)
    data var6(2)/init_compo_s(2)/

    type (init_compo_s) :: var7(3) = (/(init_compo_s(i),i=1,3)/)
    type (init_compo_s) :: var8(3)
    data (var8(i),i=1,3)  &
        & /init_compo_s(1),init_compo_s(2),init_compo_s(3)/

    if (.not.(var1 == var2)) then
      print *, " +++ error : item 1 +++ "
      error = error + 1
    end if

    if (.not.(var3 == var4)) then
      print *, " +++ error : item 2 +++ "
      error = error + 1
    end if

    if (.not.(var5(2) == var6(2))) then
      print *, " +++ error : item 3 +++ "
      error = error + 1
    end if

    if (.not.(var7 == var8)) then
      print *, " +++ error : item 4 +++ "
      error = error + 1
    end if

    if (error == 0) then
      print *," *** pass *** "
    endif

  end program main
