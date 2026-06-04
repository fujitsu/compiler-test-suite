type ty1
integer :: iii
end type
type (ty1) :: sss
sss%iii=10
associate(isrc =>sss)
         block
           real :: cSum(isrc%iii)
           cSum(1)=1
           cSum(10)=10
           if (isrc%iii.ne.10) print *,'err1'
           if (size(cSum).ne.10) print *,'err'
           if (cSum(1)/=1) print *,101,cSum(1)
           if (cSum(10)/=10) print *,102,cSum(10)
         end block
end associate
print *,'pass'
end
