subroutine sub( c1)
character(*)     :: c1(*)
if (c1(1) /='1') print *,3101
end subroutine
subroutine sub0( c1)
character(*)    :: c1
if (c1 /='1') print *,3102
end subroutine

integer::k1=1,k2=2
character(1) :: x1(2)
character(1) :: x0
type y
character(1) :: x0
character(1) :: x1(2)
end type
type (y):: y1
integer::v(2)=[2,1]
  
x1 ='1'
x0 ='1'
y1%x1 ='1'
y1%x0 ='1'
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

 call sub( (x1(1:2)(:) ))
 call sub( (x1(1:k2)(:) ))
 call sub( (x1(k1:2)(:) ))
 call sub( (x1(v   )(:) ))
 call sub( (x1      (:) ))
 call sub( (y1%x1(1:2)(:) ))
 call sub( (y1%x1(1:k2)(:) ))
 call sub( (y1%x1(k1:2)(:) ))
 call sub( (y1%x1(k1:2)(:) ))
 call sub( (y1%x1      (:) ))
 call sub0( (x0      (:) ))
 call sub0( (x1(2)   (:) ))
 call sub0( (x1(k2)  (:) ))
 call sub0( (y1%x0      (:) ))
 call sub0( (y1%x1(2)   (:) ))
 call sub0( (y1%x1(k2)  (:) ))

 call sub( (x1(1:2)(1:1) ))
 call sub( (x1(1:k2)(1:1) ))
 call sub( (x1(k1:2)(1:1) ))
 call sub( (x1(v   )(1:1) ))
 call sub( (x1      (1:1) ))
 call sub( (y1%x1(1:2)(1:1) ))
 call sub( (y1%x1(1:k2)(1:1) ))
 call sub( (y1%x1(k1:2)(1:1) ))
 call sub( (y1%x1(k1:2)(1:1) ))
 call sub( (y1%x1      (1:1) ))
 call sub0( (x0      (1:1) ))
 call sub0( (x1(2)   (1:1) ))
 call sub0( (x1(k2)  (1:1) ))
 call sub0( (y1%x0      (1:1) ))
 call sub0( (y1%x1(2)   (1:1) ))
 call sub0( (y1%x1(k2)  (1:1) ))

 call sub( (x1(1:2)(k1:1) ))
 call sub( (x1(1:k2)(k1:1) ))
 call sub( (x1(k1:2)(k1:1) ))
 call sub( (x1(v   )(k1:1) ))
 call sub( (x1      (k1:1) ))
 call sub( (y1%x1(1:2)(k1:1) ))
 call sub( (y1%x1(1:k2)(k1:1) ))
 call sub( (y1%x1(k1:2)(k1:1) ))
 call sub( (y1%x1(k1:2)(k1:1) ))
 call sub( (y1%x1      (k1:1) ))
 call sub0( (x0      (k1:1) ))
 call sub0( (x1(2)   (k1:1) ))
 call sub0( (x1(k2)  (k1:1) ))
 call sub0( (y1%x0      (k1:1) ))
 call sub0( (y1%x1(2)   (k1:1) ))
 call sub0( (y1%x1(k2)  (k1:1) ))
print *,'pass'
end
