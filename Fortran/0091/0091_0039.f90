program main
character(len = 10),parameter::ch1 = "xyz"
character(len = 10),parameter::ch2 =  "abc"
character(len = 10)::frout = merge(ch1,ch2, .true.)
character(len =10)::bckout
integer::k = kind(merge(ch1, ch2, .true.))
bckout = merge(ch1,ch2,.true.)
print *,frout, "--",bckout

if (frout.ne.bckout) then
print *,'??? (Error: I2->I2) ???'
else
print*," I2->I2 OK"
endif


call check1(k,kind(merge(ch1,ch2,.false.)))
END


      subroutine check1(x,y)
      integer x,y
      print *,x ,"--", y
      if (x.ne.y) then
        print *,'??? (KIND Error:) ???'
      else
        print*, "KIND OK"
      endif
      end subroutine






      
