      program main
      real*8 a(5,5,5,5,5,5,5)
      a=5.
      call sub(a)
      call inn(a)
      call check(a)
      contains
        subroutine inn(b)
        real*8 b(:,:,:,:,:,:,:)
        b=b-1
        return
        end subroutine
      end
      subroutine sub(a)
      real*8 a(5,5,5,5,5,5,5)
      integer  i,j,k,l,m,n,o
      do l=1,5
        do m=5,1,-1
          do i=5,1,-1
            do o=1,5
              do j=1,5,2
                do k=1,5
                  do n=5,1,-1
                    a(i,j,k,l,m,n,o)=a(i,j,k,l,m,n,o)+1
                  enddo
                enddo
              enddo
              do j=2,5,2
                do k=1,5
                  do n=1,5
                    a(i,j,k,l,m,n,o)=a(i,j,k,l,m,n,o)+1
                  enddo
                enddo
              enddo
            enddo
          enddo
        enddo
      enddo
      call sub2(a)
      return
      end
      subroutine sub2(a)
      real*8 a(5,5,5,5,5,5,5)
      call inn(a)
      call sub3(a)
      return
      contains
        subroutine inn(b)
        real*8 b(:,:,:,:,:,:,:)
        b=b-1
        return
        end subroutine
      end
      subroutine sub3(a)
      real*8 a(5,5,5,5,5,5,5)
      call inn
      return
      contains
        subroutine inn
        a=a+1
        return
        end subroutine
      end
      subroutine check(a)
      real*8 a(5,5,5,5,5,5,5)
      character*2 c
      integer  i,j,k,l,m,n,o,sum
      sum=0
      do o=1,5
        do n=1,5
          do m=1,5
            do l=1,5
              do k=1,5
                do j=1,5
                  do i=1,5
                    sum=sum+a(i,j,k,l,m,n,o)
                  enddo
                enddo
              enddo
            enddo
          enddo
        enddo
      enddo
      c = 'ok'
      if( sum /= 5**8 ) c = 'ng'
      write(6,*) '******** '//c//' ********* '
      return
      end
