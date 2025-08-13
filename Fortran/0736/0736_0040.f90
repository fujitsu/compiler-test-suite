 integer  ,dimension(6)::b11v,b12v
 b11v(2::2)=5;b12v(2::2)=b11v(2::2)
 call ss1(b11v(2::2),b12v(2::2),1,2,3)
 call chk
print *,'pass'
 contains
 subroutine ss1 &
         (b11v,b12v,i1,i2,i3)
 integer  ,dimension(:)::b11v,b12v
   write(8,*)b11v+dot_product(b11v(1:3),b12v(1:3))
   write(8,*)b11v+dot_product(b11v(i1:i3),b12v(3-i2:i1+i2))
   write(8,*)b11v(i3-i2:i1+i2)+dot_product(b11v(i1:i3),b12v(3-i2:i1+i2))
   write(8,*)dot_product(b11v(1:3),b12v(1:3))+ b11v
   write(8,*)dot_product(b11v(i1:i3),b12v(3-i2:i1+i2))+b11v
   write(8,*)dot_product(b11v(i1:i3),b12v(3-i2:i1+i2))+b11v(i3-i2:i1+i2)
 end subroutine
 end
 subroutine chk
 rewind 8
read(8,*)i1,i2,i3
if (any((/i1,i2,i3/)/=80))write(6,*) "NG"
if (any((/i1,i2,i3/)/=80))write(6,*) "NG"
if (any((/i1,i2,i3/)/=80))write(6,*) "NG"
if (any((/i1,i2,i3/)/=80))write(6,*) "NG"
if (any((/i1,i2,i3/)/=80))write(6,*) "NG"
if (any((/i1,i2,i3/)/=80))write(6,*) "NG"
 end
