    subroutine sub(a,b,c,d,e,n1,n2,n3)
      integer(1)::n1,n2,n3
      integer(8),dimension(n1,n2,n3)::a
      integer(4),dimension(n1,n2,n3)::b
      integer(2),dimension(n1,n2,n3)::c
      integer(1),dimension(n1,n2,n3)::d,e

   10 where(a.eq.1)
   20   b=1
   30   c=b
   40   d=c
   50   e=d
   60 elsewhere
   70   b=0
   80   c=b
   90   d=c
  100   where(a.lt.0) a=-1
  110   e=d
  120 endwhere

      if (any(a/=b).or.any(a/=c).or.any(a/=d).or.any(a/=e)) write(6,*) "NG"
      b=-1;c=-1;d=-1;e=-1

  210 forall (i=1:n1:1)
  220   forall (k=1:n3:1)
  230     where(a(i,:,k).eq.1)
  240       b(i,:,k)=1
  250       c(i,:,k)=b(i,:,k)
  260       d(i,:,k)=c(i,:,k)
  270       e(i,:,k)=d(i,:,k)
  280     elsewhere
  290       b(i,:,k)=0
  300       c(i,:,k)=b(i,:,k)
  310       d(i,:,k)=c(i,:,k)
  320       where(a(i,:,k).lt.0) a(i,:,k)=-1
  330       e(i,:,k)=d(i,:,k)
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

      b=-1;c=-1;d=-1;e=-1
      a=reshape((/1,0,0,1,1,0,1,0,1,0,0,1,0,1,0,0,1,1/),(/n1,n2,n3/))
      call sub(a,b,c,d,e,n1,n2,n3)
      if (any(a/=b).or.any(a/=c).or.any(a/=d).or.any(a/=e)) write(6,*) "NG"
      print *,'pass'
    end program
