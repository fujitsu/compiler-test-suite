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
         c=1
         d=2
         if (c(1).ne.1) print *,1002       
         if (d(1).ne.2) print *,1002       
         if (size(arr)/=3) print *,1003
         if (size(brr)/=2) print *,1004
         arr=1
         brr=2
         if (arr(1).ne.1) print *,1005       
         if (brr(1).ne.2) print *,1006       
         if (arr(2).ne.1) print *,1005       
         if (brr(2).ne.2) print *,1006       
         if (arr(3).ne.1) print *,1005       
allocate(character(r)::cha)
                  end block
            end associate
end
call sub(2)
         print *,'pass'
         end
