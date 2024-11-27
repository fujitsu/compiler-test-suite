    program main

      do i=1,300
        if (mod(i,2)>0.and.mod(i,3)>0.and.mod(i,4)>0.and.mod(i,5)>0.and. &
            mod(i,7)>0.and.mod(i,8)>0.and.mod(i,9)>0.and.mod(i,10)>0) then
          call sub0(i)
        endif
      enddo

      print *,'ok'
    end

    subroutine sub0(n)
      integer::a(n,n-1),b(n,n-1)
      a=reshape((/(i,i=1,n*(n-1))/),(/n,n-1/))
      b=reshape((/(i,i=1,n*(n-1))/),(/n,n-1/))
!$omp parallel shared(a,n)
      call sub1(a,n)
!$omp endparallel
      if (any(a/=b*2))then
        write(6,*) "NG"
      else
        call sub2(a,b,n)
      endif
      a=reshape((/(i,i=1,n*(n-1))/),(/n,n-1/))
      b=reshape((/(i,i=1,n*(n-1))/),(/n,n-1/))
      call sub1(a,n)      
      if (any(a/=b*2))then
        write(6,*) "NG"
      else
        call sub2(a,b,n)
      endif
    end subroutine

    subroutine sub1(a,n)
      integer::a(n,n-1)
      do ii=1,n-1
!$omp do private(i,j,k),schedule(static)
      do i=n,1,-1
        j=i
        k=j
        a(i,ii)=a(j,ii)*2
      enddo
!$omp enddo
      enddo
    end subroutine

    subroutine sub2(a,b,n)
      integer::a(n,n-1),b(n,n-1)
        do ii=1,n-1
  !$omp parallel
  !$omp do schedule(static)
        do i=n,1,-1
          if (a(i,ii)/=b(i,ii)*2) write(6,*) "NG"
        enddo
  !$omp enddo
  !$omp endparallel
        enddo
    end subroutine
