integer ::a(3)=[1,2,3]
integer ::b(8)=[1,2,3,4,5,6,7,8]
 call sub(a(1:3:2),b(1:8:4))
 if (any(a/=[11,2,13])) print *,101,a
 if (any(b/=[11,2,3,4,15,6,7,8])) print *,102,b
 print *,'pass'
 contains
subroutine sub(x,y)
 integer,contiguous:: x(:)
 integer,contiguous:: y(:)

 if(is_contiguous(x).neqv..true.)print*,"103"
 if(is_contiguous(y).neqv..true.)print*,"104"
 if (any(x/=[1,3])) print *,105
  if(loc(a(1)).eq.loc(x(1)))print*,"106",loc(a(1)) ,loc(x(1))
  if(loc(a(3)).eq.loc(x(2)))print*,"107",loc(a(3)) ,loc(x(2))
  if(loc(b(1)).eq.loc(y(2)))print*,"108",loc(a(1)) ,loc(y(1))
  if(loc(b(5)).eq.loc(y(2)))print*,"109",loc(a(1)) ,loc(y(2))
  x=x+10
  y=y+10
  end subroutine
  end

