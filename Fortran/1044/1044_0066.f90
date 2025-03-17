module mod
  integer,target:: array(3,3,3,3,3)
  integer,pointer::pointer_array(:,:,:,:,:)
contains

subroutine test01(item)
i=2
call check(pointer_array(:,:,i,i,i), pointer_array(:,:,i,i,i),pointer_array(:,:,i,i,i),item , 101) 

end subroutine

subroutine test02(assumed_shape,item)
integer::assumed_shape(:,:,:,:,:)
i=2
call check(assumed_shape(:,:,i,i,i), assumed_shape(:,:,i,i,i),assumed_shape(:,:,i,i,i),item , 201)

end subroutine

end

program main
use mod
integer,parameter::r1(2,3,3,3,3)=reshape((/(iv,iv=1,81*2)/),(/2,3,3,3,3/))
integer,parameter::r2(3,2,3,3,3)=reshape((/(iv,iv=1,81*2)/),(/3,2,3,3,3/))
  array=0
    pointer_array=> array(2:,:,:,:,:)
    pointer_array=r1
call test01( item=01 )
call test02( array(2:,:,:,:,:),item=02)
  array=0
    pointer_array=> array(:,1:3:2,:,:,:)
    pointer_array=r2
call test01( item=03 )
call test02( array(:,1:3:2,:,:,:),item=04) 
  array=0
    pointer_array=> array(1:3:2,:,:,:,:) 
    pointer_array=r1
call test01( item=05 )
call test02( array(1:3:2,:,:,:,:),item=06)
print *,'pass'
end

subroutine check(a1,a2,a3 , item ,subcode)
    integer,dimension(6)::a1,a2,a3
    integer::subcode      
integer,parameter::r(6)=(/79,80,81,82,83,84/)
  if (any(a1/=r))then
      write(6,*) 'ERROR item&subcode:',item, subcode ,' Value: ',a1
  endif
  if (any(a2/=r))then
      write(6,*) 'ERROR item&subcode:',item, subcode ,' Value: ',a2
  endif
  if (any(a3/=r))then
      write(6,*) 'ERROR item&subcode:',item, subcode ,' Value: ',a3
  endif
end subroutine
