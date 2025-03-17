  type x
    integer::ip
  end type
  type(x),target::vv(3,1,3,3)
  integer,target:: ia(3,1,3,3)
   ia=reshape((/(m,m=1,27)/),(/3,1,3,3/))
   vv%ip=ia
   call as(vv(:,:,:,:))

print *,'pass'

contains
subroutine as(v)
  type(x)::v(:,:,:,:)
        call test_regist( v%ip )
        call test_regist( v(:,:,:,:)%ip)
do n=1,3
        call test_regisx( v(:,:,:,n)%ip,n)
end do
end subroutine

subroutine test_regist( PHI )
    integer,target :: PHI(*)

if (any(PHI(1:9)/=(/1,2,3,4,5,6,7,8,9/)).or.&
    any(PHI(10:18)/=(/10,11,12,13,14,15,16,17,18/)).or.&
    any(PHI(19:27)/=(/19,20,21,22,23,24,25,26,27/)))write(6,*) "NG"

end subroutine

subroutine test_regisx( PHI ,n)
    integer,target :: PHI(*)

select case(n)
case(1)
if (any(PHI(1:9)/=(/1,2,3,4,5,6,7,8,9/)))write(6,*) "NG"
case(2)
if (any(PHI(1:9)/=(/10,11,12,13,14,15,16,17,18/)))write(6,*) "NG"
case(3)
if (any(PHI(1:9)/=(/19,20,21,22,23,24,25,26,27/)))write(6,*) "NG"
end select

end subroutine

end
