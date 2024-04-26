    program foralls
     complex(4)::t(5),u(5)
      t=(/(1.0,-1.0),(2.0,-2.0),(3.0,-3.0),(4.0,-4.0),(5.0,-5.0)/)
      u=(/(1.0,-1.0),(2.0,-2.0),(3.0,-3.0),(4.0,-4.0),(5.0,-5.0)/)

      call sub1(t,5)
      call sub2(u,5)
      
      if (any(t/=u)) then
       print *,'t->',t
       print *,'u->',u
      endif
      print *,'pass'
    end program foralls

    subroutine sub1(t,n)
     complex(4)::t(n)
     complex(4),allocatable::tmp(:)
      allocate(tmp(0:n-1))
      j=0
      do i=1,n-1
        tmp(j)=t(i)
        j=j+1
      enddo
      j=0
      do i=1,n-1
        t(i+1)=tmp(j)
        j=j+1
      enddo
      deallocate(tmp)
    end subroutine

    subroutine sub2(u,n)
     complex(4)::u(n)
      forall(i=1:n-1)
        u(i+1)=u(i)
      end forall
    end subroutine
