      real * 4 a(65536,10),b(65536,10),c(65536,10)
      data a/655360*1./
      data b/655360*2./
      data c/655360*1./
      data n,m/65536,10/
      data m1,m2/2,3500/

      call sub1(a,b,n,m,m1,m2)
      call sub2(c,b,n,m,m1,m2)
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
