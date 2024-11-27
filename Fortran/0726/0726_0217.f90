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
   type (x)::y=x(-1,-1,-1,-1)
   call ss(y)
   contains
    subroutine ss(z)
    type(x),intent(out)::z
    if (z%i1/=1)write(6,*) "NG"
    if (z%i2/=2)write(6,*) "NG"
    if (z%i3/=3)write(6,*) "NG"
    if (any(z%i4/=4))write(6,*) "NG"
    end subroutine 
 end
