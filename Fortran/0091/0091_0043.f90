program main
integer*4,parameter::a = 12_4
integer*4,parameter::b = 23_4
integer*4::frout = merge(a,b, .true.)
integer*4::bckout
integer::k = kind(merge(a, b, .true.))
bckout = merge(a,b,.true.)
print *,frout, "--",bckout

if (frout.ne.bckout) then
print *,'??? (Error: I4->I4) ???'
else
print*," I4->I4 OK"
endif


call check1(k,kind(merge(a,b,.true.)))
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







      
