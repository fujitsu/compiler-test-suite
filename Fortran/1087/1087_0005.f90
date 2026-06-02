integer ,parameter :: jjj=1
integer ::brr(jjj)
associate(ia=>jjj)
block
integer :: arr(ia),jj
if (size(arr).ne.1) print *,'ng'
jj=ia
if (jj.ne.1) print *,'ng'
end block
end associate


associate(ib=>jjj)
associate(ia=>ib )
block
integer :: crr(ia),jj
if (size(crr).ne.1) print *,'ng'
jj=ia
if (jj.ne.1) print *,'ng'
end block
end associate
end associate

print *,'pass'
end
