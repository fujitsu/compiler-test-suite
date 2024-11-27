module m
type a
  integer,allocatable::x(:)
  integer::y(2)
end type
contains
subroutine s1(a1,b1,j)
type(a),allocatable::a1(:),a2(:)
integer,allocatable::xx(:)
type(a)            ::b1(j),b2(j)
integer::yy(2)
allocate(xx(2));xx=(/11,12/)
allocate(a1(2),a2(2))
a1(2)=a(xx,(/13,14/))
if (a1(2)%x(1)/=11)write(6,*) "NG"
if (a1(2)%x(2)/=12)write(6,*) "NG"
if (a1(2)%y(1)/=13)write(6,*) "NG"
if (a1(2)%y(2)/=14)write(6,*) "NG"
xx=(/15,16/)
a1(2)%x=xx
a1(2)%y=(/17,18/)
if (a1(2)%x(1)/=15)write(6,*) "NG"
if (a1(2)%x(2)/=16)write(6,*) "NG"
if (a1(2)%y(1)/=17)write(6,*) "NG"
if (a1(2)%y(2)/=18)write(6,*) "NG"
xx=(/21,22/)
a1(2)%x(1)=xx(1)
a1(2)%x(2)=xx(2)
a1(2)%y(1)=23
a1(2)%y(2)=24
if (a1(2)%x(1)/=21)write(6,*) "NG"
if (a1(2)%x(2)/=22)write(6,*) "NG"
if (a1(2)%y(1)/=23)write(6,*) "NG"
if (a1(2)%y(2)/=24)write(6,*) "NG"

xx=(/11,12/)
a2(2)=a(xx,(/13,14/))
if (a2(2)%x(1)/=11)write(6,*) "NG"
if (a2(2)%x(2)/=12)write(6,*) "NG"
if (a2(2)%y(1)/=13)write(6,*) "NG"
if (a2(2)%y(2)/=14)write(6,*) "NG"
xx=(/15,16/)
a2(2)%x=xx
a2(2)%y=(/17,18/)
if (a2(2)%x(1)/=15)write(6,*) "NG"
if (a2(2)%x(2)/=16)write(6,*) "NG"
if (a2(2)%y(1)/=17)write(6,*) "NG"
if (a2(2)%y(2)/=18)write(6,*) "NG"
xx=(/21,22/)
a2(2)%x(1)=xx(1)
a2(2)%x(2)=xx(2)
a2(2)%y(1)=23
a2(2)%y(2)=24
if (a2(2)%x(1)/=21)write(6,*) "NG"
if (a2(2)%x(2)/=22)write(6,*) "NG"
if (a2(2)%y(1)/=23)write(6,*) "NG"
if (a2(2)%y(2)/=24)write(6,*) "NG"

yy=(/11,12/)
a1(2)=a(yy,(/13,14/))
if (a1(2)%x(1)/=11)write(6,*) "NG"
if (a1(2)%x(2)/=12)write(6,*) "NG"
if (a1(2)%y(1)/=13)write(6,*) "NG"
if (a1(2)%y(2)/=14)write(6,*) "NG"
yy=(/15,16/)
a1(2)%x=yy
a1(2)%y=(/17,18/)
if (a1(2)%x(1)/=15)write(6,*) "NG"
if (a1(2)%x(2)/=16)write(6,*) "NG"
if (a1(2)%y(1)/=17)write(6,*) "NG"
if (a1(2)%y(2)/=18)write(6,*) "NG"
yy=(/21,22/)
a1(2)%x(1)=yy(1)
a1(2)%x(2)=yy(2)
a1(2)%y(1)=23
a1(2)%y(2)=24
if (a1(2)%x(1)/=21)write(6,*) "NG"
if (a1(2)%x(2)/=22)write(6,*) "NG"
if (a1(2)%y(1)/=23)write(6,*) "NG"
if (a1(2)%y(2)/=24)write(6,*) "NG"

yy=(/11,12/)
a2(2)=a(yy,(/13,14/))
if (a2(2)%x(1)/=11)write(6,*) "NG"
if (a2(2)%x(2)/=12)write(6,*) "NG"
if (a2(2)%y(1)/=13)write(6,*) "NG"
if (a2(2)%y(2)/=14)write(6,*) "NG"
yy=(/15,16/)
a2(2)%x=yy
a2(2)%y=(/17,18/)
if (a2(2)%x(1)/=15)write(6,*) "NG"
if (a2(2)%x(2)/=16)write(6,*) "NG"
if (a2(2)%y(1)/=17)write(6,*) "NG"
if (a2(2)%y(2)/=18)write(6,*) "NG"
yy=(/21,22/)
a2(2)%x(1)=yy(1)
a2(2)%x(2)=yy(2)
a2(2)%y(1)=23
a2(2)%y(2)=24
if (a2(2)%x(1)/=21)write(6,*) "NG"
if (a2(2)%x(2)/=22)write(6,*) "NG"
if (a2(2)%y(1)/=23)write(6,*) "NG"
if (a2(2)%y(2)/=24)write(6,*) "NG"

xx=(/11,12/)
b1(2)=a(xx,(/13,14/))
if (b1(2)%x(1)/=11)write(6,*) "NG"
if (b1(2)%x(2)/=12)write(6,*) "NG"
if (b1(2)%y(1)/=13)write(6,*) "NG"
if (b1(2)%y(2)/=14)write(6,*) "NG"
xx=(/15,16/)
b1(2)%x=xx
b1(2)%y=(/17,18/)
if (b1(2)%x(1)/=15)write(6,*) "NG"
if (b1(2)%x(2)/=16)write(6,*) "NG"
if (b1(2)%y(1)/=17)write(6,*) "NG"
if (b1(2)%y(2)/=18)write(6,*) "NG"
xx=(/21,22/)
b1(2)%x(1)=xx(1)
b1(2)%x(2)=xx(2)
b1(2)%y(1)=23
b1(2)%y(2)=24
if (b1(2)%x(1)/=21)write(6,*) "NG"
if (b1(2)%x(2)/=22)write(6,*) "NG"
if (b1(2)%y(1)/=23)write(6,*) "NG"
if (b1(2)%y(2)/=24)write(6,*) "NG"

xx=(/11,12/)
b2(2)=a(xx,(/13,14/))
if (b2(2)%x(1)/=11)write(6,*) "NG"
if (b2(2)%x(2)/=12)write(6,*) "NG"
if (b2(2)%y(1)/=13)write(6,*) "NG"
if (b2(2)%y(2)/=14)write(6,*) "NG"
xx=(/15,16/)
b2(2)%x=xx
b2(2)%y=(/17,18/)
if (b2(2)%x(1)/=15)write(6,*) "NG"
if (b2(2)%x(2)/=16)write(6,*) "NG"
if (b2(2)%y(1)/=17)write(6,*) "NG"
if (b2(2)%y(2)/=18)write(6,*) "NG"
xx=(/21,22/)
b2(2)%x(1)=xx(1)
b2(2)%x(2)=xx(2)
b2(2)%y(1)=23
b2(2)%y(2)=24
if (b2(2)%x(1)/=21)write(6,*) "NG"
if (b2(2)%x(2)/=22)write(6,*) "NG"
if (b2(2)%y(1)/=23)write(6,*) "NG"
if (b2(2)%y(2)/=24)write(6,*) "NG"

yy=(/11,12/)
b1(2)=a(yy,(/13,14/))
if (b1(2)%x(1)/=11)write(6,*) "NG"
if (b1(2)%x(2)/=12)write(6,*) "NG"
if (b1(2)%y(1)/=13)write(6,*) "NG"
if (b1(2)%y(2)/=14)write(6,*) "NG"
yy=(/15,16/)
b1(2)%x=yy
b1(2)%y=(/17,18/)
if (b1(2)%x(1)/=15)write(6,*) "NG"
if (b1(2)%x(2)/=16)write(6,*) "NG"
if (b1(2)%y(1)/=17)write(6,*) "NG"
if (b1(2)%y(2)/=18)write(6,*) "NG"
yy=(/21,22/)
b1(2)%x(1)=yy(1)
b1(2)%x(2)=yy(2)
b1(2)%y(1)=23
b1(2)%y(2)=24
if (b1(2)%x(1)/=21)write(6,*) "NG"
if (b1(2)%x(2)/=22)write(6,*) "NG"
if (b1(2)%y(1)/=23)write(6,*) "NG"
if (b1(2)%y(2)/=24)write(6,*) "NG"

yy=(/11,12/)
b2(2)=a(yy,(/13,14/))
if (b2(2)%x(1)/=11)write(6,*) "NG"
if (b2(2)%x(2)/=12)write(6,*) "NG"
if (b2(2)%y(1)/=13)write(6,*) "NG"
if (b2(2)%y(2)/=14)write(6,*) "NG"
yy=(/15,16/)
b2(2)%x=yy
b2(2)%y=(/17,18/)
if (b2(2)%x(1)/=15)write(6,*) "NG"
if (b2(2)%x(2)/=16)write(6,*) "NG"
if (b2(2)%y(1)/=17)write(6,*) "NG"
if (b2(2)%y(2)/=18)write(6,*) "NG"
yy=(/21,22/)
b2(2)%x(1)=yy(1)
b2(2)%x(2)=yy(2)
b2(2)%y(1)=23
b2(2)%y(2)=24
if (b2(2)%x(1)/=21)write(6,*) "NG"
if (b2(2)%x(2)/=22)write(6,*) "NG"
if (b2(2)%y(1)/=23)write(6,*) "NG"
if (b2(2)%y(2)/=24)write(6,*) "NG"
end subroutine
end
use m
type(a),allocatable::a1(:)
type(a)            ::b1(2)
call s1(a1,b1,2) 
if (a1(2)%x(1)/=21)write(6,*) "NG"
if (a1(2)%x(2)/=22)write(6,*) "NG"
if (a1(2)%y(1)/=23)write(6,*) "NG"
if (a1(2)%y(2)/=24)write(6,*) "NG"
if (b1(2)%x(1)/=21)write(6,*) "NG"
if (b1(2)%x(2)/=22)write(6,*) "NG"
if (b1(2)%y(1)/=23)write(6,*) "NG"
if (b1(2)%y(2)/=24)write(6,*) "NG"
print *,'pass'
end
