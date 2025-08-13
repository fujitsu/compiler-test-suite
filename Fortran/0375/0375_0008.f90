module mod
  integer,target:: array1(3,3)
  integer,target:: array2(3,3)
  integer,pointer::pointer_array(:,:)
contains

subroutine test02(assumed_shape,item)
integer::assumed_shape(:,:)
j=     icheck(assumed_shape(:,:),&
              pointer_array(:,:), item , 201) +&
       icheck(pointer_array(:,:),&
              assumed_shape(:,:), item , 202)
if (j/=6)print *,'result : error'
end subroutine

end

program main
use mod
write(8,*)'arrary1: ',loc(array1)
write(8,*)'arrary2: ',loc(array2)
  array1=0
  array2=0
  array2(:,1:2)=reshape((/1,2,3,4,5,6/),(/3,2/))
    pointer_array=> array1(1:3:2,:)
    pointer_array=reshape((/1,2,3,4,5,6/),(/2,3/))
call test02( array2(:,1:2),item=08)
print *,'pass'
end

function  icheck(a1 ,a2, item ,subcode)
    integer::a1( 6 ) ,a2( 6 ) ,subcode
write(8,*)'subcode & address ',subcode,loc(a1) , loc(a2)
  if (any(a1/=(/1,2,3,4,5,6/)).or.any(a2/=(/1,2,3,4,5,6/)))then
      write(6,*) 'ERROR code:',item, subcode ,' Value: ',a1,a2
  else
      write(8,*) 'OK    code:',item,subcode
  endif
icheck=3
end
