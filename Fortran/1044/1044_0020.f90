module m1
 contains
    subroutine  subRegist_sub( iarr )
    integer iarr(:,:,:,:)
    integer n

    do n=1,3
       write(1,*)loc(iarr(:,:,:,n))
        call test_regist( iarr(:,:,:,n) )
    end do

end subroutine
subroutine test_regist( PHI )
    integer,target :: PHI(*)

   write(2,*)loc(PHI)

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
rewind 1
rewind 2
do k=1,3
read(1,*) i
read(2,*) j
end do
if (i/=j)write(6,*) "NG"
end


