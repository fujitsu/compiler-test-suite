module mod
  integer,target:: array(3,3)
  integer,pointer::pointer_array(:,:)
contains

subroutine test01(item)
kv=1
do k2=1,size(pointer_array,2)
do k1=1,size(pointer_array,1)
call check_s(pointer_array(k1,k2), item , 101,kv) 
kv=kv+1
end do
end do
kv=1
do k2=1,size(pointer_array,2)
ksize=size(pointer_array(:,k2))
call check_1(pointer_array(:,k2), item , 101,kv,ksize) 
kv=kv+1
end do
do k2=1,size(pointer_array,2)
ksize=size(pointer_array(:,k2))
if (ksize==2) then
call check_1(pointer_array(1:2,k2), item , 101,kv,ksize) 
call check_1(pointer_array( :2,k2), item , 101,kv,ksize) 
call check_1(pointer_array(1: ,k2), item , 101,kv,ksize) 
i1=1;i3=3;i2=2
call check_1(pointer_array(i1:2,k2), item , 101,kv,ksize) 
call check_1(pointer_array(i1:i2,k2), item , 101,kv,ksize) 
else
call check_1(pointer_array(1:2,k2), item , 101,kv,ksize) 
call check_1(pointer_array( :2,k2), item , 101,kv,ksize) 
call check_1(pointer_array(1: ,k2), item , 101,kv,ksize) 
i1=1;i2=2
call check_1(pointer_array(i1:i2,k2), item , 101,kv,ksize) 
call check_1(pointer_array(i1:i2,k2), item , 101,kv,ksize) 
endif
kv=kv+1
end do
call check(pointer_array(:,:), item , 101)

call check(pointer_array     , item , 102)
end subroutine

subroutine test02(assumed_shape,item)
integer::assumed_shape(:,:)
kv=1
do k2=1,size(assumed_shape,2)
do k1=1,size(assumed_shape,1)
call check_s(assumed_shape(k1,k2), item , 101,kv) 
kv=kv+1
end do
end do
kv=1
do k2=1,size(assumed_shape,2)
ksize=size(assumed_shape(:,k2))
call check_1(assumed_shape(:,k2), item , 101,kv,ksize) 
kv=kv+1
end do
do k2=1,size(assumed_shape,2)
ksize=size(assumed_shape(:,k2))
if (ksize==2) then
call check_1(assumed_shape(1:2,k2), item , 101,kv,ksize) 
call check_1(assumed_shape( :2,k2), item , 101,kv,ksize) 
call check_1(assumed_shape(1: ,k2), item , 101,kv,ksize) 
i1=1;i3=3;i2=2
call check_1(assumed_shape(i1:2,k2), item , 101,kv,ksize) 
call check_1(assumed_shape(i1:i2,k2), item , 101,kv,ksize) 
else
call check_1(assumed_shape(1:2,k2), item , 101,kv,ksize) 
call check_1(assumed_shape( :2,k2), item , 101,kv,ksize) 
call check_1(assumed_shape(1: ,k2), item , 101,kv,ksize) 
i1=1;i2=2
call check_1(assumed_shape(i1:i2,k2), item , 101,kv,ksize) 
call check_1(assumed_shape(i1:i2,k2), item , 101,kv,ksize) 
endif
kv=kv+1
end do
call check(assumed_shape(:,:), item , 201)

call check(assumed_shape     , item , 202)
end subroutine

end

program main
use mod
  array=0
    pointer_array=> array(2:,:)
    pointer_array=reshape((/1,2,3,4,5,6/),(/2,3/))
call test01( item=01 )
call test02( array(2:,:),item=02)
  array=0
    pointer_array=> array(:,1:3:2)
    pointer_array=reshape((/1,2,3,4,5,6/),(/3,2/))
call test01( item=03 )
call test02( array(:,1:3:2),item=04)
  array=0
    pointer_array=> array(1:3:2,:) 
    pointer_array=reshape((/1,2,3,4,5,6/),(/2,3/))
call test01( item=05 )
call test02( array(1:3:2,:),item=06)
print *,'pass'
end

subroutine check(a , item ,subcode)
    integer::a( 6 ) ,subcode      
  if (any(a/=(/1,2,3,4,5,6/)))then
      write(6,*) 'ERROR item&subcode:',item, subcode ,' Value: ',a
  else 
      write(52,*) 'OK    :',item
  endif
end subroutine
subroutine check_s(a , item ,subcode,kv)
    integer::a ,subcode      
  if (a/=kv)then
      write(6,*) 'ERROR item&subcode:',item, subcode ,' Value: ',a
  else 
      write(52,*) 'OK    :',item
  endif
end subroutine
subroutine check_1(a , item ,subcode,kv,ksize)
    integer::a( * ) ,subcode      
if (ksize==2) then
 select case(kv)
  case(1)
  if (any(a(1:2)/=(/1,2/)))then
      write(6,*) 'ERROR item&subcode:',item, subcode ,' Value: ',a(:2)
  else 
      write(52,*) 'OK    :',item
  endif
  case(2)
  if (any(a(1:2)/=(/3,4/)))then
      write(6,*) 'ERROR item&subcode:',item, subcode ,' Value: ',a(:2)
  else 
      write(52,*) 'OK    :',item
  endif
  case(3)
  if (any(a(1:2)/=(/5,6/)))then
      write(6,*) 'ERROR item&subcode:',item, subcode ,' Value: ',a(:2)
  else 
      write(52,*) 'OK    :',item
  endif
  end select
else
 select case(kv)
  case(1)
  if (any(a(1:3)/=(/1,2,3/)))then
      write(6,*) 'ERROR item&subcode:',item, subcode ,' Value: ',a(:3)
  else 
      write(52,*) 'OK    :',item
  endif
  case(2)
  if (any(a(1:3)/=(/4,5,6/)))then
      write(6,*) 'ERROR item&subcode:',item, subcode ,' Value: ',a(:3)
  else 
      write(52,*) 'OK    :',item
  endif
  end select
endif
end subroutine
