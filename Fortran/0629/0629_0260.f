      recursive subroutine sub2(ixx,k1)
      integer ixx(k1,k1)
      do j=1,k1
         do i=1,k1
            ixx(j,i) = 0
            if (ixx(j,i) == 1) then
               call sub2(ixx,k1)
            endif
         enddo
      enddo
      return
      end

      subroutine sub1(iaa,ibb,n1)
      integer iaa(n1,n1),ibb(n1,n1)
      call sub2(iaa,n1)
      call sub2(ibb,n1)
      call sub2(iaa,n1)
      call sub2(ibb,n1)
      return
      end

      subroutine sub0(ia,ib,n1)
      integer ia(n1,n1),ib(n1,n1)

      write(6,*) ia(1,1)
      do jj=1,10
         call sub1(ia,ib,10)
         do i=1,10
            ib(i,1) = ib(i,1) + 1
         enddo
      enddo
      end

      integer a(10,10)/100*0/,b(10,10)/100*0/
      call sub0(a,b,10)
      if (b(1,1).eq.1) then
         write(6,*) ' ## OK ##'
      else
         write(6,*) ' ## NG ##'
         write(6,*) b
      endif

      end
