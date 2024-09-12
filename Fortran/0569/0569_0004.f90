         type ty
          integer,allocatable :: alc
         end type
                  type(ty),allocatable:: a(:)
                  allocate(a(6))
                  a = [ty(1),ty(2),ty(3),ty(4),ty(5),ty(6)]
                  if(any(kf(a(1:6:2)) .ne. [1,3,5])) print*,"121"
                  if(any(kf(a(1:6:2))+kf(a) .ne. [2,5,8])) print*,"122"
                  print*,"Pass"
                  contains
                  pure function kf(a2)
                  type(ty),value :: a2(:)
                  integer :: kf(3),ii
                   do ii=1,3
                     kf(ii) = a2(ii)%alc
                   end do
                  end function
                 end

