PROGRAM MAIN
IMPLICIT NONE
integer :: err
COMPLEX :: src(10,8,7)=(0,0)
CLASS(*), ALLOCATABLE:: ptr(:,:,:)
src(1,2,4)=(1.0, 2.0)

allocate(ptr,MOLD=src,STAT = err)

if(all(shape(ptr)/=[10,8,7])) print*,103

if( err .EQ. 0 ) then 
  select type(ptr)
   type is(complex)
    print *,'pass'
  end select
else
    print *,101
endif 

END PROGRAM MAIN
