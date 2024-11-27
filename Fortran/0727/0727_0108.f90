  module define_the_defined_operators
    implicit none
    type type1
      integer :: cmp1    = 3
      integer :: cmp2(3) = (/1,2,3/)
    end type
    interface operator(.uniope.)
      module procedure   uni_typ1
    end interface    
    interface operator(/=)
      module procedure chk
    end interface
    contains
      elemental function uni_typ1(arg1) result(res)
        type(type1),intent(in) :: arg1
        type(type1) :: res
        res=arg1
      end function
      function chk(a1,a2)
      logical chk
      type(type1),intent(in) :: a1,a2
      chk=.false.
      if (a1%cmp1/=a2%cmp1)chk=.true.
      if (any(a1%cmp2/=a2%cmp2))chk=.true.
      end function
  end module

    use define_the_defined_operators

    implicit none 

    type (type1),target,dimension(3) :: v1ty1,v2

    v1ty1 = (/type1(5,(/1,3,5/)),type1(15,(/11,13,15/)),type1(25,(/21,23,25/))/)
    v2 = .uniope.v1ty1
    if (v2(1)/=type1(5,(/1,3,5/)))write(6,*) "NG"
    if (v2(2)/=type1(15,(/11,13,15/)))write(6,*) "NG"
    if (v2(3)/=type1(25,(/21,23,25/)))write(6,*) "NG"
    print *,'pass'
  end 

