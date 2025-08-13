subroutine ma409(j5,j0)
integer(4)::b4(j5,j5,j5:j0,j5)
 b4=0;write(36,*)b4,999
if (size(b4)/=0)write(6,*) "NG"
if (any(shape(b4)/=(/5,5,0,5/)))write(6,*) "NG"
end subroutine
 call s1
 print *,'pass'
 end
module m
integer,dimension(:,:,:,:      ),allocatable:: b4
integer,parameter::init_value=0
integer::j5,j0
integer::iu=36,iux=0
contains
subroutine init;j5=5;j0=0
allocate(b4(1,1,1,1))
end subroutine
subroutine final
 rewind iu
do ixj=1,1
read (iu,fmt=*)ix;if (ix/=999)write(6,*) "NG"
end do
read (iu,fmt=*,end=999)ix
write(6,*) "NG"
999return
end subroutine
end
subroutine s1
use m
call init
call ma409(5,0)
call final
end
