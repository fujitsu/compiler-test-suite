subroutine x0
    integer,target:: ia(3,3,1,3)
    integer,pointer::ip(:,:,:,:)
    ia=reshape((/(m,m=1,27)/),(/3,3,1,3/))
    
    allocate(ip(3,3,1,3))
    ip=ia
    call s1(ip(:,:,:,:))
contains
subroutine s1(jp)
    integer::jp(3,3,1,3)
    integer:: ib(3,3,1,3)
    ib=reshape((/(m,m=1,27)/),(/3,3,1,3/))
    if (any(ib/=jp))write(6,*) "NG"
    if (loc(jp)/=loc(ip))write(6,*) "NG"
end subroutine
end
call x0
print *,'pass'
end
