subroutine sub(nn)
IMPLICIT NONE
integer :: nn ,k
character(nn) ,allocatable:: cha
         k=2
            associate (r=>k  )
                  block
         integer :: c(size([character(2):: '1234'(r:r)])) ! ok
                    if (size(c)/=1) print *,1001
allocate(character(r)::cha)
                  end block
            end associate
end
call sub(2)
         print *,'pass'
         end
