    subroutine sub(a,b,c,d,e,n1,n2,n3)
      integer(1)::n1,n2,n3
      integer(8),dimension(n1,n2,n3)::a
      integer(4),dimension(n1,n2,n3)::b
      integer(2),dimension(n1,n2,n3)::c
      integer(1),dimension(n1,n2,n3)::d,e

      where(a.eq.1)
   10   b=1
   20   c=b
   30   d=c
   40   e=d
      elsewhere
   50   b=0
   60   c=b
   70   d=c
   80   e=d
      endwhere

      if (any(a/=b).or.any(a/=c).or.any(a/=d).or.any(a/=e)) write(6,*) "NG"
      b=-1;c=-1;d=-1;e=-1

      forall (i=1:n1:1)
        forall (k=1:n3:1)
          where(a(i,:,k).eq.1)
  110       b(i,:,k)=1
  120       c(i,:,k)=b(i,:,k)
  130       d(i,:,k)=c(i,:,k)
  140       e(i,:,k)=d(i,:,k)
          elsewhere
  150       b(i,:,k)=0
  160       c(i,:,k)=b(i,:,k)
  170       d(i,:,k)=c(i,:,k)
  180       e(i,:,k)=d(i,:,k)
          endwhere
        endforall
      endforall
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
