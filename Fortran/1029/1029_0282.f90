    subroutine sub(a,b,c,d,e,n1,n2,n3,vs1,vs2,vs3)
      integer(1)::n1,n2,n3
      integer(8),dimension(n1,n2,n3)::a
      integer(4),dimension(n1,n2,n3)::b
      integer(2),dimension(n1,n2,n3)::c
      integer(1),dimension(n1,n2,n3)::d,e
      integer(1),dimension(n1)::vs1
      integer(1),dimension(n2)::vs2
      integer(1),dimension(n3)::vs3

   10 where(a(vs1,vs2,vs3).eq.1)
   20   b(vs1,vs2,vs3)=1
   30   c(vs1,vs2,vs3)=b(vs1,vs2,vs3)
   40   d(vs1,vs2,vs3)=c(vs1,vs2,vs3)
   50   e(vs1,vs2,vs3)=d(vs1,vs2,vs3)
   60 elsewhere
   70   b(vs1,vs2,vs3)=0
   80   c(vs1,vs2,vs3)=b(vs1,vs2,vs3)
   90   d(vs1,vs2,vs3)=c(vs1,vs2,vs3)
  100   where(a(vs1,vs2,vs3).lt.0) a(vs1,vs2,vs3)=-1
  110   e(vs1,vs2,vs3)=d(vs1,vs2,vs3)
  120 endwhere

      if (any(a/=b).or.any(a/=c).or.any(a/=d).or.any(a/=e)) write(6,*) "NG"
      b=-1;c=-1;d=-1;e=-1

  210 forall (i=1:n1:1)
  220   forall (k=1:n3:1)
  230     where(a(i,vs2,k).eq.1)
  240       b(i,vs2,k)=1
  250       c(i,vs2,k)=b(i,vs2,k)
  260       d(i,vs2,k)=c(i,vs2,k)
  270       e(i,vs2,k)=d(i,vs2,k)
  280     elsewhere
  290       b(i,vs2,k)=0
  300       c(i,vs2,k)=b(i,vs2,k)
  310       d(i,vs2,k)=c(i,vs2,k)
  320       where(a(i,vs2,k).lt.0) a(i,vs2,k)=-1
  330       e(i,vs2,k)=d(i,vs2,k)
  340     endwhere
  350   endforall
  360 endforall
    end subroutine

    program abc
      integer(1),parameter::n1=3,n2=2,n3=3
      integer(8),dimension(n1,n2,n3)::a
      integer(4),dimension(n1,n2,n3)::b
      integer(2),dimension(n1,n2,n3)::c
      integer(1),dimension(n1,n2,n3)::d,e
      integer(1),dimension(n1),parameter::vs1=(/3,1,2/)
      integer(1),dimension(n2),parameter::vs2=(/2,1/)
      integer(1),dimension(n3),parameter::vs3=(/1,3,2/)

      b=-1;c=-1;d=-1;e=-1
      a=reshape((/1,0,0,1,1,0,1,0,1,0,0,1,0,1,0,0,1,1/),(/n1,n2,n3/))
      call sub(a,b,c,d,e,n1,n2,n3,vs1,vs2,vs3)
      if (any(a/=b).or.any(a/=c).or.any(a/=d).or.any(a/=e)) write(6,*) "NG"
      print *,'pass'
    end program
