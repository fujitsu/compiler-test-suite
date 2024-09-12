      integer a(10,10,10)/1000*1/

      call sub1(a,10,10)
      call sub2(a,10,10)
      call sub3(a,10,10)
      call sub4(a,10,10)

      write(6,*) " ## OK ## "
      end

      subroutine sub1(a,ll,nn10)
      integer a(ll,ll,ll)
      isum = 0
      jsum = 0
      ksum = 0
      k = ifunc(2)
      j = ifunc(3)
      i = ifunc(2)
      do k=k,nn10
         do j=j,nn10
            do i=i,nn10
               isum = isum + a(i,j,k)
            enddo
            jsum = jsum + a(1,j,k)
            i = 1
         enddo
         ksum = ksum + a(1,1,k)
         j = 1
      enddo
      if (isum  .ne. 879) write(6,*) 'erri 01 ',isum
      if (jsum  .ne. 88) write(6,*) 'errj 01 ',jsum
      if (ksum  .ne. 9) write(6,*) 'errk 01 ',ksum
      end


      subroutine sub2(a,ll,nn10)
      integer a(ll,ll,ll)
      isum = 0
      jsum = 0
      ksum = 0
      k = ifunc(11)
      j = ifunc(3)
      i = ifunc(2)
      do k=k,nn10
         do j=j,nn10
            do i=i,nn10
               isum = isum + a(i,j,k)
            enddo
            jsum = jsum + a(1,j,k)
            i = 1
         enddo
         ksum = ksum + a(1,1,k)
         j = 1
      enddo
      if (isum  .ne. 0) write(6,*) 'erri 02 ',isum
      if (jsum  .ne. 0) write(6,*) 'errj 02 ',jsum
      if (ksum  .ne. 0) write(6,*) 'errk 02 ',ksum
      end


      subroutine sub3(a,ll,nn10)
      integer a(ll,ll,ll)
      isum = 0
      jsum = 0
      ksum = 0
      k = ifunc(2)
      j = ifunc(11)
      i = ifunc(2)
      do k=k,nn10
         do j=j,nn10
            do i=i,nn10
               isum = isum + a(i,j,k)
            enddo
            jsum = jsum + a(1,j,k)
            i = 1
         enddo
         ksum = ksum + a(1,1,k)
         j = 1
      enddo
      if (isum  .ne. 799) write(6,*) 'erri 03 ',isum
      if (jsum  .ne. 80) write(6,*) 'errj 03 ',jsum
      if (ksum  .ne. 9) write(6,*) 'errk 03 ',ksum
      end


      subroutine sub4(a,ll,nn10)
      integer a(ll,ll,ll)
      isum = 0
      jsum = 0
      ksum = 0
      k = ifunc(2)
      j = ifunc(3)
      i = ifunc(11)
      do k=k,nn10
         do j=j,nn10
            do i=i,nn10
               isum = isum + a(i,j,k)
            enddo
            jsum = jsum + a(1,j,k)
            i = 1
         enddo
         ksum = ksum + a(1,1,k)
         j = 1
      enddo
      if (isum  .ne. 870) write(6,*) 'erri 04 ',isum
      if (jsum  .ne. 88) write(6,*) 'errj 04 ',jsum
      if (ksum  .ne. 9) write(6,*) 'errk 04 ',ksum
      end

      integer function ifunc(ii)
      ifunc = ii
      return
      end

