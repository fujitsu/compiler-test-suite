subroutine sub(nn)
IMPLICIT NONE
integer :: nn ,k
character(nn) ,allocatable:: cha
         k=2
            associate (r=>k , r2=>2 )
                  block
                     integer :: arr(3)
                     integer :: brr(r2)
         integer :: c(size([character(int(size(arr))):: '1234'(:r2)])) ! ok
         integer :: d(size([character(int(size(brr))):: '1234'(:r2)])) ! ok
                    if (size(c)/=1) print *,1001
                    if (size(d)/=1) print *,1001
allocate(character(r)::cha)
                  end block
            end associate
end
call sub(2)
         print *,'pass'
         end
