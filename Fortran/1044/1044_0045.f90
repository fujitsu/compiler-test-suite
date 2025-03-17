    integer,target:: ia(3,3,3)
    integer,pointer::ip(:,:,:)
    ia=reshape((/(m,m=1,27)/),(/3,3,3/))
    
    ip=> ia(2:3,:,:) 
    call s1(ip)
    call s2(ip)
do n1=1,3
        call test_regist3( ip(:,:,n1),n1)
end do
print *,'pass'

contains
subroutine s1(ip)
    integer,pointer::ip(:,:,:)
do n1=1,3
        call test_regist3( ip(:,:,n1),n1)
end do
end subroutine
subroutine s2(ip)
    integer::ip(:,:,:)
do n1=1,3
        call test_regist3( ip(:,:,n1),n1)
end do
end subroutine
subroutine test_regist3( a,n )
    integer,target :: a(*)

select case(n)
case (1)
if (any(a(01:06)/=(/2,3,5,6,8,9/)))write(6,*) "NG"
case (2)
if (any(a(01:06)/=(/11,12,14,15,17,18/)))write(6,*) "NG"
case (3)
if (any(a(01:06)/=(/20,21,23,24,26,27/)))write(6,*) "NG"
end select
end subroutine
end
