    module mod
     integer(4),dimension(5,5)::a
    end module

    program foralls
     use mod
      a(:,1) = (/11,12,13,14,15/)
      a(:,2) = (/21,22,23,24,25/)
      a(:,3) = (/31,32,33,34,35/)
      a(:,4) = (/41,42,43,44,45/)
      a(:,5) = (/51,52,53,54,55/)
      call sub(5)
      if (any(a(:,1)/=(/11,12,13,14,15/))) print *,'a(:,1)->',a(:,1)
      if (any(a(:,2)/=(/21,12,23,24,25/))) print *,'a(:,2)->',a(:,2)
      if (any(a(:,3)/=(/31,22,23,34,35/))) print *,'a(:,3)->',a(:,3)
      if (any(a(:,4)/=(/41,32,33,34,45/))) print *,'a(:,4)->',a(:,4)
      if (any(a(:,5)/=(/51,42,43,44,45/))) print *,'a(:,5)->',a(:,5)
      print *,'pass'
    end program foralls

    subroutine sub(n)
     use mod
      forall(j=1:n-1)
        forall(i=1:j,n*2<a(i,j))
          a(i+1,j+1)=a(i,j)+1
        endforall
      endforall
    end subroutine sub
