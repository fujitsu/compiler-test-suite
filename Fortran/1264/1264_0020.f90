 class(*),allocatable :: cptr2(:,:)
 logical(kind=1),allocatable :: ll(:,:)
 integer :: aa(2),bb(2)

 allocate(ll(3,2))

 aa = [1,2]
 bb = [1,2]
 ll = reshape([.true.,.true.,.false.,.true.,.false.,.true.], shape(ll))

do i=1,3
 cptr2 = ll .AND. (aa(1) .EQ. bb(1))
end do
 select type(cptr2)
  type is(logical(kind=4))
   if(size(cptr2) /= 6) print*,101
   if(any(cptr2 .NEQV. reshape([.true.,.true.,.false.,.true.,.false.,.true.], shape(ll)))) print*,102, cptr2

  type is(logical(kind=8))
   if(size(cptr2) /= 6) print*,101
   if(any(cptr2 .NEQV. reshape([.true.,.true.,.false.,.true.,.false.,.true.], shape(ll)))) print*,102, cptr2

  class default
   print*,911
 end select

do i=1,3
 cptr2 = ll .AND. (aa(1) .EQ. bb(1)) .OR. fun()
end do
 select type(cptr2)
  type is(logical(kind=4))
   if(size(cptr2) /= 6) print*,201
   if(any(cptr2 .NEQV. reshape([.true.,.true.,.false.,.true.,.false.,.true.], shape(ll)))) print*,202, cptr2

  type is(logical(kind=8))
   if(size(cptr2) /= 6) print*,201
   if(any(cptr2 .NEQV. reshape([.true.,.true.,.false.,.true.,.false.,.true.], shape(ll)))) print*,202, cptr2

  class default
   print*,912
 end select
 print*,"PASS"

 contains
 function fun()
  logical::fun
  fun = .false.
 end function
 end
