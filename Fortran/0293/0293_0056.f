
      subroutine sub(aw,bw,nx0,ny0,nz0,nblck,mxmax,mymax,mzmax,mxblk)

         implicit none

         integer nblck,mxmax,mymax,mzmax,mxblk
         integer nx0(nblck),ny0(nblck),nz0(nblck)
         real(8) aw(1:8,0:mxmax+1,0:mymax+1,0:mzmax+1,mxblk)
         real(8) bw(    0:mxmax+1,0:mymax+1,0:mzmax+1,mxblk,1:3)
         integer i,j,k,nb
#define a(i,j,n,k,l)  aw(l,i,j,k,n)
#define q(i,j,n,k)    bw(i,j,k,n,1)
#define p(i,j,n,k)    bw(i,j,k,n,2)
#define w(i,j,n,k)    bw(i,j,k,n,3)

         do nb = 1,nblck
           do k = 1, nz0(nb)
             do j = 1,ny0(nb)
               do i = 1,nx0(nb)
                 q(i,j,nb,k) = 0.0d0
               end do
             end do
           end do
         end do

         do nb = 1,nblck
           do k = 1, nz0(nb)
             do j = 1,ny0(nb)
               do i = 1,nx0(nb)
                   q(i,j,nb,k) =
     &           + a(i,j,nb,k, 1)*p(i  ,j  ,nb,k-1)
     &           + a(i,j,nb,k, 2)*p(i  ,j-1,nb,k  )
     &           + a(i,j,nb,k, 3)*p(i-1,j  ,nb,k  )
     &           + a(i,j,nb,k, 4)*p(i  ,j  ,nb,k  )
     &           + a(i,j,nb,k, 5)*p(i+1,j  ,nb,k  )
     &           + a(i,j,nb,k, 6)*p(i  ,j+1,nb,k  )
     &           + a(i,j,nb,k, 7)*p(i  ,j  ,nb,k+1)
               end do
             end do
           end do
         end do

         do nb = 1,nblck
           do k = 1, nz0(nb)
             do j = 1,ny0(nb)
               do i = 1,nx0(nb)
                   q(i,j,nb,k) =
     &           + a(i,j,nb,k, 1)*w(i  ,j  ,nb,k-1)
     &           + a(i,j,nb,k, 2)*w(i  ,j-1,nb,k  )
     &           + a(i,j,nb,k, 3)*w(i-1,j  ,nb,k  )
     &           + a(i,j,nb,k, 4)*w(i  ,j  ,nb,k  )
     &           + a(i,j,nb,k, 5)*w(i+1,j  ,nb,k  )
     &           + a(i,j,nb,k, 6)*w(i  ,j+1,nb,k  )
     &           + a(i,j,nb,k, 7)*w(i  ,j  ,nb,k+1)
               end do
             end do
           end do
         end do
      end subroutine

      print *,'pass'
      end
