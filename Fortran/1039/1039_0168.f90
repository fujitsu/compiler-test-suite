integer,pointer,dimension(:)::p1,p2
allocate(p1(3))
p1=(/1,2,3/)
p2=>p1(2:3)
p2=p1(1:2)
if (p1(1)/=1)print *,'error-1'
if (p1(2)/=1)print *,'error-2'
if (p1(3)/=2)print *,'error-3'
print *,'pass'
end
