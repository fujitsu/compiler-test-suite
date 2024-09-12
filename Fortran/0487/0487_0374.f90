real,parameter:: a(*,2:*)= reshape([1,2,3,4,5,6],[2,3])

if (any(a/= reshape([1,2,3,4,5,6],[2,3]))) print *,201
print *,'pass'
end
