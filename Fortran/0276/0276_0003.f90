module m1
type ty
integer :: ii
end type

type ,extends(ty) :: ty1
procedure(ifun),nopass,pointer::fptr
procedure(cfun),nopass,pointer::cptr
end type

integer,target :: trg = 4
character(len=4),target :: chtrg='cfun'
contains
        function ifun()
        integer,pointer :: ifun
        ifun=>trg
        end function
        function cfun()
        character(len=4),pointer :: cfun
        cfun=>chtrg
        end function
end

program main
use m1
type(ty),pointer :: objalc
type(ty1) :: obj(1,2)
obj(1,2)%fptr=>ifun
obj(1,2)%cptr=>cfun
if(obj(1,2)%fptr() .ne. 4)print*,"101"
allocate(objalc,stat=obj(1,2)%fptr(),errmsg=obj(1,2)%cptr())
if(trg .ne. 0)print*,"102"
if(chtrg .ne. 'cfun')print*,"103"
obj(1,2)%fptr()=10
obj(1,2)%cptr()='dfun'
deallocate(objalc,stat=obj(1,2)%fptr(),errmsg=obj(1,2)%cptr())
if(trg .ne. 0)print*,"104"
if(chtrg .ne. 'dfun')print*,"105"
print*,"Pass"
end
