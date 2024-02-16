program main
logical*4,parameter::a = .true.
logical*4,parameter::b = .false.
logical*4::frout = merge(a,b, .false.)
logical*4::bckout
integer::k = kind(merge(a, b, .false.))
bckout = merge(a,b,.false.)
print *,frout, "--",bckout

if (frout.neqv.bckout) then
print *,'??? (Error: L4->L4) ???'
else
print*," L4->L4 OK"
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






      

