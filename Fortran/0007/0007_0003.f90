!
integer,dimension(10,11,12,2) :: a
integer,dimension(10,11,12) :: b,c
a=1
b=2
c(1,2,3)=3
if (c(1,2,3)/=3) print *,103
if (any(b/=2)) print *,102
if (any(a(:,:,:,1:2)/=1)) print *,101
print *,'pass'
end

