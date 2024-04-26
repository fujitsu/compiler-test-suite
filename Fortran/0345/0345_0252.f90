module mod
  interface operator (.add.)
    module procedure add_func1,add_func2
  end interface operator (.add.)
 contains
  function add_func1(i1,i2) result(i3)
    integer(4)::i1,i2,i3
    intent(in)::i1,i2
    i3=i1+i2
  end function add_func1
  function add_func2(i1,i2) result(i3)
    integer(8)::i1,i2,i3
    intent(in)::i1,i2
    i3=i1+i2+1
  end function add_func2
end module

program main
 use mod
 integer(4)::i4,j4,k4
 integer(8)::i8,j8,k8
  i4=1
  j4=10
  i8=1_8
  j8=10_8

  k4=i4.add.j4
  print '(4h k4= ,i4)',k4
  k8=i8.add.j8
  print '(4h k8= ,i4)',k8
  print *,'pass'
end


