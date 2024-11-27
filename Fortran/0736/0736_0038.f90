 integer  ,dimension(6)::b11v,b12v
 b11v(2::2)=5;b12v(2::2)=b11v(2::2)
 call ss1(b11v(2::2),b12v(2::2))
 call chk
print *,'pass'
 contains
 subroutine ss1 &
         (b11v,b12v)
 integer  ,dimension(:)::b11v,b12v
   write(1,*)b11v+dot_product(b11v(1:3),b12v(1:3))
 end subroutine
 end
 subroutine chk
 rewind 1
read(1,*)i1,i2,i3
if (any((/i1,i2,i3/)/=80))write(6,*) "NG"
 end
