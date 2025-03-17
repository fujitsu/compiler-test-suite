subroutine x0(k)
    integer,target:: ia(3,3,1,3)
    integer,pointer::ip(:,:,:,:)
    ia=reshape((/(m,m=1,27)/),(/3,3,1,3/))
    
if (k==1) then
    ip=> ia(:,:,:,:) 
else
    ip=>ia(:,1:3:2,:,:)
endif
    call s1(ip(:,:,:,:),k)
contains
subroutine s1(ip,k)
    integer::ip(*)
    integer:: ib(27)
    ib(:27)=(/(m,m=1,27)/)
if (k==1) then
    if (any(ib(:27)/=ip(:27)))write(6,*) "NG"
    if (loc(ia)/=loc(ip(1)))write(6,*) "NG"
else
    if (any((/&
1,2,3,7,8,9,10,11,12,16,17,18,19,20,21,25,26,27&
/)/=(/ip(1:18)/)))write(6,*) "NG"
    if (loc(ia)==loc(ip))write(6,*) "NG"
endif
end subroutine
end
call x0(1)
call x0(2)
print *,'pass'
end
