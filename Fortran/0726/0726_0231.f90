 call s1
 print *,'pass'
 end
  subroutine s1
  do jj=1,5
    call ss1
    if (ss2()/=0)write(6,*) "NG"
    call sss1
    if (sss2()/=0)write(6,*) "NG"
  end do
  contains
 function   sss2()
   type x
     sequence
     integer ::i1=1
     integer ::i2=2
     integer ::i3=3
     integer,dimension(2) ::i4=4
   end type
  type(x),dimension(2,3)::y
  type(x),dimension(2,3)::yy
    if (any(y%i1/=1))write(6,*) "NG"
    if (any(y%i2/=2))write(6,*) "NG"
    if (any(y%i3/=3))write(6,*) "NG"
    do kk=1,2; if (any(y%i4(kk)/=4))write(6,*) "NG"; end do
    if (any(yy%i1/=1))write(6,*) "NG"
    if (any(yy%i2/=2))write(6,*) "NG"
    if (any(yy%i3/=3))write(6,*) "NG"
    do kk=1,2; if (any(yy%i4(kk)/=4))write(6,*) "NG"; end do
   y=x(-1,-1,-1,-1)
   yy=x(-1,-1,-1,-1)
   call ss(y)
    if (any(y%i1/=1))write(6,*) "NG"
    if (any(y%i2/=2))write(6,*) "NG"
    if (any(y%i3/=3))write(6,*) "NG"
    do kk=1,2; if (any(y%i4(kk)/=4))write(6,*) "NG"; end do
   y=x(-1,-1,-1,-1)
   call ss(y,yy)
    if (any(y%i1/=1))write(6,*) "NG"
    if (any(y%i2/=2))write(6,*) "NG"
    if (any(y%i3/=3))write(6,*) "NG"
    do kk=1,2; if (any(y%i4(kk)/=4))write(6,*) "NG"; end do
    if (any(yy%i1/=1))write(6,*) "NG"
    if (any(yy%i2/=2))write(6,*) "NG"
    if (any(yy%i3/=3))write(6,*) "NG"
    do kk=1,2; if (any(yy%i4(kk)/=4))write(6,*) "NG"; end do
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
    type(x),dimension(2,3),intent(out)::z,zz
    optional zz
    if (any(z%i1/=1))write(6,*) "NG"
    if (any(z%i2/=2))write(6,*) "NG"
    if (any(z%i3/=3))write(6,*) "NG"
    do kk=1,2; if (any(z%i4(kk)/=4))write(6,*) "NG"; end do
    if (present(zz)) then
    if (any(zz%i1/=1))write(6,*) "NG"
    if (any(zz%i2/=2))write(6,*) "NG"
    if (any(zz%i3/=3))write(6,*) "NG"
    do kk=1,2; if (any(zz%i4(kk)/=4))write(6,*) "NG"; end do
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
  type(x),dimension(2,3)::y
  type(x),dimension(2,3)::yy
    if (any(y%i1/=1))write(6,*) "NG"
    if (any(y%i2/=2))write(6,*) "NG"
    if (any(y%i3/=3))write(6,*) "NG"
    do kk=1,2; if (any(y%i4(kk)/=4))write(6,*) "NG"; end do
    if (any(yy%i1/=1))write(6,*) "NG"
    if (any(yy%i2/=2))write(6,*) "NG"
    if (any(yy%i3/=3))write(6,*) "NG"
    do kk=1,2; if (any(yy%i4(kk)/=4))write(6,*) "NG"; end do
   y=x(-1,-1,-1,-1)
   yy=x(-1,-1,-1,-1)
   call ss(y)
    if (any(y%i1/=1))write(6,*) "NG"
    if (any(y%i2/=2))write(6,*) "NG"
    if (any(y%i3/=3))write(6,*) "NG"
    do kk=1,2; if (any(y%i4(kk)/=4))write(6,*) "NG"; end do
   y=x(-1,-1,-1,-1)
   call ss(y,yy)
    if (any(y%i1/=1))write(6,*) "NG"
    if (any(y%i2/=2))write(6,*) "NG"
    if (any(y%i3/=3))write(6,*) "NG"
    do kk=1,2; if (any(y%i4(kk)/=4))write(6,*) "NG"; end do
    if (any(yy%i1/=1))write(6,*) "NG"
    if (any(yy%i2/=2))write(6,*) "NG"
    if (any(yy%i3/=3))write(6,*) "NG"
    do kk=1,2; if (any(yy%i4(kk)/=4))write(6,*) "NG"; end do
    end subroutine 
end
 function   ss2()
   type x
     sequence
     integer ::i1=1
     integer ::i2=2
     integer ::i3=3
     integer,dimension(2) ::i4=4
   end type
 interface
    subroutine ss(z,zz)
   type x
     sequence
     integer ::i1=1
     integer ::i2=2
     integer ::i3=3
     integer,dimension(2) ::i4=4
   end type
    type(x),dimension(2,3),intent(out)::z,zz
    optional zz
 end subroutine
end interface
  type(x),dimension(2,3)::y
  type(x),dimension(2,3)::yy
    if (any(y%i1/=1))write(6,*) "NG"
    if (any(y%i2/=2))write(6,*) "NG"
    if (any(y%i3/=3))write(6,*) "NG"
    do kk=1,2; if (any(y%i4(kk)/=4))write(6,*) "NG"; end do
    if (any(yy%i1/=1))write(6,*) "NG"
    if (any(yy%i2/=2))write(6,*) "NG"
    if (any(yy%i3/=3))write(6,*) "NG"
    do kk=1,2; if (any(yy%i4(kk)/=4))write(6,*) "NG"; end do
   y=x(-1,-1,-1,-1)
   yy=x(-1,-1,-1,-1)
   call ss(y)
    if (any(y%i1/=1))write(6,*) "NG"
    if (any(y%i2/=2))write(6,*) "NG"
    if (any(y%i3/=3))write(6,*) "NG"
    do kk=1,2; if (any(y%i4(kk)/=4))write(6,*) "NG"; end do
   y=x(-1,-1,-1,-1)
   call ss(y,yy)
    if (any(y%i1/=1))write(6,*) "NG"
    if (any(y%i2/=2))write(6,*) "NG"
    if (any(y%i3/=3))write(6,*) "NG"
    do kk=1,2; if (any(y%i4(kk)/=4))write(6,*) "NG"; end do
    if (any(yy%i1/=1))write(6,*) "NG"
    if (any(yy%i2/=2))write(6,*) "NG"
    if (any(yy%i3/=3))write(6,*) "NG"
    do kk=1,2; if (any(yy%i4(kk)/=4))write(6,*) "NG"; end do
    ss2=0
   end function
 subroutine ss1
  interface
    subroutine ss(z,zz)
   type x
     sequence
     integer ::i1=1
     integer ::i2=2
     integer ::i3=3
     integer,dimension(2) ::i4=4
   end type
    type(x),dimension(2,3),intent(out)::z,zz
    optional zz
end subroutine
end interface
   type x
     sequence
     integer ::i1=1
     integer ::i2=2
     integer ::i3=3
     integer,dimension(2) ::i4=4
   end type
  type(x),dimension(2,3)::y
  type(x),dimension(2,3)::yy
    if (any(y%i1/=1))write(6,*) "NG"
    if (any(y%i2/=2))write(6,*) "NG"
    if (any(y%i3/=3))write(6,*) "NG"
    do kk=1,2; if (any(y%i4(kk)/=4))write(6,*) "NG"; end do
    if (any(yy%i1/=1))write(6,*) "NG"
    if (any(yy%i2/=2))write(6,*) "NG"
    if (any(yy%i3/=3))write(6,*) "NG"
    do kk=1,2; if (any(yy%i4(kk)/=4))write(6,*) "NG"; end do
   y=x(-1,-1,-1,-1)
   yy=x(-1,-1,-1,-1)
   call ss(y)
    if (any(y%i1/=1))write(6,*) "NG"
    if (any(y%i2/=2))write(6,*) "NG"
    if (any(y%i3/=3))write(6,*) "NG"
    do kk=1,2; if (any(y%i4(kk)/=4))write(6,*) "NG"; end do
   y=x(-1,-1,-1,-1)
   call ss(y,yy)
    if (any(y%i1/=1))write(6,*) "NG"
    if (any(y%i2/=2))write(6,*) "NG"
    if (any(y%i3/=3))write(6,*) "NG"
    do kk=1,2; if (any(y%i4(kk)/=4))write(6,*) "NG"; end do
    if (any(yy%i1/=1))write(6,*) "NG"
    if (any(yy%i2/=2))write(6,*) "NG"
    if (any(yy%i3/=3))write(6,*) "NG"
    do kk=1,2; if (any(yy%i4(kk)/=4))write(6,*) "NG"; end do
 end subroutine
    subroutine ss(z,zz)
   type x
     sequence
     integer ::i1=1
     integer ::i2=2
     integer ::i3=3
     integer,dimension(2) ::i4=4
   end type
    type(x),dimension(2,3),intent(out)::z,zz
    optional zz
    if (any(z%i1/=1))write(6,*) "NG"
    if (any(z%i2/=2))write(6,*) "NG"
    if (any(z%i3/=3))write(6,*) "NG"
    do kk=1,2; if (any(z%i4(kk)/=4))write(6,*) "NG"; end do
    if (present(zz)) then
    if (any(zz%i1/=1))write(6,*) "NG"
    if (any(zz%i2/=2))write(6,*) "NG"
    if (any(zz%i3/=3))write(6,*) "NG"
    do kk=1,2; if (any(zz%i4(kk)/=4))write(6,*) "NG"; end do
    endif
    if (1==2) z%i1=5
    if (1==2) zz%i1=5
    end subroutine 
