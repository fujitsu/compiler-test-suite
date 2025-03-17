    program main
      i2=10
      call sub_main(i2)
      print *,'pass'
    endprogram

    recursive subroutine sub_main(i2)
      integer(4),parameter::i1=1,j1=1,j2=10
      integer(4),dimension(i1:i2,j1:j2)::a
      integer(4)::k,isum,i2,ll
!$omp paralleldo
      do i=i1,i2
        do j=j1,j2
          a(i,j)=i
        enddo
      enddo
!$omp endparalleldo
      k=0
      isum=0
      call sub_sub(a,i1,i2,j1,j2,k,isum)
      if (i2==10) then
        if (isum/=55*j2) write(6,*) "NG"
      elseif (i2==100) then
        if (isum/=5050*j2) write(6,*) "NG"
      elseif (i2==1000) then
        if (isum/=500500*j2) write(6,*) "NG"
      elseif (i2==10000) then
        if (isum/=50005000*j2) write(6,*) "NG"
      endif
      ll=i2*10
      if (ll>10000) return
      call sub_main(ll)
    endsubroutine sub_main

    recursive subroutine sub_sub(a,i1,i2,j1,j2,k,isum)
      integer(4)::i1,i2,j1,j2
      integer(4)::k,isum
      integer(4),dimension(i1:i2,j1:j2)::a
      k=k+1
      if (k>j2) return
!$omp parallel
!$omp do reduction(+:isum),firstprivate(a)
      do kk=i1,i2
        isum=isum+a(kk,k)
      enddo
!$omp enddo
!$omp endparallel
      call sub_sub(a,i1,i2,j1,j2,k,isum)
    endsubroutine sub_sub
