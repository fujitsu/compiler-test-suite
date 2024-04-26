interface gnr
subroutine sub(d1)
integer:: d1(:)
end
elemental subroutine esub(d1)
integer,value :: d1
end
end interface

integer :: arr(3)
arr=10
call gnr(arr)
if(any(arr .ne. 40))print*,"101",arr
print*,"Pass"
end

subroutine sub(d1)
integer :: d1(:)
d1=d1+30
end

elemental subroutine esub(d1)
integer,value :: d1
d1=d1+1
end
