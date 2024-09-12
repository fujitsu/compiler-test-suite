         type ty
          integer,allocatable :: alc
         end type
                  type(ty),pointer:: a
                  integer::b(3)
                  allocate(a)
                  a = ty(100)
                  b=kf(a)
                  if(any(b .ne. 100)) print*,"121"
                   
                     if(a%alc /= 100)print*,122
                
                   print*,"Pass"
                  contains
                  pure function kf(a2)
                  type(ty),value :: a2
                  integer :: kf
                     kf = a2%alc
                  end function
                 end

