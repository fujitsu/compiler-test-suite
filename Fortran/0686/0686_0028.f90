    program omp
     integer(4)::a(5)=(/-2,-1,0,2,3/)
     integer(4)::b(5)=(/-2,-1,0,2,3/)
      call sub(a,b,5)
      if (any(a/=(/-1,0,1,3,4/))) print *,a
      print *,'pass'
    end program

    subroutine sub(a,b,n)
     integer(4)::a(n)
     integer(4)::b(n)
!$omp parallel if(all(b==(/-2,-1,0,2,3/))),num_threads(sum(b))
!$omp do schedule(static,maxval(b)) 
      do i=1,5
        a(i)=a(i)+1
      end do
!$omp enddo
!$omp end parallel
    end subroutine
