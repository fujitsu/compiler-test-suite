module mod
  integer,target:: array(3,3)
  integer,pointer::pointer_array(:,:)
contains

subroutine test01()
call check(pointer_array(:,:), 01 )
end subroutine

subroutine test02(assumed_shape)
integer::assumed_shape(:,:)
call check(assumed_shape(:,:), 02 )
end subroutine

end

program main
use mod
    pointer_array=> array(2:,:) 
    pointer_array=reshape((/1,2,3,4,5,6/),(/2,3/))
call test01( )
call test02( array(2:,:))
print *,'pass'
end

subroutine check(a , item )
    integer::a( 6 )
  if (any(a/=(/1,2,3,4,5,6/)))then
      write(6,*) 'ERROR :',item,' Value: ',a
  else 
      write(1,*) 'OK    :',item
  endif
end subroutine
