                  integer,pointer :: ptr(:)
                  integer,pointer :: ptr2(:)
                  integer,target:: trg(5) = [1,2,3,4,5]
                  ptr=>trg(1:5:2)
                  ptr2 => ptr(1:3)
if (ptr2(1)/=1) print *,1011
if (ptr2(2)/=3) print *,1012
if (ptr2(3)/=5) print *,1013
                  call s1(ptr2)
                  print*,"pass"
                  contains
                   subroutine s1(dmy)
                   integer::dmy(3)
                  if(any(dmy /= [1,3,5])) print*,121,dmy
                 end subroutine
                end
