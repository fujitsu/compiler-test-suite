associate(ia=>1)
block
integer :: arr(ia),jj
if (size(arr).ne.1) print *,'ng'
jj=ia
if (jj.ne.1) print *,'ng'
end block
end associate
print *,'pass'
end
