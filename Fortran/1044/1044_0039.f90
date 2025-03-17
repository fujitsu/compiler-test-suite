    integer,target:: ia(3,3,1,3)
    integer,pointer::ip(:,:,:,:)
    ia=reshape((/(m,m=1,27)/),(/3,3,1,3/))
    
    ip=> ia(:,1:3:2,:,:) 
    call s1(ip)
    call s2(ip)
do n1=1,3
do n2=1,1
do n3=1,2
        call test_regist3( ip(:,n3,n2,n1),n3,n2,n1)
end do
end do
end do
print *,'pass'

contains
subroutine s1(ip)
    integer,pointer::ip(:,:,:,:)
do n1=1,3
do n2=1,1
do n3=1,2
        call test_regist3( ip(:,n3,n2,n1),n3,n2,n1)
end do
end do
end do
end subroutine
subroutine s2(ip)
    integer::ip(:,:,:,:)
do n1=1,3
do n2=1,1
do n3=1,2
        call test_regist3( ip(:,n3,n2,n1),n3,n2,n1)
end do
end do
end do
end subroutine
subroutine test_regist3( a,n3,n2,n1 )
    integer,target :: a(*)

select case(n1)
case (1)
 select case(n3)
 case (1)
  if (any(a(01:03)/=(/1,2,3/)))write(6,*) "NG"
 case (2)
  if (any(a(01:03)/=(/7,8,9/)))write(6,*) "NG"
 end select
case (2)
 select case(n3)
 case (1)
  if (any(a(01:03)/=(/10,11,12/)))write(6,*) "NG"
 case (2)
  if (any(a(01:03)/=(/16,17,18/)))write(6,*) "NG"
 end select
case (3)
 select case(n3)
 case (1)
  if (any(a(01:03)/=(/19,20,21/)))write(6,*) "NG"
 case (2)
  if (any(a(01:03)/=(/25,26,27/)))write(6,*) "NG"
 end select
end select
end subroutine
end
