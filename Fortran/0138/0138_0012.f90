character(2),parameter,dimension(2)::c=1_"aa"
character(2,1),allocatable::n4(:)
allocate(n4(len(1_"aa")),mold=1_"aa"(1:))
print *,'pass'
end
