    subroutine sub(a,b,c,d,e,n1,n2,n3,vs1,vs2,vs3)
      integer(1)::n1,n2,n3
      integer(8),allocatable,dimension(:,:,:)::a
      integer(4),allocatable,dimension(:,:,:)::b
      integer(2),allocatable,dimension(:,:,:)::c
      integer(1),allocatable,dimension(:,:,:)::d,e
      integer(1),allocatable,dimension(:)::vs1
      integer(1),allocatable,dimension(:)::vs2
      integer(1),allocatable,dimension(:)::vs3

   10 where(a(vs1,vs2,vs3).eq.1)
   20   b(vs1,vs2,vs3)=1
   30   c(vs1,vs2,vs3)=b(vs1,vs2,vs3)
   40   d(vs1,vs2,vs3)=c(vs1,vs2,vs3)
   50   e(vs1,vs2,vs3)=d(vs1,vs2,vs3)
   60 elsewhere(a(vs1,vs2,vs3).eq.2)
   70   b(vs1,vs2,vs3)=2
   80   c(vs1,vs2,vs3)=b(vs1,vs2,vs3)
   90   d(vs1,vs2,vs3)=c(vs1,vs2,vs3)
  100   where(a(vs1,vs2,vs3).lt.0) a(vs1,vs2,vs3)=-1
  110   e(vs1,vs2,vs3)=d(vs1,vs2,vs3)
  120 elsewhere(a(vs1,vs2,vs3).eq.0)
  130   b(vs1,vs2,vs3)=0
  140   c(vs1,vs2,vs3)=b(vs1,vs2,vs3)
  150   d(vs1,vs2,vs3)=c(vs1,vs2,vs3)
  160   where(a(vs1,vs2,vs3).lt.0) a(vs1,vs2,vs3)=-1
  170   e(vs1,vs2,vs3)=d(vs1,vs2,vs3)
  180 endwhere

      if (any(a/=b).or.any(a/=c).or.any(a/=d).or.any(a/=e)) write(6,*) "NG"
      b=-1;c=-1;d=-1;e=-1

  210 forall (i=1:n1:1)
  230     where(a(i,vs2,vs3).eq.1)
  240       b(i,vs2,vs3)=1
  250       c(i,vs2,vs3)=b(i,vs2,vs3)
  260       d(i,vs2,vs3)=c(i,vs2,vs3)
  270       e(i,vs2,vs3)=d(i,vs2,vs3)
  280     elsewhere(a(i,vs2,vs3).eq.2)
  290       b(i,vs2,vs3)=2
  300       c(i,vs2,vs3)=b(i,vs2,vs3)
  310       d(i,vs2,vs3)=c(i,vs2,vs3)
  320       where(a(i,vs2,vs3).lt.0) a(i,vs2,vs3)=-1
  330       e(i,vs2,vs3)=d(i,vs2,vs3)
  340     elsewhere
  350       b(i,vs2,vs3)=0
  360       c(i,vs2,vs3)=b(i,vs2,vs3)
  370       d(i,vs2,vs3)=c(i,vs2,vs3)
  380       where(a(i,vs2,vs3).lt.0) a(i,vs2,vs3)=-1
  390       e(i,vs2,vs3)=d(i,vs2,vs3)
  400     endwhere
  420 endforall
    end subroutine

    program abc
      integer(1)::n1=3,n2=2,n3=3
      integer(8),allocatable,dimension(:,:,:)::a
      integer(4),allocatable,dimension(:,:,:)::b
      integer(2),allocatable,dimension(:,:,:)::c
      integer(1),allocatable,dimension(:,:,:)::d,e
      integer(1),allocatable,dimension(:)::vs1
      integer(1),allocatable,dimension(:)::vs2
      integer(1),allocatable,dimension(:)::vs3
     interface
      subroutine sub(a,b,c,d,e,n1,n2,n3,vs1,vs2,vs3)
        integer(1)::n1,n2,n3
        integer(8),allocatable,dimension(:,:,:)::a
        integer(4),allocatable,dimension(:,:,:)::b
        integer(2),allocatable,dimension(:,:,:)::c
        integer(1),allocatable,dimension(:,:,:)::d,e
        integer(1),allocatable,dimension(:)::vs1
        integer(1),allocatable,dimension(:)::vs2
        integer(1),allocatable,dimension(:)::vs3
      end subroutine
     end interface

      allocate(a(n1,n2,n3),b(n1,n2,n3),c(n1,n2,n3),d(n1,n2,n3),e(n1,n2,n3))
      allocate(vs1(n1),vs2(n2),vs3(n3))
      vs1=(/3,1,2/);vs2=(/2,1/);vs3=(/1,3,2/)
      b=-1;c=-1;d=-1;e=-1
      a=reshape((/1,0,2,1,1,2,1,0,2,0,0,1,2,2,0,2,2,1/),(/n1,n2,n3/))
      call sub(a,b,c,d,e,n1,n2,n3,vs1,vs2,vs3)
      if (any(a/=b).or.any(a/=c).or.any(a/=d).or.any(a/=e)) write(6,*) "NG"
      print *,'pass'
    end program
