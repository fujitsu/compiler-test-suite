  type x
    integer::ip
  end type
  type(x),pointer::v(:,:,:,:)
  type(x),target::vv(3,1,3,3)
  integer,target:: ia(3,1,3,3)
   ia=reshape((/(m,m=1,27)/),(/3,1,3,3/))
   vv%ip=ia
   v=>vv(:,:,1:3:2,:)

        call test_regist( v%ip )
        call test_regist( v(:,:,:,:)%ip)
do n=1,3
        call test_regisx( v(:,:,:,n)%ip,n)
end do
print *,'pass'

contains
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
