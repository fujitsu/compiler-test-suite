integer :: jjj=1
associate(ia=>jjj+1)
block
integer :: arr(1+ia),jj
if (size(arr).ne.3) print *,'ng1'
jj=ia
if (jj.ne.2) print *,'ng2',jj
end block
end associate
associate(ia=>int(jjj+1))
block
integer :: brr(ia+1),jj
integer :: crr(int(ia+1))
if (size(brr).ne.3) print *,'ng3'
jj=ia
if (jj.ne.2) print *,'ng4',jj
end block
end associate
print *,'pass'
end
