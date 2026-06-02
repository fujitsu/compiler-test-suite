 class(*),allocatable :: cptr(:)

 integer :: aa(2)
 real(kind=4) :: bb(3)
 complex(kind=4) :: cc(2)
 complex(kind=4),allocatable :: dd(:)

 aa = [1,2]
 bb = [1.0,2.0,3.0]
 cc = [(1.0,2.0),(3.0,4.0)]

do i=1,3
 cptr = aa + 1
end do
 select type(cptr)
  type is(integer)
   if(size(cptr) /= 2) print*,101
   if(any(cptr /= [2,3])) print*,102, cptr

  class default
   print*,911
 end select

do i=1,3
 cptr = bb + 1.0
end do
 select type(cptr)
  type is(real)
   if(size(cptr) /= 3) print*,201
   if(any(cptr /= [2.0,3.0,4.0])) print*,202, cptr

  class default
   print*,912
 end select

 allocate(dd(2))
 dd = cc + (1.0,2.0)
do i=1,3
 cptr = cc + (1.0,2.0)
end do
 select type(cptr)
  type is(complex)
   if(size(cptr) /= 2) print*,201
   if(any(cptr /= [(2.0,4.0),(4.0,6.0)])) print*,302, cptr
   cptr = cc + (1.0,2.0)

  class default
   print*,913
 end select

 print*,"PASS"
 end
