    integer ia(3,3,1,3)
    ia=reshape((/(m,m=1,27)/),(/3,3,1,3/))
    call subRegist_sub( ia(:,1:3:2,:,:) )
call chk
print *,'pass'
contains
!
subroutine subRegist_sub( iarr )
    integer iarr(:,:,:,:)
    integer n

    do n=1,3
        call test_regist( iarr(:,:,:,n) )
    end do

end subroutine
subroutine test_regist( PHI )
    integer,target :: PHI(*)

write(1,*)PHI(1:6)

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
end


