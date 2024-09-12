          integer:: a(3)=[1,2,3]
          if(any(kf(a) .ne. [1,2,3])) print*,"121"
          if(any(kf(a)+kf(a) .ne. [2,4,6])) print*,"121"
           print*,"Pass"
          contains
           pure function kf(a2)
             integer,value :: a2(3)
              integer :: kf(3)
              kf=a2
           end function
          end
