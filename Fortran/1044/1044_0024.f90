    integer,target:: ia(3,3,1,3)
    integer,pointer::ip(:,:,:,:)
    ia=reshape((/(m,m=1,27)/),(/3,3,1,3/))
    
    ip=> ia(:,1:3:2,:,:) 

        call test_regist( ip )
        call test_regist( ip(:,:,:,:))
        call test_regist( ip(:,:,:,1:))
        call test_regist( ip(:,:,:,:3))
        call test_regist( ip(:,:,:,1:3))
      do k=1,3
        call test_regiss( ip(:,:,:,k))
      end do
call chk
call chk2
print *,'pass'

contains
subroutine test_regist( PHI )
    integer,target :: PHI(*)

write(12,*)PHI(1:6)
write(12,*)PHI(7:12)
write(12,*)PHI(13:18)

end subroutine
subroutine test_regiss( PHI )
    integer,target :: PHI(*)

write(11,*)PHI(1:6)

end subroutine

end
subroutine chk2
integer a(6)
rewind 11
read(11,*) a
if (any(a/=(/1,2,3,7,8,9/)))write(6,*) "NG"
read(11,*) a
if (any(a/=(/10,11,12,16,17,18/)))write(6,*) "NG"
read(11,*) a
if (any(a/=(/19,20,21,25,26,27/)))write(6,*) "NG"
end subroutine
subroutine chk
integer a(6)
rewind 12
read(12,*) a
if (any(a/=(/1,2,3,7,8,9/)))write(6,*) "NG"
read(12,*) a
if (any(a/=(/10,11,12,16,17,18/)))write(6,*) "NG"
read(12,*) a
if (any(a/=(/19,20,21,25,26,27/)))write(6,*) "NG"
read(12,*) a
if (any(a/=(/1,2,3,7,8,9/)))write(6,*) "NG"
read(12,*) a
if (any(a/=(/10,11,12,16,17,18/)))write(6,*) "NG"
read(12,*) a
if (any(a/=(/19,20,21,25,26,27/)))write(6,*) "NG"
read(12,*) a
if (any(a/=(/1,2,3,7,8,9/)))write(6,*) "NG"
read(12,*) a
if (any(a/=(/10,11,12,16,17,18/)))write(6,*) "NG"
read(12,*) a
if (any(a/=(/19,20,21,25,26,27/)))write(6,*) "NG"
read(12,*) a
if (any(a/=(/1,2,3,7,8,9/)))write(6,*) "NG"
read(12,*) a
if (any(a/=(/10,11,12,16,17,18/)))write(6,*) "NG"
read(12,*) a
if (any(a/=(/19,20,21,25,26,27/)))write(6,*) "NG"
read(12,*) a
if (any(a/=(/1,2,3,7,8,9/)))write(6,*) "NG"
read(12,*) a
if (any(a/=(/10,11,12,16,17,18/)))write(6,*) "NG"
read(12,*) a
if (any(a/=(/19,20,21,25,26,27/)))write(6,*) "NG"
end


