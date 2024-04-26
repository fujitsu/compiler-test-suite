      program man
      parameter(n=10,begin=2,end=10,inc=1)
      real * 8 a(n,n,n) 
      a=0
      call sub(a,n,begin,end,inc)
      print *, " end " 
      stop
      end
      subroutine sub(a,n,begin,end,inc)
      real * 8 a(n,n,n) 
      do i=begin,end
       do j=begin,end
         do k=begin,end
           a(k,j,i)=a(k-1,j,i)+a(k,j-1,i)+a(k,j,i-1)
        enddo
       enddo
      enddo
      return
      end
