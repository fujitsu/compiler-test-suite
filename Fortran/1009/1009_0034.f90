    block data
      common /com0/ i1,i2,i4,i8
      common /com1/ n11,n12,n13,k1
      common /com2/ n21,n22,n23,k2
      common /com4/ n41,n42,n43,k4
      common /com8/ n81,n82,n83,k8
      integer(1)::i1,n11,n12,n13,k1
      integer(2)::i2,n21,n22,n23,k2
      integer(4)::i4,n41,n42,n43,k4
      integer(8)::i8,n81,n82,n83,k8
    end block data

    program main
      integer(1),parameter::m1=-20,m2=20,m3=1
      integer(1),dimension(m1:m2)::a1=0,a2=0,a4=0,a8=0,x=0
      common /com0/ i1,i2,i4,i8
      common /com1/ n11,n12,n13,k1
      common /com2/ n21,n22,n23,k2
      common /com4/ n41,n42,n43,k4
      common /com8/ n81,n82,n83,k8
      integer(1)::i1,n11,n12,n13,k1
      integer(2)::i2,n21,n22,n23,k2
      integer(4)::i4,n41,n42,n43,k4
      integer(8)::i8,n81,n82,n83,k8
      n11=m1;n12=m2;n13=m3;k1=1
      n21=m1;n22=m2;n23=m3;k2=1
      n41=m1;n42=m2;n43=m3;k4=1
      n81=m1;n82=m2;n83=m3;k8=1
      x=(/0,7,0,1,2,0,4,5,9,0,0,8,5,3,2,0,7,2,2,7, &
          0,6,0,8,2,0,4,5,6,0,3,1,5,7,2,0,7,2,2,7,7/)
!$omp parallel
      call sub1(x,a1)
      call sub2(x,a2)
      call sub4(x,a4)
      call sub8(x,a8)
!$omp endparallel

      if (any(a1/=x).or.any(a2/=x).or.any(a4/=x).or.any(a8/=x)) write(6,*) "NG"
      if (n11/=m1.or.n21/=m1.or.n41/=m1.or.n81/=m1) write(6,*) "NG"
      if (n12/=m2.or.n22/=m2.or.n42/=m2.or.n82/=m2) write(6,*) "NG"
      if (n13/=m3.or.n23/=m3.or.n43/=m3.or.n83/=m3) write(6,*) "NG"
      if (k1/=1.or.k2/=1.or.k4/=1.or.k8/=1) write(6,*) "NG"
      if (i1/=n12+1.or.i2/=n22+1.or.i4/=n42+1.or.i8/=n82+1) write(6,*) "NG"

      print *,'ok'
    end program

    subroutine sub1(x,a1)
      common /com0/ i1,i2,i4,i8
      integer(1)::i1
      integer(2)::i2
      integer(4)::i4
      integer(8)::i8
      common /com1/ n11,n12,n13,k1
      integer(1)::n11,n12,n13,k1
      integer(1),dimension(n11:n12)::a1,x
!$omp do schedule(static,1),firstprivate(/com1/),lastprivate(i1)
      do i1=n11,n12,n13
        if (x(i1).ne.0) a1(i1)=x(i1)
      enddo
!$omp enddo
    end subroutine

    subroutine sub2(x,a2)
      common /com0/ i1,i2,i4,i8
      integer(1)::i1
      integer(2)::i2
      integer(4)::i4
      integer(8)::i8
      common /com2/ n21,n22,n23,k2
      integer(2)::n21,n22,n23,k2
      integer(1),dimension(n21:n22)::a2,x
!$omp do schedule(static,1),firstprivate(/com2/),lastprivate(i2)
      do i2=n21,n22,n23
        if (x(i2).ne.0) a2(i2)=x(i2)
      enddo
!$omp enddo
    end subroutine

    subroutine sub4(x,a4)
      common /com0/ i1,i2,i4,i8
      integer(1)::i1
      integer(2)::i2
      integer(4)::i4
      integer(8)::i8
      common /com4/ n41,n42,n43,k4
      integer(4)::n41,n42,n43,k4
      integer(1),dimension(n41:n42)::a4,x
!$omp do schedule(static,1),firstprivate(/com4/),lastprivate(i4)
      do i4=n41,n42,n43
        if (x(i4).ne.0) a4(i4)=x(i4)
      enddo
!$omp enddo
    end subroutine

    subroutine sub8(x,a8)
      common /com0/ i1,i2,i4,i8
      integer(1)::i1
      integer(2)::i2
      integer(4)::i4
      integer(8)::i8
      common /com8/ n81,n82,n83,k8
      integer(8)::n81,n82,n83,k8
      integer(1),dimension(n81:n82)::a8,x
!$omp do schedule(static,1),firstprivate(/com8/),lastprivate(i8)
      do i8=n81,n82,n83
        if (x(i8).ne.0) a8(i8)=x(i8)
      enddo
!$omp enddo
    end subroutine
