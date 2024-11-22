    program main

!$omp do schedule(static,1)
      do i=1,11
        if (mod(i,2)>0.and.mod(i,3)>0.and.mod(i,4)>0.and.mod(i,5)>0.and. &
            mod(i,7)>0.and.mod(i,8)>0.and.mod(i,9)>0.and.mod(i,10)>0) then
          call sub0(i)
        endif
      enddo
!$omp enddo

      print *,'ok'
    end

    subroutine sub0(n)
      integer::a(n),b(n)
      a=(/(i,i=1,n)/)
      b=(/(i,i=1,n)/)
      k=0
!$omp parallel shared(a,n)
      call sub1(a,n,k)
!$omp endparallel
      if (any(a/=b*2))then
        write(6,*) "NG"
      else
        call sub2(a,b,n,k)
      endif
      a=(/(i,i=1,n)/)
      b=(/(i,i=1,n)/)
      call sub1(a,n,k)      
      if (any(a/=b*2))then
        write(6,*) "NG"
      else
        call sub2(a,b,n,k)
      endif
    end

    subroutine sub1(a,n,k)
      integer::a(n)

!$omp do private(i,j,k),schedule(static,n*k+1)
      do i=1,n
        j=i
        k=j
        a(i)=a(j)+i
      enddo
!$omp enddo
    end subroutine

    subroutine sub2(a,b,n,k)
      integer::a(n),b(n)
  !$omp parallel
  !$omp do schedule(static,n*k+1)
        do i=1,n
          if (a(i)/=b(i)*2) write(6,*) "NG"
        enddo
  !$omp enddo
  !$omp endparallel
    end subroutine