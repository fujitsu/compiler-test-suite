 type tt
 integer::ii1
 class(*),allocatable :: cptr1(:,:)
 end type

 class(tt),allocatable::obj
 logical(kind=1),allocatable :: pp(:,:)
 logical(kind=4) :: dd(4,5)
 integer :: qq(2),nn(2)

 allocate(obj)
 allocate(pp(3,2))

 qq = [1,2]
 nn = [1,2]
 pp = reshape([.true.,.true.,.false.,.true.,.false.,.true.], shape(pp))
 dd = .false.

 allocate(obj%cptr1,source=dd)
 
 call sub(obj, pp, qq, nn)

 contains
 function fun()
  logical::fun
  fun = .false.
 end function

 subroutine sub(obj, ll, aa, bb)
 class(tt),allocatable :: obj
 logical(kind=1),allocatable :: ll(:,:)
 integer :: aa(2),bb(2)

 select type(a=>obj%cptr1)
  type is(logical(kind=4))
   a(1:4:1,1:5:1) = .true.
   select type(b=>obj%cptr1)
    type is(logical(kind=4))
     if(any(b .neqv. .true.)) print*,501
     obj%cptr1 = ll .AND. (aa(1) .EQ. bb(1))

    class default
     print*,911
   end select

  type is(logical(kind=8))
   if(size(a) /= 6) print*,101
   if(any(a .NEQV. reshape([.true.,.true.,.false.,.true.,.false.,.true.], shape(ll)))) print*,102, a

  class default
   print*,911
 end select

 select type(a=>obj%cptr1)
  type is(logical(kind=4))
   if(size(a) /= 6) print*,201
   if(any(a .NEQV. reshape([.true.,.true.,.false.,.true.,.false.,.true.], shape(ll)))) print*,202, a

  class default
   print*,911
 end select

do i=1,3
 select type(a=>obj%cptr1)
  type is(logical(kind=4))
   obj%cptr1 = ll .AND. (aa(1) .EQ. bb(1)) .OR. fun()

  type is(logical(kind=8))
   if(size(a) /= 6) print*,201
   if(any(a .NEQV. reshape([.true.,.true.,.false.,.true.,.false.,.true.], shape(ll)))) print*,202, a

  class default
   print*,912
 end select
end do

 select type(a=>obj%cptr1)
  type is(logical(kind=4))
   if(size(a) /= 6) print*,301
   if(any(a .NEQV. reshape([.true.,.true.,.false.,.true.,.false.,.true.], shape(ll)))) print*,302, a

  class default
   print*,911
 end select
 print*,"PASS"
 end subroutine
 end
