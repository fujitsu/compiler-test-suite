         type ty
          integer,allocatable :: alc
         end type
                  type(ty),allocatable:: a(:)
                  integer::b(3),ii
                  allocate(a(6))
                  a = [ty(1),ty(2),ty(3),ty(4),ty(5),ty(6)]
                  b=kf(a(1:6:2))
                  if(any(b .ne. [1,3,5])) print*,"121"
                  b=kf(a(1:6:2))+kf(a(1:3:1))
                  if(any(b .ne. [2,5,8])) print*,"122",b
                   
                   do ii=1,3
                     if(a(ii)%alc /= ii)print*,200+ii
                   end do
                
                   print*,"Pass"
                  contains
                  impure  function kf(a2)
                  type(ty),value :: a2(:)
                  integer :: kf(3),ii
                   do ii=1,3
                     kf(ii) = a2(ii)%alc
                   end do
                  end function
                 end

