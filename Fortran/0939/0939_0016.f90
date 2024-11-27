   integer:: a(3)=[11,12,13]
 integer::v(3)=[3,1,2],aa(3)=[13,11,12]
 call s((a(v)),aa)
  if(any(a /= [11,12,13])) print*,101
 print*,"PASS"
 contains
  subroutine s( x,y)
  integer,asynchronous,intent(in)::x(:)
  integer,intent(in)::y(:)
  if(any (x /= y)) print*,102 
   end subroutine
end
