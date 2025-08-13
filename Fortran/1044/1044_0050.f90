call foo( 1 )
call foo( 2 )
print *,'pass'
end
 subroutine foo(item)
    integer,target:: array(3,3)
    integer,pointer::p(:,:)
array=0
select case (item) 
 case(1)
    array(2:,:)=reshape((/(m,m=1,6)/),(/2,3/))
    p=> array(2:,:) 
 case(2)
    allocate(p(2,3))
    p(:,:)=reshape((/(m,m=1,6)/),(/2,3/))
end select
call check(p(:,:), item ,p(:,:))
end

subroutine check(a , item ,b)
    integer::a( 6 ),b(1)
  if (any(a/=(/1,2,3,4,5,6/)))then
      write(6,*) 'ERROR :',item,' Value: ',a
  else 
      write(22,*) 'OK    :',item
  endif
  if (item==2)then
    if (loc(b(1))/=loc(a))write(6,*) "NG"
  endif
      
end subroutine
