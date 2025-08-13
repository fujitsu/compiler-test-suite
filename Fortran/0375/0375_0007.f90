module mod
  integer,target:: array1(3,3)
  integer,target:: array2(3,3)
  integer,pointer::pointer_array(:,:)
contains

subroutine test01(item)
j= icheck(pointer_array(:,:), item , 101)  +   &
   icheck(pointer_array(:,:), item , 101)  +  &
   icheck(pointer_array(:,:), item , 101)  +  &
   icheck(pointer_array     , item , 102)  +  &
   icheck(pointer_array     , item , 102)  +   &
   icheck(pointer_array     , item , 102)
if (j/=6)print *,'result : error'
end subroutine

subroutine test02(assumed_shape,item)
integer::assumed_shape(:,:)
j=     icheck(assumed_shape(:,:), item , 201)  + &
       icheck(pointer_array(:,:), item , 201)  + &
       icheck(assumed_shape(:,:), item , 201)  + &
       icheck(pointer_array     , item , 202)  + &
       icheck(assumed_shape     , item , 202)  + &
       icheck(assumed_shape     , item , 202)
if (j/=6)print *,'result : error'
end subroutine

end

program main
use mod
write(7,*)'arrary1: ',loc(array1)
write(7,*)'arrary2: ',loc(array2)
  array1=0
  array2=0
  array2(:,1:2)=reshape((/1,2,3,4,5,6/),(/3,2/))
    pointer_array=> array1(1:3:2,:)
    pointer_array=reshape((/1,2,3,4,5,6/),(/2,3/))
call test02( array2(:,1:2),item=08)
print *,'pass'
end

function  icheck(a , item ,subcode)
    integer::a( 6 ) ,subcode
write(7,*)'subcode & address ',subcode,loc(a)
  if (any(a/=(/1,2,3,4,5,6/)))then
      write(7,*) 'ERROR code:',item, subcode ,' Value: ',a
  else
      write(7,*) 'OK    code:',item,subcode
  endif
icheck=1
end
