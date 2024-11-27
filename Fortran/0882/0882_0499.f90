TYPE first
 Integer :: i1 =15
 Integer :: i3 =5
END TYPE

TYPE,EXTENDS(first) :: second
 Integer :: i2=10
END TYPE

character (len =20) :: msg,msg2

CLASS(first),allocatable :: AAA(:)
type(first),allocatable :: AAA1(:)
type(second) :: temp(10)

temp%i2=11
ALLOCATE(first::AAA1(10) , errmsg = msg)
ALLOCATE(AAA ,source = temp, errmsg = msg2)

AAA%i1=2
AAA(2)%i1=4
AAA(2)%i3=5

SELECT TYPE(AAA)
TYPE IS(FIRST)
print *,101
CLASS IS(FIRST)
print *,201
TYPE IS(second)
if(AAA(2)%i2 /=11)then
print *,301,AAA(2)%i2
else
print*,"PASS"
ENDIF
CLASS DEFAULT
print *,401
end select
END PROGRAM
