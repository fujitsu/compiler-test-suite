         type ty
          integer,allocatable :: alc
         end type
                  type(ty),allocatable:: a(:)
                  allocate(a(6))
                  if(any(kf(a(1:6:2))+kf(a(2:6:2)) .ne. [2,4,6]))print*,"122"
                  if(a(1)%alc /= 1)print*,101
                  if(a(2)%alc /= 1)print*,102
                  if(a(3)%alc /= 2)print*,103
                  if(a(4)%alc /= 2)print*,104
                  if(a(5)%alc /= 3)print*,105
                  if(a(6)%alc /= 3)print*,106
                   print*,"Pass"
                  contains
                  impure function kf(a2)
                  type(ty),intent(out) :: a2(:)
                  integer :: kf(3),ii
                  
                  a2(1)=ty(1)
                  a2(2)=ty(2)
                  a2(3)=ty(3)
                   do ii=1,3
                     kf(ii) = a2(ii)%alc
                   end do
                  end function
                 end

