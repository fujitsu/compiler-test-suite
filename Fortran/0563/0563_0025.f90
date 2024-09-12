PROGRAM MAIN
implicit none
TYPE type1
INTEGER:: a
END TYPE
TYPE, EXTENDS (type1):: type2
INTEGER:: b
END TYPE
integer :: ii

CLASS (type1), POINTER:: objptr1(:),objptr2(:)
TYPE (type2):: y(10)
y%a=3
y%b=5

ALLOCATE(objptr1,objptr2, source=y,stat=ii)

if(ii .ne. 0)print*,101
if(size(objptr1).ne.10)print*,102
if(size(objptr2).ne.10)print*,103
if(any(objptr1%a.ne.3))print*,104
if(any(objptr2%a.ne.3))print*,105
if(lbound(objptr1,1).ne.1)print*,106
if(ubound(objptr1,1).ne.10)print*,107
if(lbound(objptr2,1).ne.1)print*,108
if(ubound(objptr2,1).ne.10)print*,109
print*,'pass'
END PROGRAM
