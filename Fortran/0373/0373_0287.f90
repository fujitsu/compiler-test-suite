      program main
      implicit none
      integer::i,j
      integer,parameter::n=10
      real,dimension(n)::r
      real,dimension(n,n)::a
      logical,dimension(n,n)::l=reshape((/(.true.,i=1,n*n)/),(/n,n/))
      do i=1,10
         r(i) = i
         do j=1,10
            a(j,i) = i+j
         enddo
      enddo
      call sub1
      write(6,*) r
      stop
      contains
      subroutine sub1
      r(1)=maxval(a,mask=l)
      r(2)=maxval(a,l)
      return
      end subroutine sub1
      end program
