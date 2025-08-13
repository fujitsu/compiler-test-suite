      module bank
      integer,allocatable,save:: name(:),ncnt(:,:)
!$OMP THREADPRIVATE(name,ncnt)
      integer,save:: ibknam,ibknct
      end module
      
      subroutine test
      use bank
      implicit real*8 (a-h,o-z)
      common /icomon/ no
!$OMP THREADPRIVATE(/icomon/)
      allocate(name(2),ncnt(3,3))
       ibknam=1
       no=1
       ibknct=0
      io = 9
      write(129,*) (/1,2,3,4/)
      write(129,*) (/1,2,3,4/)
      rewind 129
      read (129,*) name(ibknam+no) , ( ncnt(ibknct+i,no), i=1,3 )
call chk
      read (129,*) name(ibknam+no) ,  ncnt(ibknct+1:ibknct+3,no)
call chk
      end subroutine
call test
print *,'pass'
end
subroutine chk
use bank
if (name(2)/=1) print *,101
if (any(ncnt(1:3,1)/=(/2,3,4/))) print *,102
name=0
ncnt=0
end

      
