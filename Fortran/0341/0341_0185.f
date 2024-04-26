      integer a(10,10)
      do i=1,2
         do j=1,2
            do k=1,2
               do l=1,2
                  do m=1,2
                     do n=1,2
                        do ii=1,2
                           do jj=1,2
                              do kk=1,2
                                 a(i,j) = 1
                              enddo
                           enddo
                        enddo
                     enddo
                  enddo
               enddo
            enddo
         enddo
      enddo
      do i=1,2
         do j=1,2
            do k=1,2
               do l=1,2
                  do m=1,2
                     do n=1,2
                        do ii=1,2
                           do jj=1,2
                              a(i,j) = 1
                           enddo
                        enddo
                     enddo
                  enddo
               enddo
            enddo
         enddo
      enddo
      if(a(1,1).eq.1) then
         write(6,*) "OK"
      else
         write(6,*) "NG"
      endif
      end
