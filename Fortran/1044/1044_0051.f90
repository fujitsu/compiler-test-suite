interface
subroutine test01(p,item)
    integer,pointer::p(:,:)
end subroutine
end interface
  integer,target:: array(3,3)
  integer,pointer::p(:,:)
    p=> array(2:,:) 
    p=reshape((/1,2,3,4,5,6/),(/2,3/))
call test01(p , 01)
print *,'pass'
end
subroutine test01(p,item)
    integer,pointer::p(:,:)
call check(p(:,:), item )
end

subroutine check(a , item )
    integer::a( 6 )
  if (any(a/=(/1,2,3,4,5,6/)))then
      write(6,*) 'ERROR :',item,' Value: ',a
  else 
      write(1,*) 'OK    :',item
  endif
end subroutine
