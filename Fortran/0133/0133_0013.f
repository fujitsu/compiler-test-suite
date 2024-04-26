      program main
      integer,parameter:: N=50
      integer,parameter:: S1=1
      integer,parameter:: B1=25
      integer,parameter:: S2=2
      integer,parameter:: B2=26
      integer,parameter:: S3=3
      integer,parameter:: B3=16
      integer,parameter:: S4=4
      integer,parameter:: B4=17
      integer,parameter:: ANS=30774
      integer a(N,N),b(N,N),c(N,N)
      integer sm3,bg3,sm4,bg4
      integer res

      sm3 = S3*cos(0.0)
      bg3 = B3*cos(0.0)
      sm4 = S4*cos(0.0)
      bg4 = B4*cos(0.0)
      
      a  = reshape((/(MOD(i,2)+1,i=1,N*N)/),(/N,N/))
      b  = reshape((/(MOD(i,3)+1,i=1,N*N)/),(/N,N/))
      c  = reshape((/(MOD(i,2),i=1,N*N)/),(/N,N/))

      do i=S1, B1
         a = a - minval(c)
         a(i:B1,i:N) = a(i:B1,i:N) + minval(c)
         b(S3:B3,S4:B4) = b(S3:B3,S4:B4) - minval(c)
         b(sm3:bg3,sm4:bg4) = b(sm3:bg3,sm4:bg4) - minval(c)
         do j=S2, B2
            b(S4:B4,S3:B3) = b(S4:B4,S3:B3) + maxval(c)
            a(j:B2,j:N) = a(j:B2,j:N) + minval(c)
            a = a + maxval(c)
            b(sm4:bg4,sm3:bg3) = b(sm4:bg4,sm3:bg3) + minval(c)
         enddo
      enddo

      do i=S1, B1
         a = a + minval(c)
         b(S3:B3,S4:B4) = b(S3:B3,S4:B4) - minval(c)
         a(i:B1,i:N) = a(i:B1,i:N) + minval(c)
         a(i:B1,i:B1+3) = a(i:B1,i+3:B1+6) + minval(c)
         a(sm3:bg3,sm4:bg4) = a(sm3:bg3,sm4:bg4) - minval(c)
         do j=S2, B2
            a(i,j) = a(i,j) + 1
         enddo
      enddo

      j = 1
      do i=S1, B1
         a(i,j) = a(i,j) - 1
         do j=S2, B2
            a(S4:B4,S3:B3) = a(S4:B4,S3:B3) + minval(c)
            b(sm3:bg3,sm4:bg4) = b(S4:B4,S4:B4) + minval(c)
            a(j:B2,j:B2+3) = a(j:B2,j+3:B2+6) + minval(c)
            a = a + maxval(c)
         enddo
      enddo

      do i=S1, B1
         a = a - maxval(c)
         do j=S2, B2
            b = b - minval(c)
         enddo
      enddo
      do i=S1, B1
         a(S4:B4,S3:B3) = b(sm4:bg4,sm3:bg3) + minval(c)
         do j=S2, B2
            b = b - minval(c)
         enddo
      enddo

      do i=S1, B1
         b = b + minval(c)
         do j=S2, B2
            b(i,j) = a(i,j) - 1
         enddo
      enddo
      do i=S1, B1
         b(S4:B4,S3:B3) = b(sm4:bg4,sm3:bg3) - maxval(c)
         do j=S2, B2
            b(i,j) = a(i,j) + 1
         enddo
      enddo


      j = 1
      do i=S1, B1
         a(i,j) = a(i,j) + 1
         do j=S2, B2
            a = a + minval(c)
         enddo
      enddo
      j = 1
      do i=S1, B1
         a(i,j) = a(i,j) + 1
         do j=S2, B2
            b(sm3:bg3,sm3:bg3) = b(sm4:bg4,sm3:bg3) - maxval(c)
         enddo
      enddo

      j = 1
      do i=S1, B1
         a(i,j) = a(i,j) - c(i,j)
         b(i,j) = b(i,j) - c(i,j)
         do j=S2, B2
            a(i,j) = a(i,j) + c(i,j)
            b(i,j) = b(i,j) + c(i,j)
         enddo
      enddo


      res = maxval((sum(a,2) - sum(a,1)) + (sum(b,2) - sum(b,1)))

      if (res .eq. ANS) then
         print *,"OK"
      else
         print *,"NG"
      endif

      end
