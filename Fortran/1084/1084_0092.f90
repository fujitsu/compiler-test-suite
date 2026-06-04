 class(*),allocatable :: cptr1(:,:)
 logical(kind=1),allocatable :: pp(:,:)
 logical(kind=4) :: dd(4,5)
 integer :: qq(2),nn(2)

 allocate(pp(3,2))

 qq = [1,2]
 nn = [1,2]
 pp = reshape([.true.,.true.,.false.,.true.,.false.,.true.], shape(pp))
 dd = .false.

 allocate(cptr1,source=dd)
 
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
 select type(a=>cptr2)
  type is(logical(kind=4))
   select type(b=>cptr2)
    type is(logical(kind=4))
     cptr2 = ll .AND. (aa(1) .EQ. bb(1))

    class default
     print*,911
   end select

  type is(logical(kind=8))
   if(size(a) /= 6) print*,101
   if(any(a .NEQV. reshape([.true.,.true.,.false.,.true.,.false.,.true.], shape(ll)))) print*,102, a

  class default
   print*,911
 end select
end do

 select type(a=>cptr2)
  type is(logical(kind=4))
   if(size(a) /= 6) print*,201
   if(any(a .NEQV. reshape([.true.,.true.,.false.,.true.,.false.,.true.], shape(ll)))) print*,202, a

  class default
   print*,911
 end select

do i=1,3
 select type(cptr2)
  type is(logical(kind=4))
   cptr2 = ll .AND. (aa(1) .EQ. bb(1)) .OR. fun()

  type is(logical(kind=8))
   if(size(cptr2) /= 6) print*,201
   if(any(cptr2 .NEQV. reshape([.true.,.true.,.false.,.true.,.false.,.true.], shape(ll)))) print*,202, cptr2

  class default
   print*,912
 end select
end do

 select type(a=>cptr2)
  type is(logical(kind=4))
   if(size(a) /= 6) print*,301
   if(any(a .NEQV. reshape([.true.,.true.,.false.,.true.,.false.,.true.], shape(ll)))) print*,302, a

  class default
   print*,911
 end select
 print*,"PASS"
 end subroutine
 end
