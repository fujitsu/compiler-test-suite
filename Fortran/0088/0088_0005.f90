character(len=:),allocatable::n1(:,:),n2(:,:)
allocate(n1(2,3),source=reshape(["aa","bb","cc","dd","ee","ff"],[2,3]))
call move_alloc(n1,n2)
if(any(n2/=reshape(["aa","bb","cc","dd","ee","ff"],[2,3]))) print *,'err1'
print *,"pass"
end
