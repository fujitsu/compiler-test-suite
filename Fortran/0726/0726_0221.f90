 call s1
 print *,'pass'
 end
 subroutine s1
   type xx
     integer ::i21=11
     integer,dimension(2) ::i22=12
   end type
   type x
     integer ::i1=1
     type(xx)::i2=xx(21,(/22,23/))
     integer ::i3=3
     integer,dimension(2) ::i4=4
   end type
   type (x)::y=x(-1,xx(-1,-1),-1,-1)
   call ss(y)
   contains
    subroutine ss(z)
    type(x),intent(out)::z
    if (1==2)z%i1=0
    if (z%i1/=1)write(6,*) "NG"
    if (z%i2%i21/=21)write(6,*) "NG"
    if (any(z%i2%i22/=(/22,23/)))write(6,*) "NG"
    if (z%i3/=3)write(6,*) "NG"
    if (any(z%i4/=4))write(6,*) "NG"
    end subroutine 
 end
