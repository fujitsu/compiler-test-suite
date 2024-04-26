subroutine s1
  type b
    integer::x1
  end type
  type,extends(b)::e
    integer::x2
  end type
 class(b),allocatable::v(:),z(:)

allocate(v(3:4))
v(3)%x1=3
v(4)%x1=4

allocate(e::z(5:7))
select type (z)
type is(e)
z(5)%x1=11
z(5)%x2=12
z(6)%x1=13
z(6)%x2=14
z(7)%x1=15
z(7)%x2=16
end select

allocate( v,stat=n,source=z)

if (n==0) print *,101
if (any(lbound(v)/=3))print *,201
if (any(ubound(v)/=4))print *,202

select type(v)
 type is (b)
 type is (e)
   print *,'type is e'
end select
end

call s1
print *,'pass'
end
