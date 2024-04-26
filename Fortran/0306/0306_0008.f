      parameter(n=10)   
      real  * 8 a(n,n),b(n,n,n),c(n,n,n),d(n,n,n,n)   
      r = 0
      do l=1,n
      do k=1,n
      do j=1,n
      do i=1,n
        a(i,j) = r
        b(i,j,k) = r + 1
        c(i,j,k) = r + 2
        d(i,j,k,l) = r + 3
        r = r + 1
      enddo
      enddo
      enddo
      enddo
      call sub1(a,b,c,d,n)
      call sub2(a,b,c,n)
      call sub3(a,b,c,n)
      call sub4(a,b,n)
      stop
      end

      subroutine sub1(a,b,c,d,n)
      real  * 8 a(n,n),b(n,n,n),c(n,n,n),d(n,n,n,n)
      do j=1,n    
      do i=1,n    
        a(i,j) = b(i,j,1)
      enddo
      enddo
      write(6,*) sum(a)

      do j=1,n    
      do i=1,n    
        a(i,j) = b(1,i,j)
      enddo
      enddo
       print *,a(1,1)

      do j=1,n    
      do i=1,n    
        c(i,j,1) = c(i,j,1) +1
      enddo
      enddo
      print *,b(1,1,1)

      b(1,:,:) = c(1,:,:) + 1
      print *,b(1,1,1)

       b = c +1
       print *,b(1,1,1)

      b(:,:,:) = c(:,:,:) +1
       print *,b(1,1,1)

      do j=1,n
      do i=1,n
        b(i,j,1) = c(1,i,j)
      enddo
      enddo
        print *,b(1,1,1)
      do j=1,n
      do i=1,n
        b(i,j,1) = c(i,j,2)
      enddo
      enddo
        print *,b(1,1,1)
      do k=1,n
      do j=1,n
      do i=1,n
        d(i,j,k,1) = d(i,j,k,1) + 1
      enddo
      enddo
      enddo
       print *,d(1,1,1,1)
      do k=1,n
      do j=1,n
      do i=1,n
        d(i,j,1,k) = d(i,j,2,k) + 1
      enddo
      enddo
      enddo
       print *,d(1,1,1,1)
      return
      end

       subroutine sub2(a,b,c,n)
       real * 8 a(n,n),b(n,n,n),c(n,n,n)

       c(:,:,1) = b(1,:,:)
       write(6,*) sum(c)
       c(1,:,:) = b(:,:,1)
       write(6,*) sum(c)
       c(:,:,1) = b(:,1,:)
       write(6,*) sum(c)
       c(:,1,:) = b(:,:,1)
       write(6,*) sum(c)

       a = c(:,:,1)
       write(6,*) sum(a)
       a(:,:) = c(:,:,1)
       write(6,*) sum(a)
       return
       end


      subroutine sub3(a,b,c,n)
      real * 8 a(n,n),b(n,n,n),c(n,n,n)

      do i=1,n
        c(:,:,i) = b(i,:,:)
      enddo
      write(6,*) sum(c)
      do i=1,n
        c(:,:,i) = b(:,i,:)
      enddo
      write(6,*) sum(c)

      do i=1,n
        a = b(i,:,:)
      enddo
      write(6,*) sum(a)
      do i=1,n
        b(i,:,:) = a
      enddo
       write(6,*) sum(b)
      return
      end

      subroutine sub4(a,b,n)
      real * 8 a(n,n),b(n,n,n)

      a = b(1,:,:)
      write(6,*) sum(a)
      b(1,:,:) = a
      write(6,*) sum(b)
      return
      end
