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
       name=1
       ncnt=reshape((/1,2,3,4,5,6,7,8,9/),(/3,3/))
       ibknam=1
       no=1
       ibknct=0
      io = 9
      write(119,*) name(ibknam+no) , ( ncnt(ibknct+i,no), i=1,3 )
      write(119,*) name(ibknam+no) ,  ncnt(ibknct+1:ibknct+3,no)
      end subroutine
call test
call chk
print *,'pass'
end
subroutine chk
integer x(4)
rewind 119
read(119,*) x
if (any(x/=(/1,1,2,3/)))print *,101
read(119,*) x
if (any(x/=(/1,1,2,3/)))print *,101
end

      
