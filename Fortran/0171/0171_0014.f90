subroutine sub( c1)
 integer     :: c1(*)
if (c1(1) /=1) print *,3101
end subroutine
subroutine sub0( c1)
 integer     :: c1
if (c1 /=1) print *,3102
end subroutine

integer::k1=1,k2=2
integer :: x1(2)
integer :: x0
type y
integer :: x0   
integer :: x1(2)
end type
type (y):: y1
integer::v(2)=[2,1]
  
x1 =1
x0 =1
y1%x1 =1
y1%x0 =1
 call sub( (x1(1:2)))
 call sub( (x1(1:k2)))
 call sub( (x1(k1:2)))
 call sub( (x1(v   )))
 call sub( (x1      ))
 call sub( (y1%x1(1:2)))
 call sub( (y1%x1(1:k2)))
 call sub( (y1%x1(k1:2)))
 call sub( (y1%x1(k1:2)))
 call sub( (y1%x1      ))
 call sub0( (x0      ))
 call sub0( (x1(2)   ))
 call sub0( (x1(k2)  ))
 call sub0( (y1%x0      ))
 call sub0( (y1%x1(2)   ))
 call sub0( (y1%x1(k2)  ))
print *,'pass'
end
