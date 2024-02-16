program main
real*4,parameter::a = 2.0_4
real*4,parameter::b = 3.0_4
real*4::c = merge(a,b, .true.)
integer::k = kind(merge(a, b, .true.))
call check(c , merge(a, b, .true.))
call check1(k,kind(merge(a,b,.true.)))
end





subroutine check(x,y)
real*4  x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: R->R) ???'
else
print*," R->R OK"
endif
end subroutine


      subroutine check1(x,y)
      integer x,y
      print *,x ,"--", y
      if (x.ne.y) then
        print *,'??? (KIND Error:) ???'
      else
        print*, "KIND OK"
      endif
      end subroutine

      
