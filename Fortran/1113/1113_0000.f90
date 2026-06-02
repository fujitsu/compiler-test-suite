integer,allocatable:: a,c
integer,target :: trg=7
character(len=5),target :: chtrg='error'
allocate(a,stat=fun())
if(trg .ne. 0)print*,"101",trg
allocate(c,errmsg=chfun())
if(chtrg .ne. "error")print*,"102",chtrg
fun()=10
chfun()="ermsg"
deallocate(a,c,stat=fun(),errmsg=chfun())
if(trg .ne. 0)print*,"103"
if(chtrg .ne. "ermsg")print*,"104"
print*,"Pass"
contains
        function fun()
        integer,pointer::fun
        fun=>trg
        end function
        function chfun()
        character(len=5),pointer::chfun
        chfun=>chtrg
        end function

end
