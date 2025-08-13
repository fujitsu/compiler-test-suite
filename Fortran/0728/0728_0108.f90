  call s1
  print *,'pass'
  end
module m1
   type a
    integer,pointer:: x(:)
    type(a),pointer::y_n(:)
    type(a),pointer::y_b(:)
   end type
 contains
subroutine sp1(b,bb,bbb,j3,k3)
   type(a),pointer::b(:),bb(:)
   integer,pointer::bbb(:)
do i3=j3,k3
   allocate(b(i3)%x(i3))
   b(i3)%x=(/1,11,21/)
   allocate(b(i3)%y_n(i3))
   nullify(b(i3)%y_b)

   allocate(b(i3)%y_n(i3)%x(i3))
   b(i3)%y_n(i3)%x=(/2,12,22/)
   allocate(b(i3)%y_n(i3)%y_n(i3))
   b(i3)%y_n(i3)%y_b => b

   allocate(b(i3)%y_n(i3)%y_n(i3)%x(i3))
   b(i3)%y_n(i3)%y_n(i3)%x =(/3,13,23/)
   nullify(b(i3)%y_n(i3)%y_n(i3)%y_n)
   b(i3)%y_n(i3)%y_n(i3)%y_b => b(i3)%y_n
   bb=>b
 write(22,*)b(i3)%x
 write(22,*)b(i3)%y_n(i3)%x
 write(22,*)b(i3)%y_n(i3)%y_n(i3)%x
 write(22,*)b(i3)%y_n(i3)%y_n(i3)%y_b(i3)%x
 write(22,*)b(i3)%y_n(i3)%y_n(i3)%y_b(i3)%y_b(i3)%x
 write(22,*)bb(i3)%x
 write(22,*)'=='
 call chk01(b(i3)%x,(/1,11,21/))
 call chk01(b(i3)%y_n(i3)%x,(/2,12,22/))
 call chk01(b(i3)%y_n(i3)%y_n(i3)%x,(/3,13,23/))
 call chk01(b(i3)%y_n(i3)%y_n(i3)%y_b(i3)%x,(/2,12,22/))
 call chk01(b(i3)%y_n(i3)%y_n(i3)%y_b(i3)%y_b(i3)%x,(/1,11,21/))
 call chk01(bb(i3)%x,(/1,11,21/))
 call chk02(b,(/1,11,21/))
 call chk02(b(i3)%y_n,(/2,12,22/))
 call chk02(b(i3)%y_n(i3)%y_n,(/3,13,23/))
 call chk02(b(i3)%y_n(i3)%y_n(i3)%y_b,(/2,12,22/))
 call chk02(b(i3)%y_n(i3)%y_n(i3)%y_b(i3)%y_b,(/1,11,21/))
 call chk02(bb,(/1,11,21/))
 call chk031(a(b(i3)%x,b(i3)%y_n,b(i3)%y_b),(/1,11,21/))
 call chk032(a(b(i3)%y_n(i3)%x,b(i3)%y_n(i3)%y_n,b(i3)%y_n(i3)%y_b),(/2,12,22/))
 call chk033(a(b(i3)%y_n(i3)%y_n(i3)%x,b(i3)%y_n(i3)%y_n(i3)%y_n,b(i3)%y_n(i3)%y_n(i3)%y_b),(/3,13,23/))
 call chk04(a(b(i3)%x,b,bb),(/1,11,21/))
   call sub(b(i3)%y_n)
 write(22,*)b(i3)%x
 write(22,*)b(i3)%y_n(i3)%x
call chk(bbb)
end do
     contains
 subroutine chk04(i1,i2)
type(a)::i1
integer::i2(:)
if (any(i1%x/=i2))write(6,*) "NG"
if (any(i1%y_n(i3)%x/=i2))write(6,*) "NG"
if (any(i1%y_b(i3)%x/=i2))write(6,*) "NG"
end subroutine
 subroutine chk033(i1,i2)
type(a)::i1
integer::i2(:)
if (any(i1%x/=i2))write(6,*) "NG"
if (any(i1%y_b(i3)%x/=i2-1))write(6,*) "NG"
if (any(i1%y_b(i3)%y_b(i3)%x/=i2-2))write(6,*) "NG"
if (associated(i1%y_n))write(6,*) "NG"
end subroutine
 subroutine chk032(i1,i2)
type(a)::i1
integer::i2(:)
if (any(i1%x/=i2))write(6,*) "NG"
if (any(i1%y_n(i3)%x/=i2+1))write(6,*) "NG"
if (any(i1%y_b(i3)%x/=i2-1))write(6,*) "NG"
end subroutine
 subroutine chk031(i1,i2)
type(a)::i1
integer::i2(:)
if (any(i1%x/=i2))write(6,*) "NG"
if (any(i1%y_n(i3)%x/=i2+1))write(6,*) "NG"
if (any(i1%y_n(i3)%y_n(i3)%x/=i2+2))write(6,*) "NG"
if (associated(i1%y_b))write(6,*) "NG"
end subroutine
      subroutine sub(p)
       type(a),pointer::p(:)
       p(i3)%y_b(i3)%y_n => p(i3)%y_n
      end subroutine
 subroutine chk01(i1,i2)
integer,pointer::i1(:)
integer::i2(:)
if (any(i1/=i2))write(6,*) "NG"
end subroutine
 subroutine chk02(i1,i2)
type(a),pointer::i1(:)
integer::i2(:)
if (any(i1(i3)%x/=i2))write(6,*) "NG"
end subroutine
subroutine chk(i)
integer,pointer::i(:)
rewind 22
read(22,*)i;if (any(i/=(/1,11,21/)))write(6,*) "NG"
read(22,*)i;if (any(i/=(/2,12,22/)))write(6,*) "NG"
read(22,*)i;if (any(i/=(/3,13,23/)))write(6,*) "NG"
read(22,*)i;if (any(i/=(/2,12,22/)))write(6,*) "NG"
read(22,*)i;if (any(i/=(/1,11,21/)))write(6,*) "NG"
read(22,*)i;if (any(i/=(/1,11,21/)))write(6,*) "NG"
read(22,*)
read(22,*)i;if (any(i/=(/1,11,21/)))write(6,*) "NG"
read(22,*)i;if (any(i/=(/3,13,23/)))write(6,*) "NG"
read(22,*,end=1)i
write(6,*) "NG"
return
1 end subroutine
end subroutine
end
  subroutine s1
use m1
   integer,pointer::bbb(:)
   type(a),pointer::b(:),bb(:)
 allocate(b(3),bbb(3))
  call sp1(b,bb,bbb,3,3)
  end
