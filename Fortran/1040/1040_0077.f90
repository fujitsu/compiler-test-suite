module m1
  type a
    integer::a1=1
  end type
  interface operator(/=)
    module procedure z
  end interface
 contains
  function f1(x)
    integer::x(:,:)
    type(a)::f1(size(x))
  end function
  function z(y1,i1)
  type(a),intent(in)::y1(:)
  integer,intent(in)::i1
  logical ::z
  z=.false.
  if (any(y1%a1/=i1))z=.true.
  end function
end
 use m1
integer::y(2,3)
integer,allocatable::b(:,:)
allocate(b(2,3))
if (f1(y)/=1)write(6,*) "NG"
if (f1(b)/=1)write(6,*) "NG"
print *,'pass'
end
