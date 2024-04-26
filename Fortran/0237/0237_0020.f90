subroutine s1
  type b
    integer::x1
  end type
  type,extends(b)::e
    integer::x2
  end type
type z1
 integer::zz1
 class(b),allocatable::v(:)
end type
type(z1),pointer::w1(:)
 class(b),pointer::vv(:)

allocate(w1(2))
allocate(w1(2)%v(3:4))
w1(2)%v(3)%x1=3
w1(2)%v(4)%x1=4

allocate(e:: w1(2)%v(5:7),stat=n)

if (n==0) print *,101,n
if (any(lbound(w1(2)%v)/=3))print *,102
if (any(ubound(w1(2)%v)/=4))print *,103

vv=>w1(2)%v
select type(vv)
 type is (b)
 type is (e)
   print *,'Type is e, incorrect'
end select
end

call s1
print *,'pass'
end
