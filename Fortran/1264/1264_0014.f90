 class(*),allocatable :: cptr(:,:)
 class(*),allocatable :: cptr1(:,:)

 integer::aa(2) = [1,2]
 complex(kind=4) :: cc(2,2)
 real(kind=4),allocatable :: dd(:,:)

 allocate(dd(3,2))
 allocate(complex(kind=4)::cptr(1,2))
 cc = reshape([(1.0,2.0),(3.0,4.0),(5.0,6.0),(7.0,8.0)], shape(cc))
 dd = reshape([1.0,2.0,3.0,4.0,5.0,6.0], shape(dd))

do i=1,3
 cptr = (cc + REAL(cc(1,1)) + IMAG(cc(1,1))) * aa(2)
end do
 select type(cptr)
  type is(complex(kind=4))
   if(size(cptr) /= 4) print*,101
   if(any(cptr /= reshape([(8.0,4.0),(12.0,8.0),(16.0,12.0),(20.0,16.0)], shape(cc)))) print*,102!, cptr

  class default
   print*,911
 end select

do i=1,3
 cptr1 = (dd(1:3:2,1:2) + REAL(cc(1,1)) + IMAG(cc(1,1))) * aa(2)
end do
 select type(cptr1)
  type is(real(kind=4))
   if(size(cptr1) /= 4) print*,201,size(cptr1)
   if(any(cptr1 /= reshape([8.0,12.0,14.0,18.0], [2,2]))) print*,202, cptr1

  class default
   print*,912
 end select

 print*,"PASS"
 end
