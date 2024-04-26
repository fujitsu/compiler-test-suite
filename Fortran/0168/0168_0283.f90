          type tt
           integer,allocatable:: alc
          end type
          class(tt),allocatable :: obj1(:)
          class(tt),allocatable :: obj2(:)
          type(tt)::z
          allocate(z%alc,source=2)
          allocate(obj2(1),source=z)
if (.not.allocated(obj2)) print *,2011
if (.not.allocated(obj2(1)%alc)) print *,3011
         obj1 = obj2
         if(size(obj1) .ne. 1) print*,"121"
         if(obj1(1)%alc .ne. 2) print*,"122"
k=1
   select type (obj1)
      type is(tt)
k=1
end select
if (k/=1) print *,201
         print*,"pass"
         end
