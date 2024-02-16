program calling_func
 implicit none

 call get_val()

end program calling_func

subroutine get_val()
 integer,parameter,DIMENSION(5)::x = [1,9,8,3,9]
 integer,parameter::k(1) = minloc(x, dim=1,mask=x>1,kind=4,back=.true.)
 integer::m(1)
  m=minloc(x, dim=1,mask=x>1,kind=4, back=.true.)
 if(k(1).eq.m(1).and.k(1).eq.4)then
  print*,"PASS"
 else
  print*,"FAIL"
 end if
end subroutine get_val
