integer,pointer:: a(:)
integer,allocatable:: a2(:)
integer,target::a_t(5)=[11,12,13,14,15]
integer::v(3)=[3,1,2]
allocate(a2(5))
a=>a_t
a2 = [101,102,103,104,105]
call s( a(v), a2(v),v)

if (any(a(1:3)/=10)) print *,301
if (any(a_t(1:3)/=10)) print *,302
if (any(a2(1:3)/=20)) print *,303

print*,"PASS"
contains
elemental impure subroutine s( d1,d2,d3)
 integer,intent(inout),volatile::d1
 integer,intent(inout),volatile::d2
 integer,intent(in)::d3

select case (d3)
 case (1)
  if (d1/=11) print *,101,d1
  if (d2/=101) print *,201,d3
 case (2)
  if (d1/=12) print *,102,d1
  if (d2/=102) print *,202,d3
 case (3)
  if (d1/=13) print *,103,d1
  if (d2/=103) print *,203,d3
end select

 d1=10
 d2=20
end subroutine
end
