      real * 4 a(70000,3),b(70000,3),c(70000,3)
      data a/210000*1./
      data b/210000*2./
      data c/210000*1./
      data n,m/70000,3/

      do j=1,100,20
      do i=100,70000,10000
        call sub1(a,b,n,m,j,i)
        call sub2(c,b,n,m,j,i)
      enddo
      enddo
      call sub3(a,c,n,m)      

      stop
      end
      subroutine sub1(a,b,n,m,m1,m2)
      real * 4 a(n,m),b(n,m)
      
      do j=1,m
      do i=m1,m2
        a(i,j)=a(i,j)+b(i,j)
      enddo
      enddo

      return
      end
      subroutine sub2(a,b,n,m,m1,m2)
      real * 4 a(n,m),b(n,m)

      do j=1,m
      do i=m1,m2
        a(i,j)=a(i,j)+b(i,j)
      enddo
      enddo

      return
      end
      subroutine sub3(a,c,n,m)
      real * 4 a(n,m),c(n,m)
      integer * 4 ck

      ck = 0 
      do j=1,m
      do i=1,m
        if (a(i,j).ne.c(i,j)) then 
          write(6,*) ' NG i,j  ',i,j
          ck = ck+1
        endif
      enddo
      enddo
      if (ck.eq.0) write(6,*) 'OK'
      return
      end
