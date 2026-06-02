type ty1
integer :: iii
end type
type (ty1) :: sss
sss%iii=10
associate(isrc =>sss)
         block
           real :: cSum(isrc%iii)
           if (isrc%iii.ne.10) print *,'err1'
           if (size(cSum).ne.10) print *,'err'
         end block
end associate
print *,'pass'
end
