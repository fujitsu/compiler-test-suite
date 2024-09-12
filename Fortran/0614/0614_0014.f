      structure /xx/
        character*2 a1(3,3),b1(3,3)
      end structure
      record /xx/ x(3)
      integer*4 check
      data (((x(k).a1(i,j),i=1,3),j=1,3),k=1,3)
     +      /"ab","bc","cd","de","ef","fg","gh","hi","ij"
     +      ,"jk","kl","lm","mn","no","op","pq","qr","rs"
     +      ,"st","tu","uv","vw","wx","xy","yz","za","ab"/
      data (((x(k).b1(i,j),i=1,3),j=1,3),k=1,3)
     +      /"st","tu","uv","vw","wx","xy","yz","za","ab"
     +      ,"jk","kl","lm","mn","no","op","pq","qr","rs"
     +      ,"ab","bc","cd","de","ef","fg","gh","hi","ij"/
      call t1(x,3)
      if(check(x) .eq. 0) then
         print *,'*** ok ***'
      else
         print *,'*** ng ***'
      endif
      end

      function q(x)
      integer q
      structure /xx/
        character*2 a1(3,3),b1(3,3)
      end structure
      record /xx/ x
      x.a1(1,1)=x.a1(1,1)
      q=1
      end

      subroutine t1(z,n)
      structure /xx/
        character*2 a1(3,3),b1(3,3)
      end structure
      record /xx/ z(n-2:n)
      character*2 g2(:,:)
      integer q
      allocatable g2
      k=1
      z(1).a1(k:3,k:3)=z(q(z(1))).b1
      end

      integer function check(x)
      structure /xx/
        character*2 a1(3,3),b1(3,3)
      end structure
      record /xx/ x(3),t(3)
      integer*4 error/0/
      data (((t(k).a1(i,j),i=1,3),j=1,3),k=1,3)
     +      /"st","tu","uv","vw","wx","xy","yz","za","ab"
     +      ,"jk","kl","lm","mn","no","op","pq","qr","rs"
     +      ,"st","tu","uv","vw","wx","xy","yz","za","ab"/
      data (((t(k).b1(i,j),i=1,3),j=1,3),k=1,3)
     +      /"st","tu","uv","vw","wx","xy","yz","za","ab"
     +      ,"jk","kl","lm","mn","no","op","pq","qr","rs"
     +      ,"ab","bc","cd","de","ef","fg","gh","hi","ij"/
      do k=1,3
        do j=1,3
          do i=1,3
            if(x(k).a1(i,j) .ne. t(k).a1(i,j) .and.
     +         x(k).b1(i,j) .ne. t(k).b1(i,j)) error=error+1
          end do
        end do
      end do
      check=error
      end
