    module mod
     type zz
       integer(4),dimension(3)::ii=(/51,52,53/)
     end type
    end module

    program foralls
     use mod
     type(zz)::a(3)
      call sub1(a,3)
      if (any(a(1)%ii/=(/21,22,23/))) print *,'a(1)%ii->',a(1)%ii
      if (any(a(2)%ii/=(/21,22,23/))) print *,'a(2)%ii->',a(2)%ii
      if (any(a(3)%ii/=(/21,22,23/))) print *,'a(3)%ii->',a(3)%ii
      call sub2(a,3,-1)
      if (any(a(1)%ii/=(/11,12,13/))) print *,'#a(1)%ii->',a(1)%ii
      if (any(a(2)%ii/=(/21,22,23/))) print *,'#a(2)%ii->',a(2)%ii
      if (any(a(3)%ii/=(/31,32,33/))) print *,'#a(3)%ii->',a(3)%ii
      call sub3(a,3,-1)
      if (any(a(1)%ii/=(/ 11, 12, 13/))) print *,'##a(1)%ii->',a(1)%ii
      if (any(a(2)%ii/=(/112,113, 23/))) print *,'##a(2)%ii->',a(2)%ii
      if (any(a(3)%ii/=(/ 31,123, 33/))) print *,'##a(3)%ii->',a(3)%ii
      print *,'pass'
    end program foralls

    subroutine sub1(a,n)
     use mod
     type(zz)::a(n)
      forall(i=1:n,i<3)
        a(:)=zz((/i*10+1,i*10+2,i*10+3/))
      endforall
    end subroutine sub1

    subroutine sub2(a,n,m)
     use mod
     type(zz)::a(n)
      forall(i=n:1:m,n/=2)
        a(i)=zz((/i*10+1,i*10+2,i*10+3/))
      endforall
    end subroutine sub2

    subroutine sub3(a,n,m)
     use mod
     type(zz)::a(n)
      forall(i=n:2:m)
        a(2:i)%ii(i-1)=a(1:i-1)%ii(i)+100
      endforall
    end subroutine sub3
