program main
integer*2,parameter::a = 2_2
integer*2,parameter::b = 3_2
integer*2::frout = merge(a,b, .true.)
integer*2::bckout
integer::k = kind(merge(a, b, .true.))
bckout = merge(a,b,.true.)
print *,frout, "--",bckout

if (frout.ne.bckout) then
print *,'??? (Error: I2->I2) ???'
else
print*," I2->I2 OK"
endif


call check1(k,kind(merge(a,b,.false.)))
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






      
