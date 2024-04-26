PROGRAM MAIN
TYPE type1
INTEGER:: a
END TYPE
TYPE, EXTENDS (type1):: type2
INTEGER:: b
END TYPE
integer :: ii
CLASS (type1), ALLOCATABLE:: objptr1(:)
TYPE (type2):: y(10)
ALLOCATE(objptr1, mold=y,stat=ii)
if(ii .eq. 0)then
print*,'pass'
else
print*,101
y%b=5
end if
END PROGRAM MAIN
