    integer,target:: ia(3,3,1,3)
    integer,pointer::ip(:,:,:,:)
    ia=reshape((/(m,m=1,27)/),(/3,3,1,3/))
    
    ip=> ia(:,1:3:2,:,:) 
    call s1(ip)
    call s2(ip)
do n1=1,3
        call test_regist3( ip(:,:,:,n1),n1)
end do
print *,'pass'

contains
subroutine s1(ip)
    integer,pointer::ip(:,:,:,:)
do n1=1,3
        call test_regist3( ip(:,:,:,n1),n1)
end do
end subroutine
subroutine s2(ip)
    integer::ip(:,:,:,:)
do n1=1,3
        call test_regist3( ip(:,:,:,n1),n1)
end do
end subroutine
subroutine test_regist3( a,n )
    integer,target :: a(*)

select case(n)
case (1)
if (any(a(01:06)/=(/1,2,3,7,8,9/)))write(6,*) "NG"
case (2)
if (any(a(01:06)/=(/10,11,12,16,17,18/)))write(6,*) "NG"
case (3)
if (any(a(01:06)/=(/19,20,21,25,26,27/)))write(6,*) "NG"
end select
end subroutine
end
