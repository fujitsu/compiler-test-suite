          integer:: a(3)=[1,2,3]
          integer,pointer,contiguous::dd(:)
          integer::cc(6)
          cc=[10,20,30,40,50,60]
          allocate(dd(3))
          dd=[4,5,6]
          if(any(kf(a+dd) .ne. [5,7,9])) print*,"121"
          if(any(kf(a+cc(1:6:2)) .ne. [11,32,53])) print*,"122"
          if(any(kf([1,2,3]+dd)+kf(a) .ne. [6,9,12]))print*,"123"
           print*,"Pass"
          contains
          impure  function kf(a2)
             integer,contiguous :: a2(:)
              integer :: kf(3)
              kf=a2
           end function
          end
