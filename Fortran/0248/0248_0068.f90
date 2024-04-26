character(len=:),pointer:: a(:),b(:)
character(len=6) :: i(3)='abcdef'
allocate (a,b,mold=i)      

if(size(a)/=3 .or. size(b)/=3) print*,102
if(len(a)/=6 .or. len(b)/=6) print*,103
print*,'pass'
end
