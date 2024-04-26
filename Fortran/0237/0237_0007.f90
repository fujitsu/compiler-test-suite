subroutine s1
  type b
    integer::x1
  end type
  type,extends(b)::e
    integer::x2
  end type
 class(b),allocatable::v(:),z

allocate(v(3:4))
v(3)%x1=3
v(4)%x1=4

allocate(e:: v(5:7),stat=n)

if (n==0) print *,101,n
if (any(lbound(v)/=3))print *,102
if (any(ubound(v)/=4))print *,103

if (same_type_as(z,v)) then
else 
   print *,'Type is e, incorrect'
end if
select type(v)
 type is (b)
 type is (e)
   print *,'Type is e, incorrect'
end select
end

call s1
print *,'pass'
end
