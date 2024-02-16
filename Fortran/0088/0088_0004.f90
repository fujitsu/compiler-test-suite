character(len=:),allocatable::n1(:),n2(:)
character(2),allocatable::n3(:),n4(:)
allocate(n1(2),source=(/"aa","aa"/))
allocate(n3(2))
n3(:)="aa"
call move_alloc(n1,n2)
call move_alloc(n3,n4)
if(any(n2/=n4)) print *,'err'
print *,"pass"
end
