IMPLICIT type(ty1) (i)
type ty1
 integer :: i
end type
         associate (isrc =>real(1.0))
         block
           real :: cSum(int(isrc))
            cSum =1
            cSum = cSum
if (isrc.ne.1) print *,'ngaaa'
if (size(cSum).ne.1) print *,'ng'
if (cSum(1)/=1) print *,101,cSum(1)
         end block
        end associate
print *,'pass'
end
