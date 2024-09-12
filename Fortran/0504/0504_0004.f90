 module m2
  type :: t1
  end type t1
  private
end 

module m3
  type :: t1
   integer::x
  end type t1
end module m3

  use m2
  use m3
type(t1)::a
a%x=1
if (a%x/=1) print *,1010

print *,'pass'
end
