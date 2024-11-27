 call s1
 print *,'pass'
 end
 module m1
  contains
 function   sss2()
   type x
     sequence
     integer ::i1=1
     integer ::i2=2
     integer ::i3=3
     integer,dimension(2) ::i4=4
   end type
   type (x)::y
   type (x)::yy
    if (y%i1/=1)write(6,*) "NG"
    if (y%i2/=2)write(6,*) "NG"
    if (y%i3/=3)write(6,*) "NG"
    if (any(y%i4/=4))write(6,*) "NG"
    if (yy%i1/=1)write(6,*) "NG"
    if (yy%i2/=2)write(6,*) "NG"
    if (yy%i3/=3)write(6,*) "NG"
    if (any(yy%i4/=4))write(6,*) "NG"
   y=x(-1,-1,-1,-1)
   yy=x(-1,-1,-1,-1)
   call ss(y)
    if (y%i1/=1)write(6,*) "NG"
    if (y%i2/=2)write(6,*) "NG"
    if (y%i3/=3)write(6,*) "NG"
    if (any(y%i4/=4))write(6,*) "NG"
   y=x(-1,-1,-1,-1)
   call ss(y,yy)
    if (y%i1/=1)write(6,*) "NG"
    if (y%i2/=2)write(6,*) "NG"
    if (y%i3/=3)write(6,*) "NG"
    if (any(y%i4/=4))write(6,*) "NG"
    if (yy%i1/=1)write(6,*) "NG"
    if (yy%i2/=2)write(6,*) "NG"
    if (yy%i3/=3)write(6,*) "NG"
    if (any(yy%i4/=4))write(6,*) "NG"
    sss2=0
 end function
    subroutine ss(z,zz)
   type x
     sequence
     integer ::i1=1
     integer ::i2=2
     integer ::i3=3
     integer,dimension(2) ::i4=4
   end type
    type(x),intent(out)::z,zz
    optional zz
    if (z%i1/=1)write(6,*) "NG"
    if (z%i2/=2)write(6,*) "NG"
    if (z%i3/=3)write(6,*) "NG"
    if (any(z%i4/=4))write(6,*) "NG"
    if (present(zz)) then
    if (zz%i1/=1)write(6,*) "NG"
    if (zz%i2/=2)write(6,*) "NG"
    if (zz%i3/=3)write(6,*) "NG"
    if (any(zz%i4/=4))write(6,*) "NG"
    endif
    if (1==2) z%i1=5
    if (1==2) zz%i1=5
    end subroutine 
 subroutine sss1
   type x
     sequence
     integer ::i1=1
     integer ::i2=2
     integer ::i3=3
     integer,dimension(2) ::i4=4
   end type
   type (x)::y
   type (x)::yy
    if (y%i1/=1)write(6,*) "NG"
    if (y%i2/=2)write(6,*) "NG"
    if (y%i3/=3)write(6,*) "NG"
    if (any(y%i4/=4))write(6,*) "NG"
    if (yy%i1/=1)write(6,*) "NG"
    if (yy%i2/=2)write(6,*) "NG"
    if (yy%i3/=3)write(6,*) "NG"
    if (any(yy%i4/=4))write(6,*) "NG"
   y=x(-1,-1,-1,-1)
   yy=x(-1,-1,-1,-1)
   call ss(y)
    if (y%i1/=1)write(6,*) "NG"
    if (y%i2/=2)write(6,*) "NG"
    if (y%i3/=3)write(6,*) "NG"
    if (any(y%i4/=4))write(6,*) "NG"
   y=x(-1,-1,-1,-1)
   call ss(y,yy)
    if (y%i1/=1)write(6,*) "NG"
    if (y%i2/=2)write(6,*) "NG"
    if (y%i3/=3)write(6,*) "NG"
    if (any(y%i4/=4))write(6,*) "NG"
    if (yy%i1/=1)write(6,*) "NG"
    if (yy%i2/=2)write(6,*) "NG"
    if (yy%i3/=3)write(6,*) "NG"
    if (any(yy%i4/=4))write(6,*) "NG"
    end subroutine 
 function   ss2()
   type x
     sequence
     integer ::i1=1
     integer ::i2=2
     integer ::i3=3
     integer,dimension(2) ::i4=4
   end type
   type (x)::y
   type (x)::yy
    if (y%i1/=1)write(6,*) "NG"
    if (y%i2/=2)write(6,*) "NG"
    if (y%i3/=3)write(6,*) "NG"
    if (any(y%i4/=4))write(6,*) "NG"
    if (yy%i1/=1)write(6,*) "NG"
    if (yy%i2/=2)write(6,*) "NG"
    if (yy%i3/=3)write(6,*) "NG"
    if (any(yy%i4/=4))write(6,*) "NG"
   y=x(-1,-1,-1,-1)
   yy=x(-1,-1,-1,-1)
   call ss(y)
    if (y%i1/=1)write(6,*) "NG"
    if (y%i2/=2)write(6,*) "NG"
    if (y%i3/=3)write(6,*) "NG"
    if (any(y%i4/=4))write(6,*) "NG"
   y=x(-1,-1,-1,-1)
   call ss(y,yy)
    if (y%i1/=1)write(6,*) "NG"
    if (y%i2/=2)write(6,*) "NG"
    if (y%i3/=3)write(6,*) "NG"
    if (any(y%i4/=4))write(6,*) "NG"
    if (yy%i1/=1)write(6,*) "NG"
    if (yy%i2/=2)write(6,*) "NG"
    if (yy%i3/=3)write(6,*) "NG"
    if (any(yy%i4/=4))write(6,*) "NG"
    ss2=0
   end function
 subroutine ss1
   type x
     sequence
     integer ::i1=1
     integer ::i2=2
     integer ::i3=3
     integer,dimension(2) ::i4=4
   end type
   type (x)::y
   type (x)::yy
    if (y%i1/=1)write(6,*) "NG"
    if (y%i2/=2)write(6,*) "NG"
    if (y%i3/=3)write(6,*) "NG"
    if (any(y%i4/=4))write(6,*) "NG"
    if (yy%i1/=1)write(6,*) "NG"
    if (yy%i2/=2)write(6,*) "NG"
    if (yy%i3/=3)write(6,*) "NG"
    if (any(yy%i4/=4))write(6,*) "NG"
   y=x(-1,-1,-1,-1)
   yy=x(-1,-1,-1,-1)
   call ss(y)
    if (y%i1/=1)write(6,*) "NG"
    if (y%i2/=2)write(6,*) "NG"
    if (y%i3/=3)write(6,*) "NG"
    if (any(y%i4/=4))write(6,*) "NG"
   y=x(-1,-1,-1,-1)
   call ss(y,yy)
    if (y%i1/=1)write(6,*) "NG"
    if (y%i2/=2)write(6,*) "NG"
    if (y%i3/=3)write(6,*) "NG"
    if (any(y%i4/=4))write(6,*) "NG"
    if (yy%i1/=1)write(6,*) "NG"
    if (yy%i2/=2)write(6,*) "NG"
    if (yy%i3/=3)write(6,*) "NG"
    if (any(yy%i4/=4))write(6,*) "NG"
 end subroutine
 end
  subroutine s1
use m1
  do jj=1,5
    call ss1
    if (ss2()/=0)write(6,*) "NG"
    call sss1
    if (sss2()/=0)write(6,*) "NG"
  end do
end
