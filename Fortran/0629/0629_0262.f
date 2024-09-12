      integer a(10,10)/100*0/,b(10,10)/100*0/
      call sub0(a,b,10)

      if (b(1,1).eq.1) then
         write(6,*) ' ## OK ##'
      else
         write(6,*) ' ## NG ##'
         write(6,*) b
      endif
      end

      subroutine sub0(a,b,n1)
      integer a(n1,n1),b(n1,n1)
      write(6,*) a(1,1)
      do j=1,10
         call sub1(a,b,10)
         do i=1,10
            b(i,1) = b(i,1) + 1
         enddo
      enddo
      end

      subroutine sub1(a,b,n1)
      integer a(n1,n1),b(n1,n1)
      call sub2(a,n1)
      call sub2(b,n1)
      return
      end

      subroutine sub2(ixx,k1)
      integer ixx(k1,k1)
      do j=1,k1
         do i=1,k1
            ixx(j,i) = 0
         enddo
      enddo
      return
      end
