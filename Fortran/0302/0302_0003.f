      program main
      implicit none
      integer idim,jdim,idim0,jdim0
      parameter(idim = 4, jdim = 3, idim0 = 8, jdim0 = 8)
      integer ians(idim,jdim),iwrk2(idim0,jdim0)
      integer io, jo

      ians(:,:)  = 1
      iwrk2(:,:) = 0
      call foo(idim,jdim,idim0,jdim0,ians,iwrk2)
      write(6,99) iwrk2
 99   format(8I5)
      end

      subroutine foo(idim,jdim,idim0,jdim0,ians,iwrk2)
      implicit none
      integer idim,jdim,idim0,jdim0
      integer ians(idim,jdim),iwrk2(idim0,jdim0)
      integer ii,jj,io,jo,ios,ioe,jos,joe,igrate

      igrate=(idim0-1)/idim+1
      do jj=1,jdim
        do ii=1,idim
          do jo=1,ii
            do io=1,jo
              iwrk2(jo,io)=ians(ii,jj)
            end do
          end do
        end do
      end do
      return
      end
