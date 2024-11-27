 call s1
 print *,'pass'
 end
 subroutine s1
   type x
     integer ::i1=1
     integer ::i2=2
     integer ::i3=3
     integer,dimension(2) ::i4=4
   end type
  call ss(2)
  contains
    subroutine ss(i)
    type(x)::z(i)
    if (any(z%i1/=1))write(6,*) "NG"
    if (any(z%i2/=2))write(6,*) "NG"
    if (any(z%i3/=3))write(6,*) "NG"
    if (any(z(1)%i4/=4))write(6,*) "NG"
    if (any(z(2)%i4/=4))write(6,*) "NG"
    end subroutine 
 end
