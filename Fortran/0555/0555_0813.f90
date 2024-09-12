program main
class(*),pointer :: act_ptr
class(*),pointer :: act_ptr1

integer ,pointer:: act_1
character(len=10),pointer :: act_2
integer(kind=8) ,pointer:: act_3

act_ptr1=>act_1
call sub(act_ptr1,act_ptr)
if(sizeof(act_ptr) /=4)then
print *,101
else
print *,"pass"
endif

act_ptr1=>act_2
call sub(act_ptr1,act_ptr)
if(sizeof(act_ptr) /=10)then
print *,202
else
print *,"pass"
endif

act_ptr1=>act_3
call sub(act_ptr1,act_ptr)
if(sizeof(act_ptr) /=8)then
print *,303
else
print *,"pass"
endif

contains
subroutine sub(dummy1,dummy2)
class(*),pointer :: dummy1
class(*),pointer :: dummy2
dummy2 =>NULL(dummy1)
end subroutine
end program
