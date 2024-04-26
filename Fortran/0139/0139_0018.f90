program main
character(kind = 4,len = 10),parameter::ch1 = "xyz"
character(kind = 4,len = 10),parameter::ch2 =  "abc"
character(kind = 4,len = 10)::frout = merge(ch1,ch2, .true.)
character(kind = 4,len =10)::bckout
bckout = merge(ch1,ch2,.true.)
print *,frout, "--",bckout

if (frout.ne.bckout) then
print *,'??? (Error: I2->I2) ???'
else
print*," I2->I2 OK"
endif


END
