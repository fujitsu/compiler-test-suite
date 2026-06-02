IMPLICIT NONE
integer :: iii=1,arr(10)=1
associate(ia=>1,ia1=>iii+1,ia2=>arr+1,ia3=>arr)
block
integer :: arr(ia),jj
if (size(arr).ne.1) print *,'ng'
jj=ia
if (jj.ne.1) print *,'ng'
end block
end associate
print *,'pass'
end
