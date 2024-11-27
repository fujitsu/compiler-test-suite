call s1
print *,'pass'
end
subroutine s1
   type y
    integer,allocatable,dimension(:)::y2
    integer::y3
   end type
   type x
    integer::x1
    type(y),allocatable,dimension(:)::x7
   end type
   type(x),dimension(1)::xa
 xa(1)%x1=10
 allocate(xa(1)%x7(2))
 xa(1)%x7(2)%y3=20
 allocate(xa(1)%x7(2)%y2(2))
 xa(1)%x7(2)%y2=30
 if (xa(1)%x1/=10)write(6,*) "NG"
 if (xa(1)%x7(2)%y3/=20)write(6,*) "NG"
 if (any(xa(1)%x7(2)%y2/=30))write(6,*) "NG"
end subroutine 
