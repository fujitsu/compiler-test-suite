IMPLICIT type(ty1) (i)
type ty1
 integer :: i
end type
         associate (isrc =>0.0)
         block
           real :: cSum(int(isrc))
            cSum =1
            cSum = cSum
         end block
        end associate
print *,'pass'
end
