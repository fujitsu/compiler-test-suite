subroutine x0
    integer,target:: ia(3,3,1,3)
    integer,pointer::ip(:,:,:,:)
    ia=reshape((/(m,m=1,27)/),(/3,3,1,3/))
    
    ip=> ia(:,:,:,:) 
    call s1(ip(:,:,:,:))
contains
subroutine s1(ip)
    integer::ip(3,3,1,3)
    integer:: ib(3,3,1,3)
    ib=reshape((/(m,m=1,27)/),(/3,3,1,3/))
    if (any(ib/=ip))write(6,*) "NG"
    if (loc(ia)/=loc(ip))write(6,*) "NG"
end subroutine
end
call x0
print *,'pass'
end
