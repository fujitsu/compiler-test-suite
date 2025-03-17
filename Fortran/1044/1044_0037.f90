    integer,target:: ia(3,3,1,3)
    integer,pointer::ip(:,:,:,:)
    ia=reshape((/(m,m=1,27)/),(/3,3,1,3/))
    
    ip=> ia(1:3:2,1:3:2,:,:) 
    call s1(ip)
    call s2(ip)
        call test_regist( ip )
        call test_regist( ip(:,:,:,:))
print *,'pass'

contains
subroutine s1(ip)
    integer,pointer::ip(:,:,:,:)
        call test_regist( ip )
        call test_regist( ip(:,:,:,:))
end subroutine
subroutine s2(ip)
    integer::ip(:,:,:,:)
        call test_regist( ip )
        call test_regist( ip(:,:,:,:))
end subroutine
subroutine test_regist( a )
    integer,target :: a(*)

if (any(a(01:04)/=(/1,3,7,9/)))write(6,*) "NG"
if (any(a(05:12)/=(/10,12,16,18,19,21,25,27/)))write(6,*) "NG"
end subroutine
end
