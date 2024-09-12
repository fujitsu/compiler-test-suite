TYPE first
 Integer :: i1 =15
 Integer :: i3 =5
END TYPE

TYPE,EXTENDS(first) :: second
 Integer :: i2=10
END TYPE
 
character (len =20) :: msg

CLASS(first),allocatable :: AAA(:)
type(first),allocatable :: AAA1(:)
 
ALLOCATE(first::AAA(10),AAA1(10) , errmsg = msg)

AAA%i1=2
AAA(2)%i1=4
AAA(2)%i3=5
 
SELECT TYPE(AAA)
TYPE IS(FIRST)
print *,101
CLASS IS(FIRST)
print *,201
TYPE IS(second)
print *,AAA(2)%i1
print *,AAA(2)%i3
if(AAA(2)%i2 /=10)then
print *,301
else
print*,"PASS"
ENDIF
CLASS DEFAULT
print *,401
end select
END PROGRAM
