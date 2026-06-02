class(*),allocatable :: ptr(:)
character(len=2) :: qq(3)
character :: pp(3)

pp = ["1","2","3"]
qq = ["AA","BB","CC"]

allocate(ptr, source=["XX", "YY"])

call sub(ptr, qq, pp)

contains
subroutine sub(cptr, bb, aa)
 class(*),allocatable :: cptr(:)
 character(len=*) :: bb(*)
 character :: aa(*)

do i=1,3
 cptr = bb(1:3) // aa(1)
end do
 select type(cptr)
  type is(character(len=*))
   if(size(cptr) /= 3) print*,101
   if(len(cptr) /= 3) print*,102
   if(any(cptr /= ["AA1","BB1","CC1"])) print*,103, cptr

  class default
   print*,911
 end select

do i=1,3
 cptr = bb(2:3) // aa(1:3:2) // fun()
end do
 select type(cptr)
  type is(character(len=*))
   if(size(cptr) /= 2) print*,201
   if(len(cptr) /= 5) print*,202
   if(any(cptr /= ["BB1XX","CC3YY"])) print*,203, cptr

  class default
   print*,912
 end select

do i=1,3
 cptr = bb(1:3) // aa(1:3:1) // fun()
end do
 select type(cptr)
  type is(character(len=*))
   if(size(cptr) /= 3) print*,301
   if(len(cptr) /= 5) print*,302
   if(any(cptr /= ["AA1XX","BB2YY","CC3ZZ"])) print*,303, cptr

  class default
   print*,912
 end select

 print*,"PASS"
end subroutine

function fun()
 character(len=:),allocatable::fun(:)
 allocate(character(len=2)::fun(3))
 fun = ["XX", "YY", "ZZ"]
 end function
end
