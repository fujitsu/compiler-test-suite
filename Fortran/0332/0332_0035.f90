    program foralls
      integer::a(5,5)=0
      call sub1(a)
      if (any(a(:,1)/=(/0,0,0,0,0/))) print *,'a(:,1)->',a(:,1)
      if (any(a(:,2)/=(/0,0,0,0,0/))) print *,'a(:,2)->',a(:,2)
      if (any(a(:,3)/=(/0,0,3,4,5/))) print *,'a(:,3)->',a(:,3)
      if (any(a(:,4)/=(/0,0,3,4,5/))) print *,'a(:,4)->',a(:,4)
      if (any(a(:,5)/=(/0,0,3,4,5/))) print *,'a(:,5)->',a(:,5)
      call sub2(a)
      if (any(a(:,1)/=(/0,0,0,0,0/))) print *,'a(:,1)->',a(:,1)
      if (any(a(:,2)/=(/1,2,3,4,5/))) print *,'a(:,2)->',a(:,2)
      if (any(a(:,3)/=(/1,2,3,4,5/))) print *,'a(:,3)->',a(:,3)
      if (any(a(:,4)/=(/1,2,3,4,5/))) print *,'a(:,4)->',a(:,4)
      if (any(a(:,5)/=(/1,2,3,4,5/))) print *,'a(:,5)->',a(:,5)
      call sub3(a)
      if (any(a(:,1)/=(/0,0,0,0,0/))) print *,'a(:,1)->',a(:,1)
      if (any(a(:,2)/=(/1,2,3,4,6/))) print *,'a(:,2)->',a(:,2)
      if (any(a(:,3)/=(/1,2,3,4,6/))) print *,'a(:,3)->',a(:,3)
      if (any(a(:,4)/=(/1,2,3,4,6/))) print *,'a(:,4)->',a(:,4)
      if (any(a(:,5)/=(/1,2,3,4,6/))) print *,'a(:,5)->',a(:,5)
      print *,'pass'
    end program
    subroutine sub1(a)
      integer::a(5,5)
      forall(i=1:5,i>0)
        forall(j=1:5,i>2.and.j>2)
          a(j,i)=j
        end forall
      end forall
    end subroutine sub1
    subroutine sub2(a)
      integer::a(5,5)
      forall(i=1:5,i>1)
        forall(j=1:5,a(j,i)<3)
          a(j,i)=j
        end forall
      end forall
    end subroutine sub2
    subroutine sub3(a)
      integer::a(5,5)
      forall(j=1:5,a(5,j)==5)
        forall(i=1:5,i<5)
          a(5,j)=a(5,j)+1
        end forall
      end forall
    end subroutine sub3

