    program foralls
      integer::a(5,5)=0
      a(:,1)=(/0,0,0,0,0/)
      a(:,2)=(/1,2,3,4,5/)
      a(:,3)=(/1,2,3,4,5/)
      a(:,4)=(/1,2,3,4,5/)
      a(:,5)=(/1,2,3,4,5/)
      call sub3(a)
      if (any(a(:,1)/=(/0,0,0,0,0/))) print *,'a(:,1)->',a(:,1)
      if (any(a(:,2)/=(/1,2,3,5,6/))) print *,'a(:,2)->',a(:,2)
      if (any(a(:,3)/=(/1,2,3,5,6/))) print *,'a(:,3)->',a(:,3)
      if (any(a(:,4)/=(/1,2,3,5,6/))) print *,'a(:,4)->',a(:,4)
      if (any(a(:,5)/=(/1,2,3,5,6/))) print *,'a(:,5)->',a(:,5)
      print *,'pass'
    end program
    subroutine sub3(a)
      integer::a(5,5)
      forall(j=1:5,a(5,j)==5)
        forall(i=1:5,i<5)
          a(4:5,j)=a(4:5,j)+1
        end forall
      end forall
    end subroutine sub3

