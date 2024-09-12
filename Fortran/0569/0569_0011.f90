                   type ty
                     integer,allocatable :: alc(:)
                   end type
                  type(ty):: a(3)
                  a = [ty([1,2,3]),ty([4,5,6]),ty([7,8,9])]
                  if(any(kf(a) .ne. [1,5,9])) print*,"121"
                  if(any(kf(a)+kf(a) .ne. [2,10,18])) print*,"122"
                  print*,"Pass"
                  contains
                  pure function kf(a2)
                  type(ty),value :: a2(3)
                  integer :: kf(3),ii
                   do ii=1,3
                     kf(ii) = a2(ii)%alc(ii)
                   end do
                  end function
                 end

