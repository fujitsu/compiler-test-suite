 integer:: a(3)=[11,12,13]
 integer::v(3)=[3,1,2],aa(3)=[13,11,12]
 call s((a(v)),aa)
  print*,"PASS"
 contains
  impure elemental  subroutine s( x,y)
   integer,asynchronous,intent(in)::x
   integer,intent(in)::y
   if(x /=y) print*,101
  end subroutine
 end
