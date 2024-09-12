         type ty
          integer,allocatable :: alc
         end type
                  type(ty),allocatable:: a(:,:)
                  integer::b(2,2)
                  allocate(a(2,4))
                  a = reshape([ty(1),ty(2),ty(3),ty(4),ty(5),ty(6),ty(7),ty(8)],[2,4])

                  b=kf(a(1:2,1:4:2))
                   if(any(b/= reshape([1,2,5,6],(/2,2/))))print*,101 
                   print*,"Pass"
                  contains
                  impure  function kf(a2)
                  type(ty),value :: a2(:,:)
                  integer :: kf(2,2)
            
                   kf(1,1)=a2(1,1)%alc
                   kf(1,2)=a2(1,2)%alc
                   kf(2,1)=a2(2,1)%alc
                   kf(2,2)=a2(2,2)%alc
                  end function
                 end

