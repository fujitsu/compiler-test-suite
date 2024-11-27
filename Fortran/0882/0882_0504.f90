PROGRAM main
TYPE first
 Integer :: i1=5
END TYPE

TYPE,EXTENDS(first) :: second
 Integer :: i2=10
END TYPE

CLASS(first), allocatable :: AAA(:)
ALLOCATE(second::AAA(10))


AAA%i1=2
AAA(2)%i1=4

SELECT TYPE(AAA)
class IS(second)
if(AAA(2)%i1 /=4)then
print *,"fail"
else
print *,"pass"
endif
END SELECT
END PROGRAM
