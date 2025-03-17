    integer,target:: ia(3,3,1,3)
    integer,pointer::ip(:,:,:,:)
    ia=reshape((/(m,m=1,27)/),(/3,3,1,3/))
    
    ip=> ia(:,1:3:2,:,:) 
    call subRegist_sub( ip )
call chk
print *,'pass'


contains
!
subroutine subRegist_sub( iarr )
    integer iarr(:,:,:,:)
    integer n

        call test_registx( iarr(:,:,:,:) )
        call test_registy( iarr )
    do n=1,3
        call test_regist( iarr(:,:,:,n) )
    end do

end subroutine
subroutine test_regist( PHI )
    integer,target :: PHI(*)

write(1,*)PHI(1:6)

end subroutine
subroutine test_registx( PHI )
    integer,target :: PHI(*)

write(2,*)PHI(1:6)
write(2,*)PHI(7:12)
write(2,*)PHI(13:18)

end subroutine
subroutine test_registy( PHI )
    integer,target :: PHI(*)

write(3,*)PHI(1:6)
write(3,*)PHI(7:12)
write(3,*)PHI(13:18)

end subroutine
end
subroutine chk
integer a(6)
rewind 1
read(1,*) a
if (any(a/=(/1,2,3,7,8,9/)))write(6,*) "NG"
read(1,*) a
if (any(a/=(/10,11,12,16,17,18/)))write(6,*) "NG"
read(1,*) a
if (any(a/=(/19,20,21,25,26,27/)))write(6,*) "NG"
rewind 2
read(2,*) a
if (any(a/=(/1,2,3,7,8,9/)))write(6,*) "NG"
read(2,*) a
if (any(a/=(/10,11,12,16,17,18/)))write(6,*) "NG"
read(2,*) a
if (any(a/=(/19,20,21,25,26,27/)))write(6,*) "NG"
rewind 3
read(3,*) a
if (any(a/=(/1,2,3,7,8,9/)))write(6,*) "NG"
read(3,*) a
if (any(a/=(/10,11,12,16,17,18/)))write(6,*) "NG"
read(3,*) a
if (any(a/=(/19,20,21,25,26,27/)))write(6,*) "NG"
end


