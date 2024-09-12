    program main
      integer(4),parameter::loop=5
      integer(4),dimension(loop,loop,loop)::a,aa
      integer(4),dimension(loop,loop,loop,loop,loop)::b,bb

!$    call OMP_SET_DYNAMIC(.FALSE.)
!$    call OMP_SET_NUM_THREADS(2)

      call subp(a,b,loop)
      call subs(aa,bb,loop)
      call subc(a,aa,b,bb,loop)

      print *,'pass'
    end

    subroutine subp(a,b,loop)
      integer(4)::loop
      integer(4),dimension(loop,loop,loop)::a
      integer(4),dimension(loop,loop,loop,loop,loop)::b
      n5=1;n4=1;n3=1;n2=1;n1=1
!$omp parallel
      do n5=1,loop
        do n4=1,loop
!$omp do
          do n3=1,loop
            a(n5,n4,n3)=n5*100+n4*10+n3
          enddo
!$omp end do
!$omp do
          do n3=1,loop
            do n2=1,loop
              do n1=1, loop
                b(n5,n4,n3,n2,n1)=n5*10000+n4*1000+n3*100+n2*10+n1
              end do
            end do
          end do
!$omp end do
        end do
      end do
      if (n5/=loop+1) print *,'n5:',loop+1,'/=',n5
      if (n4/=loop+1) print *,'n4:',loop+1,'/=',n4
      if (n3/=1) print *,'n3: 1 /=',n3
      if (n2/=loop+1) print *,'n2:',loop+1,'/=',n2
      if (n1/=loop+1) print *,'n1:',loop+1,'/=',n1
!$omp end parallel
    end subroutine subp

    subroutine subs(a,b,loop)
      integer(4)::loop
      integer(4),dimension(loop,loop,loop)::a
      integer(4),dimension(loop,loop,loop,loop,loop)::b
      do n5=1,loop
        do n4=1,loop
          do n3=1,loop
            a(n5,n4,n3)=n5*100+n4*10+n3
          enddo
          do n3=1,loop
            do n2=1,loop
              do n1=1, loop
                b(n5,n4,n3,n2,n1)=n5*10000+n4*1000+n3*100+n2*10+n1
              end do
            end do
          end do
        end do
      end do
    end subroutine subs

    subroutine subc(a,aa,b,bb,loop)
      integer(4)::loop
      integer(4),dimension(loop,loop,loop)::a,aa
      integer(4),dimension(loop,loop,loop,loop,loop)::b,bb
      integer(4)::err1=0,err2=0
      n5=1;n4=1;n3=1;n2=1;n1=1
!$omp parallel
      do n5=1,loop
!$omp do reduction(+:err1)
        do n4=1,loop
          do n3=1,loop
            if (a(n5,n4,n3)/=aa(n5,n4,n3)) err1=err1+1
          enddo
        enddo
!$omp end do
        do n4=1,loop
          do n3=1,loop
!$omp do reduction(+:err2)
            do n2=1,loop
              do n1=1,loop
                if (b(n5,n4,n3,n2,n1)/=bb(n5,n4,n3,n2,n1)) err2=err2+1
              enddo
            enddo
!$omp end do
          enddo
        enddo
      enddo
      if (n5/=loop+1) print *,'n5:',loop+1,'/=',n5
      if (n4/=loop+1) print *,'n4:',loop+1,'/=',n4
      if (n3/=loop+1) print *,'n3:',loop+1,'/=',n3
      if (n2/=1) print *,'n2: 1 /=',n2
      if (n1/=loop+1) print *,'n1:',loop+1,'/=',n1
!$omp end parallel
      if (err1.ne.0) print *,'a .ne. aa'
      if (err2.ne.0) print *,'b .ne. bb'
    end subroutine subc