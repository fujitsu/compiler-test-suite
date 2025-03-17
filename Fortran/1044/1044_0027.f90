    integer,target:: ia(3,3,1,3)
    integer,pointer::ip(:,:,:,:)
    ia=reshape((/(m,m=1,27)/),(/3,3,1,3/))
    
    ip=> ia(:,1:3:2,:,:) 

        call test_regist( ip )
        call test_regist( ip(:,1:2,:,:))
        call test_regist( ip(:,1:2,:,1:))
        call test_regist( ip(:,1:2,:,:3))
        call test_regist( ip(:,1:2,:,1:3))
      do k=1,3
        call test_regiss( ip(:,1:2,:,k))
      end do
call chk
call chk2
print *,'pass'

contains
subroutine test_regist( PHI )
    integer,target :: PHI(*)

write(2,*)PHI(1:6)
write(2,*)PHI(7:12)
write(2,*)PHI(13:18)

end subroutine
subroutine test_regiss( PHI )
    integer,target :: PHI(*)

write(1,*)PHI(1:6)

end subroutine

end
subroutine chk2
integer a(6)
rewind 1
read(1,*) a
if (any(a/=(/1,2,3,7,8,9/)))write(6,*) "NG"
read(1,*) a
if (any(a/=(/10,11,12,16,17,18/)))write(6,*) "NG"
read(1,*) a
if (any(a/=(/19,20,21,25,26,27/)))write(6,*) "NG"
end subroutine
subroutine chk
integer a(6)
rewind 2
read(2,*) a
if (any(a/=(/1,2,3,7,8,9/)))write(6,*) "NG"
read(2,*) a
if (any(a/=(/10,11,12,16,17,18/)))write(6,*) "NG"
read(2,*) a
if (any(a/=(/19,20,21,25,26,27/)))write(6,*) "NG"
read(2,*) a
if (any(a/=(/1,2,3,7,8,9/)))write(6,*) "NG"
read(2,*) a
if (any(a/=(/10,11,12,16,17,18/)))write(6,*) "NG"
read(2,*) a
if (any(a/=(/19,20,21,25,26,27/)))write(6,*) "NG"
read(2,*) a
if (any(a/=(/1,2,3,7,8,9/)))write(6,*) "NG"
read(2,*) a
if (any(a/=(/10,11,12,16,17,18/)))write(6,*) "NG"
read(2,*) a
if (any(a/=(/19,20,21,25,26,27/)))write(6,*) "NG"
read(2,*) a
if (any(a/=(/1,2,3,7,8,9/)))write(6,*) "NG"
read(2,*) a
if (any(a/=(/10,11,12,16,17,18/)))write(6,*) "NG"
read(2,*) a
if (any(a/=(/19,20,21,25,26,27/)))write(6,*) "NG"
read(2,*) a
if (any(a/=(/1,2,3,7,8,9/)))write(6,*) "NG"
read(2,*) a
if (any(a/=(/10,11,12,16,17,18/)))write(6,*) "NG"
read(2,*) a
if (any(a/=(/19,20,21,25,26,27/)))write(6,*) "NG"
end


