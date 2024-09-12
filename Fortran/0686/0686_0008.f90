      program main
      integer(4),parameter::loop=5
      integer(4),dimension(loop,loop)::a,aa
      integer(4),dimension(loop,loop,loop)::b,bb

      call subp(a,b,loop)
      call subs(aa,bb,loop)
      call subc(a,aa,b,bb,loop)

      print *,'pass'
      end

      subroutine subp(a,b,loop)
      integer(4)::loop
      integer(4),dimension(loop,loop)::a
      integer(4),dimension(loop,loop,loop)::b
!$omp parallel
      do j=1,loop
!$omp do
          do i=1, loop
            a(i,j)=j*10+i
          end do
!$omp end do
          do i=1, loop
!$omp do
              do k=1, loop
                b(k,i,j)=j*100+i*10+k
              end do
!$omp end do
          end do
      end do
!$omp end parallel
      end

      subroutine subs(a,b,loop)
      integer(4)::loop
      integer(4),dimension(loop,loop)::a
      integer(4),dimension(loop,loop,loop)::b
      do j=1,loop
          do i=1, loop
            a(i,j)=j*10+i
          end do
          do i=1, loop
              do k=1, loop
                b(k,i,j)=j*100+i*10+k
              end do
          end do
      end do
      end

      subroutine subc(a,aa,b,bb,loop)
      integer(4)::loop
      integer(4),dimension(loop,loop)::a,aa
      integer(4),dimension(loop,loop,loop)::b,bb
      integer(4)::err1=0,err2=0
!$omp parallel
      do j=1,loop
!$omp do reduction(+:err1)
        do i=1,loop
          if (a(i,j)/=aa(i,j)) err1=err1+1
        enddo
!$omp end do
        do k=1,loop
!$omp do reduction(+:err2)
          do i=1,loop
            if (b(k,i,j)/=bb(k,i,j)) err2=err2+1
          enddo
!$omp end do
        enddo
      enddo
!$omp end parallel
      if (err1.ne.0) print *,'a .ne. aa'
      if (err2.ne.0) print *,'b .ne. bb'
      end
