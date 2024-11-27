  call s1
  print *,'pass'
  end
module m1
   type a
    integer,pointer:: x
    type(a),pointer::y_n
    type(a),pointer::y_b
   end type
 contains
subroutine sp1(b,bb,bbb)
   type(a),pointer::b,bb
   integer,pointer::bbb
   allocate(b%x)
   b%x=1
   allocate(b%y_n)
   nullify(b%y_b)

   allocate(b%y_n%x)
   b%y_n%x=2
   allocate(b%y_n%y_n)
   b%y_n%y_b => b

   allocate(b%y_n%y_n%x)
   b%y_n%y_n%x =3
   nullify(b%y_n%y_n%y_n)
   b%y_n%y_n%y_b => b%y_n 
   bb=>b
 write(1,*)b%x
 write(1,*)b%y_n%x
 write(1,*)b%y_n%y_n%x
 write(1,*)b%y_n%y_n%y_b%x
 write(1,*)b%y_n%y_n%y_b%y_b%x
 write(1,*)bb%x
 write(1,*)'=='
 call chk01(b%x,1)
 call chk01(b%y_n%x,2)
 call chk01(b%y_n%y_n%x,3)
 call chk01(b%y_n%y_n%y_b%x,2)
 call chk01(b%y_n%y_n%y_b%y_b%x,1)
 call chk01(bb%x,1)
 call chk02(b,1)
 call chk02(b%y_n,2)
 call chk02(b%y_n%y_n,3)
 call chk02(b%y_n%y_n%y_b,2)
 call chk02(b%y_n%y_n%y_b%y_b,1)
 call chk02(bb,1)
 call chk031(a(b%x,b%y_n,b%y_b),1)
 call chk032(a(b%y_n%x,b%y_n%y_n,b%y_n%y_b),2)
 call chk033(a(b%y_n%y_n%x,b%y_n%y_n%y_n,b%y_n%y_n%y_b),3)
 call chk04(a(b%x,b,bb),1)
   call sub(b%y_n)
 write(1,*)b%x
 write(1,*)b%y_n%x
call chk(bbb)
     contains
 subroutine chk04(i1,i2)
type(a)::i1
integer::i2
if ((i1%x/=i2))write(6,*) "NG"
if ((i1%y_n%x/=i2))write(6,*) "NG"
if ((i1%y_b%x/=i2))write(6,*) "NG"
end subroutine
 subroutine chk033(i1,i2)
type(a)::i1
integer::i2
if ((i1%x/=i2))write(6,*) "NG"
if ((i1%y_b%x/=i2-1))write(6,*) "NG"
if ((i1%y_b%y_b%x/=i2-2))write(6,*) "NG"
if (associated(i1%y_n))write(6,*) "NG"
end subroutine
 subroutine chk032(i1,i2)
type(a)::i1
integer::i2
if ((i1%x/=i2))write(6,*) "NG"
if ((i1%y_n%x/=i2+1))write(6,*) "NG"
if ((i1%y_b%x/=i2-1))write(6,*) "NG"
end subroutine
 subroutine chk031(i1,i2)
type(a)::i1
integer::i2
if ((i1%x/=i2))write(6,*) "NG"
if ((i1%y_n%x/=i2+1))write(6,*) "NG"
if ((i1%y_n%y_n%x/=i2+2))write(6,*) "NG"
if (associated(i1%y_b))write(6,*) "NG"
end subroutine
      subroutine sub(p)
       type(a),pointer::p
       p%y_b%y_n => p%y_n
      end subroutine
 subroutine chk01(i1,i2)
integer,pointer::i1
integer::i2
if ((i1/=i2))write(6,*) "NG"
end subroutine
 subroutine chk02(i1,i2)
type(a),pointer::i1
integer::i2
if ((i1%x/=i2))write(6,*) "NG"
end subroutine
subroutine chk(i)
integer,pointer::i
rewind 1
read(1,*)i;if ((i/=1))write(6,*) "NG"
read(1,*)i;if ((i/=2))write(6,*) "NG"
read(1,*)i;if ((i/=3))write(6,*) "NG"
read(1,*)i;if ((i/=2))write(6,*) "NG"
read(1,*)i;if ((i/=1))write(6,*) "NG"
read(1,*)i;if ((i/=1))write(6,*) "NG"
read(1,*)
read(1,*)i;if ((i/=1))write(6,*) "NG"
read(1,*)i;if ((i/=3))write(6,*) "NG"
read(1,*,end=1)i
write(6,*) "NG"
return
1 end subroutine
end subroutine
end
  subroutine s1
use m1
   integer,pointer::bbb
   type(a),pointer::b,bb
 allocate(b,bbb)
  call sp1(b,bb,bbb)
  end
