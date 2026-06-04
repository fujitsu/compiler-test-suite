IMPLICIT type(ty1) (r)
type ty1
 integer :: i
end type
         associate (rsrc =>real(1.0))
         block
           real :: cSum(int(rsrc))
!           real :: cSum_err1(real(1.0))
!           real :: cSum_err2(1.0)
            cSum =1
            cSum = cSum
if (size(cSum).ne.1) print *,'ng'
if (cSum(1)/=1) print *,101,cSum(1)
         end block
        end associate
         associate (rsrc =>1.0+0.0)
         block
           real :: cSum(int(rsrc))
!           real :: cSum_err2(1.0)
            cSum =1
            cSum = cSum
if (size(cSum).ne.1) print *,'ng'
if (cSum(1)/=1) print *,101,cSum(1)
         end block
        end associate
print *,'pass'
end
