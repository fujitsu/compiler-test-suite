 class(*),allocatable :: cptr2(:,:)
 logical(kind=1),allocatable :: ll(:,:)
 logical(kind=4) :: dd(4,5)
 integer :: aa(2),bb(2)

 allocate(ll(3,2))

 aa = [1,2]
 bb = [1,2]
 ll = reshape([.true.,.true.,.false.,.true.,.false.,.true.], shape(ll))
 dd = .false.

 allocate(cptr2,source=dd)

 select type(a=>cptr2)
  type is(logical(kind=4))
   select type(b=>cptr2)
    type is(logical(kind=4))
     cptr2 = ll .AND. (aa(1) .EQ. bb(1))

    class default
     print*,912
  end select

  type is(logical(kind=8))
   if(size(a) /= 6) print*,101
   if(any(a .NEQV. reshape([.true.,.true.,.false.,.true.,.false.,.true.], shape(ll)))) print*,102, a

  class default
   print*,912
 end select

 select type(a=>cptr2)
  type is(logical(kind=4))
   if(size(a) /= 6) print*,201
   if(any(a .NEQV. reshape([.true.,.true.,.false.,.true.,.false.,.true.], shape(ll)))) print*,202, a

  class default
   print*,912
 end select
 print*,"PASS"
 end
