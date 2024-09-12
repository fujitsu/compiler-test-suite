  module define_the_defined_operators
    implicit none
    type type1
      integer :: cmp1    = 3
      integer :: cmp2(3) = (/1,2,3/)
    end type
    type type2
      character*3 :: cmp1    = "ABC"
      character*3 :: cmp2(3) = (/"DEF","GHI","JKL"/)
    end type

    public operator(.uniope.),type1,operator(/=)
    private 
    public operator(.ope.),type2

    interface operator(.uniope.)
      module procedure   uni_typ1,uni_typ2
    end interface    
    interface operator(.ope.)
      module procedure   ope_typ1,ope_typ2
    end interface    
    interface operator(/=)
      module procedure   ne_typ1,ne_typ2
    end interface

    contains

      elemental function uni_typ1(arg1) result(res)
        type(type1),intent(in) :: arg1
        type(type1) :: res
      end function

      elemental function uni_typ2(arg1) result(res)
        type(type2),intent(in) :: arg1
        type(type2) :: res
      end function

      elemental function ope_typ1(arg1,arg2) result(res)
        type(type1),intent(in) :: arg1,arg2
        type(type1) :: res
      end function

      elemental function ope_typ2(arg1,arg2) result(res)
        type(type2),intent(in) :: arg1,arg2
        type(type2) :: res
      end function

      function ne_typ1(arg1,arg2) result(res)
        type(type1),intent(in) :: arg1(:),arg2(:)
        logical :: res
        integer i

        res = .false.
        do i = lbound(arg1,1) , size(arg1)
          if (arg1(i)%cmp1 /= arg2(i)%cmp1) res = .true.
          if (any(arg1(i)%cmp2 /= arg2(i)%cmp2)) res = .true.
        enddo
      end function

      function ne_typ2(arg1,arg2) result(res)
        type(type2),intent(in) :: arg1(:),arg2(:)
        logical :: res
        integer i

        res = .false.
        do i = lbound(arg1,1) , size(arg1)
          if (arg1(i)%cmp1 /= arg2(i)%cmp1) res = .true.
          if (any(arg1(i)%cmp2 /= arg2(i)%cmp2)) res = .true.
        enddo
      end function

  end module

  program main

    use define_the_defined_operators

    implicit none 

    type (type1),target,dimension(3) :: v1ty1
    type (type1),dimension(3) :: v2ty1 = type1(3,(/1,2,3/))
    type (type1),allocatable,dimension(:) :: v3ty1
    type (type1),pointer,dimension(:) :: v4ty1

    type (type2),target,dimension(3) :: v1ty2
    type (type2),dimension(3) :: v2ty2 = type2("ABC",(/"DEF","GHI","JKL"/))
    type (type2),allocatable,dimension(:) :: v3ty2
    type (type2),pointer,dimension(:) :: v4ty2

    integer i
    integer :: error = 0

    allocate (v3ty1(2:4) , v4ty1(-1:1))
    allocate (v3ty2(2:4) , v4ty2(-1:1))

    if (v1ty1 /= (/(type1(3,(/1,2,3/)),i=1,3)/)) then
      print *, " +++ error : item 1 +++ "
      error = error +1 ;
    end if
    if (v1ty1 /= v2ty1) then
      print *, " +++ error : item 1 +++ "
      error = error +1 ;
    end if
    if (v1ty1 /= v3ty1) then
      print *, " +++ error : item 1 +++ "
      error = error +1 ;
    end if
    if (v1ty1 /= v4ty1) then
      print *, " +++ error : item 1 +++ "
      error = error +1 ;
    end if
    if (v1ty2 /= (/(type2("ABC",(/"DEF","GHI","JKL"/)),i=1,3)/)) then
      print *, " +++ error : item 1 +++ "
      error = error +1 ;
    end if
    if (v1ty2 /= v2ty2) then
      print *, " +++ error : item 1 +++ "
      error = error +1 ;
    end if
    if (v1ty2 /= v3ty2) then
      print *, " +++ error : item 1 +++ "
      error = error +1 ;
    end if
    if (v1ty2 /= v4ty2) then
      print *, " +++ error : item 1 +++ "
      error = error +1 ;
    end if

    v1ty1 = type1(5,(/1,3,5/))
    v1ty2 = type2("ZZZ",(/"UUU","VVV","WWW"/))
    v2ty1 = v1ty1 ; v2ty2 = v1ty2
    v3ty1 = v1ty1 ; v3ty2 = v1ty2
    v4ty1 => v1ty1 ; v4ty2 => v1ty2

    if (v1ty1 /= (/(type1(5,(/1,3,5/)),i=1,3)/)) then
      print *, " +++ error : item 2 +++ "
      error = error +1 ;
    end if
    if (v1ty1 /= v2ty1) then
      print *, " +++ error : item 2 +++ "
      error = error +1 ;
    end if
    if (v1ty1 /= v3ty1) then
      print *, " +++ error : item 2 +++ "
      error = error +1 ;
    end if
    if (v1ty1 /= v4ty1) then
      print *, " +++ error : item 2 +++ "
      error = error +1 ;
    end if
    if (v1ty2 /= (/(type2("ZZZ",(/"UUU","VVV","WWW"/)),i=1,3)/)) then
      print *, " +++ error : item 2 +++ "
      error = error +1 ;
    end if
    if (v1ty2 /= v2ty2) then
      print *, " +++ error : item 2 +++ "
      error = error +1 ;
    end if
    if (v1ty2 /= v3ty2) then
      print *, " +++ error : item 2 +++ "
      error = error +1 ;
    end if
    if (v1ty2 /= v4ty2) then
      print *, " +++ error : item 2 +++ "
      error = error +1 ;
    end if

    v1ty1 = .uniope.v1ty1
    v1ty2 = .uniope.v1ty2
    v2ty1 = v2ty1.ope.v3ty1
    v2ty2 = v2ty2.ope.v3ty2

    if (v1ty1 /= (/(type1(3,(/1,2,3/)),i=1,3)/)) then
      print *, " +++ error : item 3 +++ "
      error = error +1 ;
    end if
    if (v1ty1 /= v2ty1) then
      print *, " +++ error : item 3 +++ "
      error = error +1 ;
    end if
    if (v1ty1 /= v4ty1) then
      print *, " +++ error : item 3 +++ "
      error = error +1 ;
    end if
    if (v1ty2 /= (/(type2("ABC",(/"DEF","GHI","JKL"/)),i=1,3)/)) then
      print *, " +++ error : item 3 +++ "
      error = error +1 ;
    end if
    if (v1ty2 /= v2ty2) then
      print *, " +++ error : item 3 +++ "
      error = error +1 ;
    end if
    if (v1ty2 /= v4ty2) then
      print *, " +++ error : item 3 +++ "
      error = error +1 ;
    end if

    if (error == 0) then
      print *," *** pass *** "
    endif

  end program main
