       1   type tt
        2   integer,allocatable:: alc
        3   end type
        5   class(tt),allocatable :: obj1(:)
        6   class(tt),allocatable :: obj2(:)
        8   allocate(obj2(1),source=tt(1))
       10   obj1 = obj2
       11   if(size(obj1) .ne. 1) print*,"121"
       12   if(obj1(1)%alc .ne. 1) print*,"122"
k=1
   select type (obj1)
      type is(tt)
k=1
end select
if (k/=1) print *,201
         print*,"pass"
         end
