 class(*),allocatable :: cptr(:,:)
 class(*),allocatable :: cptr1(:,:)

 integer::aa(2) = [1,2]
 complex(kind=8),allocatable :: cc(:,:)
 real(kind=4),allocatable :: dd(:,:)

 allocate(cc(2,2))
 allocate(dd(3,2))

 cc = reshape([(1.0,2.0),(3.0,4.0),(5.0,6.0),(7.0,8.0)], shape(cc))
 dd = reshape([1.0,2.0,3.0,4.0,5.0,6.0], shape(dd))

 call sub(cptr,cptr1,aa,cc,dd)
 
 contains
 subroutine sub(cptr, cptr1, aa, cc, dd)
 class(*),allocatable :: cptr(:,:)
 class(*),allocatable :: cptr1(:,:)

 integer::aa(*)
 complex(kind=8),allocatable :: cc(:,:)
 real(kind=4),allocatable :: dd(:,:)

do i=1,3
 cptr = (cc(1:2:1,1:2) + REAL(cc(1,1)) + IMAG(cc(1,1))) * fun(aa)
 select type(cptr)
  type is(complex(kind=8))
   if(size(cptr) /= 4) print*,101
   if(any(cptr /= reshape([(8.0,4.0),(12.0,8.0),(16.0,12.0),(20.0,16.0)], shape(cc)))) print*,102, cptr

  class default
   print*,911
 end select
end do

do i=1,3
 cptr1 = (dd(1:3:2,1:2) + REAL(cc(1,1)) + IMAG(cc(1,1))) * aa(2)
 select type(cptr1)
  type is(real(kind=8))
   if(size(cptr1) /= 4) print*,201,size(cptr1)
   if(any(cptr1 /= reshape([8.0,12.0,14.0,18.0], [2,2]))) print*,202, cptr1

  class default
   print*,912
 end select
end do

 print*,"PASS"
 end subroutine

 function fun(d1)
 integer::d1(*)
 integer,allocatable::fun
 allocate(fun)
 fun = d1(2)
 end function
 end
