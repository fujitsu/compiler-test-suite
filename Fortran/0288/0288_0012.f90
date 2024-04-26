call test()
print *,'pass'
end
subroutine test()
real :: a=1.5, b(10)
integer :: i=2, j(10)
character (len = 5) :: string5 = "abcde"
character (len = 7) :: string7 = "cdefghi"
type person
integer :: age
character (len = 25) :: name
end type person
type (person) :: person1, person2
i = a
if (i.ne.1) print *,'err1'
j = i
do ii=1,10
if (j(ii).ne.1) print *,'err1'
end do
b=1.2_4
j = b
do ii=1,10
if (j(ii).ne.1) print *,'err1'
end do
string5 = string7
if (string5.ne."cdefg") print *,'err3'
string7 = string5
if (string7 .ne."cdefg  ") print *,'err2'
person1 % age = 5
person1 % name = "john"
person2 = person1
if (person2% age .ne. 5   )print *,'err'
if (person2% name .ne. "john"   )print *,'err'
end
