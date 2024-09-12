                  integer::b=4
                  b=kf(kind(b)+rank(b)-1+b)
                  if(b .ne. 7) print*,"121"
                   print*,"Pass"
                  contains
                  pure function kf(a2)
                   integer,value :: a2
                  integer :: kf
                     kf = a2
                  end function
                 end

