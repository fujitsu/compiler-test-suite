      common /com1/ ia,ib,i1,i2,i3
      common /com2/ iz
      integer,dimension(10) :: ia,ib,ic=1
      integer,dimension(3)  :: iz
      iz(1)=1 ; iz(2)=10 ; iz(3)=1
      i1=11 ; i2=12 ; i3=13
!$omp parallel firstprivate(/com2/),private(/com1/),shared(ic)
      i1=1 ; i2=2 ; i3=3
      ia=(/(i,i=iz(i1),iz(i2))/)
      if (any(ia/=(/1,2,3,4,5,6,7,8,9,10/))) print *,"fail"
      ib(iz(i1):iz(i2):iz(i3))=ia(iz(i1):iz(i2):iz(i3))
      if (any(ib/=(/1,2,3,4,5,6,7,8,9,10/))) print *,"fail"
      iz(i1)=3 ; iz(i2)=7
      ib(iz(i1):iz(i2):iz(i3))=0
      if (any(ib/=(/1,2,0,0,0,0,0,8,9,10/))) print *,"fail"
      iz(i1)=1 ; iz(i2)=9 ; iz(i3)=2
      ib(iz(i1):iz(i2):iz(i3))=5
      if (any(ib/=(/5,2,5,0,5,0,5,8,5,10/))) print *,"fail"
      iz(i1)=6
      ib(iz(i1):)=1
      if (any(ib/=(/5,2,5,0,5,1,1,1,1,1 /))) print *,"fail"
      iz(i1)=2 ; iz(i2)=10 ; iz(i3)=2
      ib(iz(i1):iz(i2):iz(i3))=ia(iz(i1):iz(i2):iz(i3))
      if (any(ib/=(/5,2,5,4,5,6,1,8,1,10/))) print *,"fail"
      ib(iz(i1):iz(i2):iz(i3))=ib(iz(i1):iz(i2):iz(i3))  &
                              -ic(iz(i1):iz(i2):iz(i3))
      if (any(ib/=(/5,1,5,3,5,5,1,7,1,9 /))) print *,"fail"
!$omp end parallel
!$    if (iz(1)/=1.or.iz(2)/=10.or.iz(3)/=1) print *,"fail"
!$    if (i1/=11.or.i2/=12.or.i3/=13) print *,"fail"
      print *,'pass'
      end
