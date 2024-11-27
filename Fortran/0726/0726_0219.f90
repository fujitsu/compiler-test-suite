 call s1
 print *,'pass'
 end
 subroutine s1
   type x
     integer ::i1=1
     integer,pointer ::i2=>null()
     integer ::i3=3
     integer,pointer,dimension(:) ::i4=>null()
     integer,dimension(2) ::i5=(/4,5/)
     integer              ::i6=6
   end type
   type (x)::y
   integer,target::j1,j2(2)
   y=x(-1,j1,-1,j2,-1,-1)
   call ss(y)
   contains
    subroutine ss(z)
    type(x),intent(out)::z
    if (z%i1/=1)write(6,*) "NG"
    if (associated(z%i2))write(6,*) "NG"
    if (z%i3/=3)write(6,*) "NG"
    if (associated(z%i4))write(6,*) "NG"
    if (any(z%i5/=(/4,5/)))write(6,*) "NG"
    if (    z%i6/=6)write(6,*) "NG"
    end subroutine 
 end
