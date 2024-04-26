module m
contains
subroutine sub(i,j)
  integer:: x(5,5)
  integer:: i,j
  integer :: n1,n2
  integer,dimension(5,5) :: ans
  logical:: flag
  print *,'sub:'
entry ent(i,j)
  flag=.true.
  ans(1,:)=(/10,10,10,10,10/)
  ans(2,:)=(/10, 2, 2, 2,10/)
  ans(3,:)=(/10, 2, 2, 2,10/)
  ans(4,:)=(/10, 2, 2, 2,10/)
  ans(5,:)=(/10,10,10,10,10/)
  x=10

  forall(i=2:4:1 , j=2:4:1)
     x(i,j)=2
  end forall
  do n1=1,5
    do n2=1,5
      if( x(n1,n2) .ne. ans(n1,n2) ) then
        flag=.false.
      end if
    end do 
  end do 
  if ( flag ) then
    print *,'pass'
  else
    print *,'ng'
  end if
end subroutine
end

use m
integer ::a,b
call sub(a,b)
call ent(a,b)
end
