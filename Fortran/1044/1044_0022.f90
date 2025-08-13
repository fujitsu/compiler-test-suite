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

write(7,*)PHI(1:6)

end subroutine
subroutine test_registx( PHI )
    integer,target :: PHI(*)

write(8,*)PHI(1:6)
write(8,*)PHI(7:12)
write(8,*)PHI(13:18)

end subroutine
subroutine test_registy( PHI )
    integer,target :: PHI(*)

write(9,*)PHI(1:6)
write(9,*)PHI(7:12)
write(9,*)PHI(13:18)

end subroutine
end
subroutine chk
integer a(6)
rewind 7
read(7,*) a
if (any(a/=(/1,2,3,7,8,9/)))write(6,*) "NG"
read(7,*) a
if (any(a/=(/10,11,12,16,17,18/)))write(6,*) "NG"
read(7,*) a
if (any(a/=(/19,20,21,25,26,27/)))write(6,*) "NG"
rewind 8
read(8,*) a
if (any(a/=(/1,2,3,7,8,9/)))write(6,*) "NG"
read(8,*) a
if (any(a/=(/10,11,12,16,17,18/)))write(6,*) "NG"
read(8,*) a
if (any(a/=(/19,20,21,25,26,27/)))write(6,*) "NG"
rewind 9
read(9,*) a
if (any(a/=(/1,2,3,7,8,9/)))write(6,*) "NG"
read(9,*) a
if (any(a/=(/10,11,12,16,17,18/)))write(6,*) "NG"
read(9,*) a
if (any(a/=(/19,20,21,25,26,27/)))write(6,*) "NG"
end


