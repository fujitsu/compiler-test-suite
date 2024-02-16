program calling_func
 implicit none

 call get_val()

end program calling_func

subroutine get_val()
 implicit none
 integer,parameter,DIMENSION(5)::x = [1,9,8,45,9]
 integer,parameter::k(1) = maxloc(x, dim=1,mask=x<45,kind=4, back=.true.)
 integer::m(1)
  m=maxloc(x, dim=1,mask=x<45,kind=4, back=.true.)
 if(k(1).eq.m(1).and.k(1).eq.5)then
  print*,"PASS"
 else
  print*,"FAIL"
 end if 
end subroutine get_val


