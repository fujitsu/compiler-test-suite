integer ,parameter :: jjj(1)=1
associate(ia=>jjj)
block
character(size(ia)) :: arr(size(ia))
integer ::jj
if (size(arr).ne.1) print *,'ng'
jj=ia(1)
if (jj.ne.1) print *,'ng'
end block
end associate
print *,'pass'
end
