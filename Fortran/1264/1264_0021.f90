 class(*),allocatable :: cptr1(:,:)
 logical(kind=1),allocatable :: pp(:,:)
 integer :: qq(2),nn(2)

 allocate(pp(3,2))

 qq = [1,2]
 nn = [1,2]
 pp = reshape([.true.,.true.,.false.,.true.,.false.,.true.], shape(pp))

 call sub(cptr1, pp, qq, nn)

 contains
 function fun()
  logical::fun
  fun = .false.
 end function

 subroutine sub(cptr2, ll, aa, bb)
 class(*),allocatable :: cptr2(:,:)
 logical(kind=1),allocatable :: ll(:,:)
 integer :: aa(2),bb(2)

do i=1,3
 cptr2 = ll .AND. (aa(1) .EQ. bb(1))
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
end do

do i=1,3
 cptr2 = ll .AND. (aa(1) .EQ. bb(1)) .OR. fun()
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
end do
 print*,"PASS"
 end subroutine
 end
