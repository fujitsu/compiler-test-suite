         type ty
          integer,allocatable :: alc
         end type
                  integer::b(3)
                  b=kf(ty(100+kind(b)))
                  if(any(b .ne. 104)) print*,"121"
                   
                
                   print*,"Pass"
                  contains
                  pure function kf(a2)
                  type(ty),value :: a2
                  integer :: kf
                     kf = a2%alc
                  end function
                 end

