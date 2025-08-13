module m1
 contains
    subroutine  subRegist_sub( iarr )
    integer iarr(:,:,:,:)
    integer n

    do n=1,3
       write(4,*)loc(iarr(:,:,:,n))
        call test_regist( iarr(:,:,:,n) )
    end do

end subroutine
subroutine test_regist( PHI )
    integer,target :: PHI(*)

   write(51,*)loc(PHI)

end subroutine
end
use m1
    integer ia(3,2,1,3)
    call subRegist_sub( ia )
call chk
print *,'pass'
end
subroutine chk
pointer (i,p)
pointer (j,q)
rewind 4
rewind 51
do k=1,3
read(4,*) i
read(51,*) j
end do
if (i/=j)write(6,*) "NG"
end


