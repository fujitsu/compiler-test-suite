 call s1
 print *,'pass'
 end
module m
integer,dimension(:,:,:,:,:,:,:),allocatable:: a7,b7
integer,dimension(:,:,:,:,:,:  ),allocatable:: a6,b6
integer,dimension(:,:,:,:,:    ),allocatable:: a5,b5
integer,dimension(:,:,:,:      ),allocatable:: a4,b4
integer,dimension(:,:,:        ),allocatable:: a3,b3
integer,dimension(:,:          ),allocatable:: a2,b2
integer,dimension(:            ),allocatable:: a1,b1
integer,parameter::init_value=0
integer::j5,j0
integer::iu=10,iux=0
contains
subroutine init;j5=5;j0=0
allocate(a1(1),a2(1,1),a3(1,1,1),a4(1,1,1,1),a5(1,1,1,1,1),a6(1,1,1,1,1,1))
allocate(b1(1),b2(1,1),b3(1,1,1),b4(1,1,1,1),b5(1,1,1,1,1),b6(1,1,1,1,1,1));end subroutine
subroutine ma408
integer(4)::a4(5,5,5,5:0),b4(j5,j5,j5,j5:j0)
iux=iux+1
 a4=init_value;b4=init_value;write(iu,*)a4,b4,999;if (size(a4)/=0)write(6,*) "NG";if (any(shape(a4)/=(/5,5,5,0/)))write(6,*) "NG";if (size(b4)/=0)write(6,*) "NG";if (any(shape(b4)/=(/5,5,5,0/)))write(6,*) "NG"
end subroutine
subroutine ma409
integer(4)::a4(5,5,5:0,5),b4(j5,j5,j5:j0,j5)
iux=iux+1
 a4=init_value;b4=init_value;write(iu,*)a4,b4,999;if (size(a4)/=0)write(6,*) "NG";if (any(shape(a4)/=(/5,5,0,5/)))write(6,*) "NG";if (size(b4)/=0)write(6,*) "NG";if (any(shape(b4)/=(/5,5,0,5/)))write(6,*) "NG"
end subroutine
subroutine final
 rewind iu
do ixj=1,iux
read (iu,fmt=*)ix;if (ix/=999)write(6,*) "NG" 
end do
read (iu,fmt=*,end=999)ix
print *,iux
write(6,*) "NG"
999return
end subroutine
end
subroutine s1
use m
call init
call ma408
call ma409
call final
end 
