module mod
  integer,target:: array(3,3,3)
  integer,pointer::pointer_array(:,:,:)
contains

subroutine test01(item)
kv=1
do k2=1,size(pointer_array,3)
do k1=1,size(pointer_array,2)
ik=size(pointer_array(:,k1,k2)) 
call check_s(pointer_array(:,k1,k2), item , 101,kv,ik) 
kv=kv+1
end do
end do
kv=1
do k2=1,size(pointer_array,3)
ksize=size(pointer_array(:,:,k2))
call check_1(pointer_array(:,:,k2), item , 101,kv,ksize) 
kv=kv+1
end do
call check(pointer_array(:,:,:), item , 101)

call check(pointer_array     , item , 102)
end subroutine

subroutine test02(assumed_shape,item)
integer::assumed_shape(:,:,:)
kv=1
do k2=1,size(assumed_shape,3)
do k1=1,size(assumed_shape,2)
ik=size(assumed_shape(:,k1,k2)) 
call check_s(assumed_shape(:,k1,k2), item , 101,kv,ik) 
kv=kv+1
end do
end do
kv=1
do k2=1,size(assumed_shape,3)
ksize=size(assumed_shape(:,:,k2))
call check_1(assumed_shape(:,:,k2), item , 101,kv,ksize) 
kv=kv+1
end do
call check(assumed_shape(:,:,:), item , 201)

call check(assumed_shape     , item , 202)
end subroutine

end

program main
use mod
integer,parameter::r1(2,3,3)=reshape((/(iv,iv=1,18)/),(/2,3,3/))
integer,parameter::r2(3,2,3)=reshape((/(iv,iv=1,18)/),(/3,2,3/))
integer,parameter::r3(3,3,2)=reshape((/(iv,iv=1,18)/),(/3,3,2/))
  array=0
    pointer_array=> array(2:,:,:)
    pointer_array=r1
call test01( item=01 )
call test02( array(2:,:,:),item=02)
  array=0
    pointer_array=> array(:,1:3:2,:)
    pointer_array=r2
call test01( item=03 )
call test02( array(:,1:3:2,:),item=04)
  array=0
    pointer_array=> array(:,:,1:3:2)
    pointer_array=r3
call test01( item=05 )
call test02( array(:,:,1:3:2),item=06)
  array=0
    pointer_array=> array(1:3:2,:,:) 
    pointer_array=r1
call test01( item=07 )
call test02( array(1:3:2,:,:),item=08)
  array=0
    pointer_array=> array(:,1:2,:)
    pointer_array=r2
call test01( item=09 )
call test02( array(:,1:2,:),item=10)
  array=0
    pointer_array=> array(:,:,2:3)
    pointer_array=r3
call test01( item=11 )
call test02( array(:,:,2:3),item=12)
print *,'pass'
end

subroutine check(a , item ,subcode)
integer,parameter::r(2,3,3)=reshape((/(iv,iv=1,18)/),(/2,3,3/))
    integer::a( 18 ) ,subcode      
  if (any(a/=(/r/)))then
      write(6,*) 'ERROR item&subcode:',item, subcode ,' Value: ',a
  else 
      write(1,*) 'OK    :',item
  endif
end subroutine
subroutine check_s(a , item ,subcode,kv,ik)
    integer::a(ik) ,subcode      
if (ik==2)then
  if (any(a/=(/kv*2-1,kv*2/)))then
      write(6,*) 'ERROR-a item&subcode:',item, subcode ,' Value: ',a
  else 
      write(1,*) 'OK    :',item
  endif
else
  if (any(a/=(/kv*3-2,kv*3-1,kv*3/)))then
      write(6,*) 'ERROR-a item&subcode:',item, subcode ,' Value: ',a
  else 
      write(1,*) 'OK    :',item
  endif
end if
end subroutine
subroutine check_1(a , item ,subcode,kv,ksize)
    integer::a( ksize ) ,subcode      
if (ksize==6) then
 select case(kv)
  case(1,4)
  if (any(a(1:6)/=(/1,2,3,4,5,6/)))then
      write(6,*) 'ERROR item&subcode:',item, subcode ,' Value: ',a(:6)
  else 
      write(1,*) 'OK    :',item
  endif
  case(2,5)
  if (any(a(1:6)/=(/7,8,9,10,11,12/)))then
      write(6,*) 'ERROR item&subcode:',item, subcode ,' Value: ',a(:6)
  else 
      write(1,*) 'OK    :',item
  endif
  case(3,6)
  if (any(a(1:6)/=(/13,14,15,16,17,18/)))then
      write(6,*) 'ERROR item&subcode:',item, subcode ,' Value: ',a(:6)
  else 
      write(1,*) 'OK    :',item
  endif
  case default
    print *,'error-?'
  end select
else 
 select case(kv)
  case(1)
  if (any(a(1:9)/=(/1,2,3,4,5,6,7,8,9/)))then
      write(6,*) 'ERROR item&subcode:',item, subcode ,' Value: ',a(:9)
  else 
      write(1,*) 'OK    :',item
  endif
  case(2)
  if (any(a(1:9)/=(/10,11,12,13,14,15,16,17,18/)))then
      write(6,*) 'ERROR item&subcode:',item, subcode ,' Value: ',a(:9)
  else 
      write(1,*) 'OK    :',item
  endif
  end select
endif
end subroutine
subroutine check_2(a , item ,subcode,kv,ksize)
    integer::a( ksize ) ,subcode      
print *,ksize,kv,a
if (ksize==6) then
 select case(kv)
  case(4)
  if (any(a(1:6)/=(/1,2,3,4,5,6/)))then
      write(6,*) 'ERROR-2 item&subcode:',item, subcode ,' Value: ',a(:2)
  else 
      write(1,*) 'OK    :',item
  endif
  case(2)
  if (any(a(1:2)/=(/3,4/)))then
      write(6,*) 'ERROR item&subcode:',item, subcode ,' Value: ',a(:2)
  else 
      write(1,*) 'OK    :',item
  endif
  case(3)
  if (any(a(1:2)/=(/5,6/)))then
      write(6,*) 'ERROR item&subcode:',item, subcode ,' Value: ',a(:2)
  else 
      write(1,*) 'OK    :',item
  endif
  case default
   write(6,*) "NG"
  end select
else
 select case(kv)
  case(1)
  if (any(a(1:3)/=(/1,2,3/)))then
      write(6,*) 'ERROR item&subcode:',item, subcode ,' Value: ',a(:3)
  else 
      write(1,*) 'OK    :',item
  endif
  case(2)
  if (any(a(1:3)/=(/4,5,6/)))then
      write(6,*) 'ERROR item&subcode:',item, subcode ,' Value: ',a(:3)
  else 
      write(1,*) 'OK    :',item
  endif
  end select
endif
end subroutine
