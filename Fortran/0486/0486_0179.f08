          type tt
           integer,allocatable:: alc
           end type
   type,extends(tt):: t
   integer::x
   end type
           class(tt),allocatable :: obj1(:)
           class(t),allocatable :: obj2(:)
           allocate(obj2(1),source=t(1,1))
          obj1 = obj2
          if(size(obj1) .ne. 1) print*,"121"
          if(obj1(1)%alc .ne. 1) print*,"122"
k=1
   select type (obj1)
      type is(t)
k=1
end select
if (k/=1) print *,201
         print*,"pass"
         end
