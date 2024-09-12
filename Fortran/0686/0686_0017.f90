    program main
      integer(4),parameter::loop=5
      integer(4),dimension(loop,loop,loop)::a,aa
      integer(4),dimension(loop,loop,loop,loop,loop)::b,bb

      call subp(a,b,loop)
      call subs(aa,bb,loop)
      call subc(a,aa,b,bb,loop)

      print *,'pass'
    end

    subroutine subp(a,b,loop)
      integer(4)::loop
      integer(4),dimension(loop,loop,loop)::a
      integer(4),dimension(loop,loop,loop,loop,loop)::b
      integer(4),external::OMP_GET_THREAD_NUM
      call OMP_SET_DYNAMIC(.false.)
      call OMP_SET_NUM_THREADS(2)
      n5=1;n4=1;n3=1;n2=1;n1=1
!$omp parallel private(n5,n4,n3,n2,n1)
      n3=10
      do n5=1,loop
        do n4=1,loop
!$omp do schedule(static,loop/2+1)
          do n3=1,loop
            a(n5,n4,n3)=n5*100+n4*10+n3
          enddo
!$omp end do
          if (OMP_GET_THREAD_NUM()==0) then
            if(n3/=4) print*,'n3: 4 /=',n3
          else
            if(n3/=6) print*,'%n3: 6 /=',n3
          endif
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
      if (OMP_GET_THREAD_NUM()==0) then
        if(n3/=4) print*,'!$n3: 4 /=',n3
      else
        if(n3/=6) print*,'!$%n3: 6 /=',n3
      endif
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
      common /com/ n5,n4,n3,n2,n1
      integer(4),external::OMP_GET_THREAD_NUM
      call OMP_SET_DYNAMIC(.false.)
      call OMP_SET_NUM_THREADS(2)
      n5=1;n4=1;n3=1;n2=1;n1=1
!$omp parallel private(n5,n4,n3,n2,n1)
      do n5=1,loop
!$omp do schedule(static,loop/2+1),reduction(+:err1)
        do n4=1,loop
          do n3=1,loop
            if (a(n5,n4,n3)/=aa(n5,n4,n3)) err1=err1+1
          enddo
        enddo
!$omp end do
        if (OMP_GET_THREAD_NUM()==0) then
          if (n4/=4) print *,'#n4: 4 /=',n4
        else
          if (n4/=6) print *,'##n4: 6 /=',n4
        endif
        if (n3/=loop+1) print *,'#n3:',loop+1,'/=',n3
        do n4=1,loop
          do n3=1,loop
!$omp do schedule(static,loop/2+1),reduction(+:err2)
            do n2=1,loop
              do n1=1,loop
                if (b(n5,n4,n3,n2,n1)/=bb(n5,n4,n3,n2,n1)) err2=err2+1
              enddo
            enddo
!$omp end do
          enddo
        enddo
      enddo
      if (n5/=loop+1) print *,'#n5:',loop+1,'/=',n5
      if (n4/=loop+1) print *,'###n4:',loop+1,'/=',n4
      if (n3/=loop+1) print *,'#n3:',loop+1,'/=',n3
      if (OMP_GET_THREAD_NUM()==0) then
        if (n2/=4) print *,'#n2: 4 /=',n2
      else
        if (n2/=6) print *,'##n2: 6 /=',n2
      endif
      if (n1/=loop+1) print *,'#n1:',loop+1,'/=',n1
!$omp end parallel
      if (err1.ne.0) print *,'a .ne. aa'
      if (err2.ne.0) print *,'b .ne. bb'
    end subroutine subc
