      call sub01()
      call sub02(1,5)
      call sub03()
      write(6,*) "PASS"
      stop
      end

      subroutine sub01()
      integer(kind=4),target::i04a(5,5),i04b(5,5),i04c(5,5)
      integer(kind=4),target::i04d(5,5),i04e(5,5),i04f(5,5)
      integer(kind=4),pointer::p(:)

      do i=1,5
         p=>i04a(i,:) ; p = (/(j*5+i,j=0,4)/)
         p=>i04b(i,:) ; p = (/(j*5+i,j=0,4)/)
         p=>i04c(i,:) ; p = (/(j*5+i,j=0,4)/)
         p=>i04d(i,:) ; p = (/(j*5+i,j=0,4)/)
         p=>i04e(i,:) ; p = (/(j*5+i,j=0,4)/)
         p=>i04f(i,:) ; p = (/(j*5+i,j=0,4)/)
      enddo
      
      i04a = i04a + 1
      i04b(:,:) = i04b(:,:)+i04a(:,:)
      i04c(1:4,:) = i04c(1:4,:) + i04b(1:4,:)

      i04d(:,1:4) = i04c(:,2:5) + i04c(:,2:5)

      i04e(2:5,:) = i04e(1:4,:) + i04d(1:4,:)

      i04f(:,1:5) = i04f(:,5:1:-1) + i04e
      write(6,FMT='( 5(5I5,/))') i04f
      return
      end


      subroutine sub02(i,j)
      complex(kind=4)::c08a(j,j),c08b(j,j),c08c(j,j)
      complex(kind=4)::c08d(j,j),c08e(j,j),c08f(j,j)

      do m=1,5
       c08a(m:m,1:5) = reshape((/(CMPLX(k,-k),k=i,i*j)/),(/i,j/))
      enddo
      c08b = c08a
      c08c = c08b
      c08d = c08c
      c08e = c08d
      c08f = c08e

      c08a = c08a + 1
      c08b(:,:) = c08b(:,:)+c08a(:,:)
      c08c(i:j-1,:) = c08c(i:j-1,:) + c08b(i:j-1,:)

      c08d(:,i:j-1) = c08c(:,i+1:j) + c08c(:,i+1:j)

      c08e(i+1:j,:) = c08e(i:j-1,:) + c08d(i:j-1,:)

      c08f(:,i:j) = c08e(:,j:i:-1) + c08e
      write(6,FMT='(8(3("(",F7.3,",",F7.3,") "),/),&
                       &"(",F7.3,",",F7.3,") ",/    )') c08f
      return
      end


      subroutine sub03()
      real(kind=4)::r04a(5,5),r04b(5,5),r04c(5,5)
      real(kind=4)::r04d(5,5)
      real(kind=4)::s1,s2,s3,s4,s5

      r04a = reshape((/(REAL(i),i=25,1,-1)/),(/5,5/))

      s1 = COS(0.)
      r04b = r04a + s1

      s2 = s1 + SQRT(1.)
      r04c = r04b + s2

      s3 = MOD(3,4)
      r04d = r04c + s3

      s4 = SIN(0.)+4
      s5 = REAL(FLOOR(5.5))
      r04d = r04c + s3
      write(6,FMT='(5(5F10.3,/))') r04d
      return
      end

