    integer,target:: ia(3,3,1,3)
  type x
    integer,pointer::ip(:,:,:,:)
  end type
  type xx
    integer dummy
    type(x) w(2)
  end type
  type(x)::v
  type(xx)::z
  type(xx),allocatable::q(:)
    integer,pointer::ip(:,:,:,:)
    ia=reshape((/(m,m=1,27)/),(/3,3,1,3/))
    allocate(q(-2:-1))
    
    v%ip=> ia(:,1:3:2,:,:) 
    z%w(2)%ip=> ia(:,1:3:2,:,:) 
    q(-2)%w(2)%ip=> ia(:,1:3:2,:,:) 
    ip=> ia(:,1:3:2,:,:) 

        call test_regist( v%ip )
        call test_regist( v%ip(:,:,:,:))
        call test_regist( z%w(2)%ip )
        call test_regist( z%w(2)%ip(:,:,:,:))
        call test_regist( q(-2)%w(2)%ip )
        call test_regist( q(-2)%w(2)%ip(:,:,:,:))
        call test_regist( ip )
        call test_regist( ip(:,:,:,:))
do n=1,3
        call test_regisx( v%ip(:,:,:,n),n)
end do
do n=1,3
        call test_regisx( z%w(2)%ip(:,:,:,n),n)
end do
do n=1,3
        call test_regisx( q(-2)%w(2)%ip(:,:,:,n),n)
end do
do n=1,3
        call test_regisx( ip(:,:,:,n),n)
end do
        call s(v)
        call t(ip)
print *,'pass'

contains
subroutine t(ip)
    integer,pointer::ip(:,:,:,:)
        call test_regist( ip )
        call test_regist( ip(:,:,:,:))
do n=1,3
        call test_regisx( ip(:,:,:,n),n)
end do
end subroutine 
subroutine s(v)
  type(x)::v
        call test_regist( v%ip )
        call test_regist( v%ip(:,:,:,:))
do n=1,3
        call test_regisx( v%ip(:,:,:,n),n)
end do
end subroutine 
subroutine test_regist( PHI )
    integer,target :: PHI(*)

if (any(PHI(1:6)/=(/1,2,3,7,8,9/)).or.&
    any(PHI(7:12)/=(/10,11,12,16,17,18/)).or.&
    any(PHI(13:18)/=(/19,20,21,25,26,27/)))write(6,*) "NG"

end subroutine

subroutine test_regisx( PHI ,n)
    integer,target :: PHI(*)

select case(n)
case(1)
if (any(PHI(1:6)/=(/1,2,3,7,8,9/)))write(6,*) "NG"
case(2)
if (any(PHI(1:6)/=(/10,11,12,16,17,18/)))write(6,*) "NG"
case(3)
if (any(PHI(1:6)/=(/19,20,21,25,26,27/)))write(6,*) "NG"
end select

end subroutine

end
