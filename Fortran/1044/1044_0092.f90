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
pointer (ip,a)
common ip
ip=loc(array)
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
  array=0
    pointer_array=> array(:,2:3) 
    pointer_array=reshape((/1,2,3,4,5,6/),(/3,2/))
call test01( item=07 )
call test02( array(:,2:3),item=08)
  array=0
    pointer_array=> array(:,1:2) 
    pointer_array=reshape((/1,2,3,4,5,6/),(/3,2/))
call test01( item=09 )
call test02( array(:,1:2),item=10)
  array=0
    pointer_array=> array(1:3,2:3) 
    pointer_array=reshape((/1,2,3,4,5,6/),(/3,2/))
call test01( item=11 )
call test02( array(1:3,2:3),item=12)
  array=0
    pointer_array=> array(:3,2:3) 
    pointer_array=reshape((/1,2,3,4,5,6/),(/3,2/))
call test01( item=13 )
call test02( array(:3,2:3),item=14)
  array=0
    pointer_array=> array(1:,2:) 
    pointer_array=reshape((/1,2,3,4,5,6/),(/3,2/))
call test01( item=16 )
call test02( array(1:,2:),item=17)
print *,'pass'
end

subroutine check(a , item ,subcode)
    integer::a( 6 ) ,subcode      
pointer (ip,aa)
common ip
  if (any(a/=(/1,2,3,4,5,6/)))then
      write(6,*) 'ERROR item&subcode:',item, subcode ,' Value: ',a
  else 
      write(1,*) 'OK    item&subcode:',item,subcode
  endif
  if (item>=7) then
    if (loc(a)< ip.or. loc(a)>ip+36)then
      print *,loc(a),loc(a)
      write(6,*) "NG"
    endif
  endif
end subroutine
