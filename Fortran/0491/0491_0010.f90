integer:: a(3)=[11,12,13],v(3)=[3,1,2]
call s( a(v) , v )
if (any(a/=[11,12,13])) print *,201
print *,'pass'
contains
elemental impure subroutine s( d1,d2)
integer,intent(in)::d1
integer,intent(in)::d2
select case (d2)
 case (1)
  if (d1/=11) print *,101,d1
 case (2)
  if (d1/=12) print *,102,d1
 case (3)
  if (d1/=13) print *,103,d1
end select

end subroutine
end
