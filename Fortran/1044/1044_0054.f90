module mod
  integer,target:: array(3,3)
  integer,pointer::pointer_array(:,:)
contains

subroutine test01(item)
call check(pointer_array(:,:), item , 101)

call check(pointer_array     , item , 102)
end subroutine

subroutine test02(assumed_shape,item)
integer::assumed_shape(:,:)
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
      write(1,*) 'OK    item&subcode:',item,subcode
  endif
end subroutine
