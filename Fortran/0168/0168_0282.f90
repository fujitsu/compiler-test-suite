          type tt
           integer,allocatable:: alc
          end type
          class(tt),allocatable :: obj1(:)
          class(tt),allocatable :: obj2(:)
          allocate(obj2(1),source=tt(1))
if (.not.allocated(obj2)) print *,1011
if (.not.allocated(obj2(1)%alc)) print *,1201
         print*,"pass"
         end
