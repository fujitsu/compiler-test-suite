      subroutine sub(u,p,fu,fuo)
      parameter (nxp=86, nyp=68, nzp=68) 
      parameter (nx2=nxp+2, ny2=nyp+2, nz2=nzp+2)
      dimension u(-1:nx2,-1:ny2,-1:nz2),p(-1:nx2,-1:ny2,-1:nz2),
     3          fu(-1:nx2,-1:ny2,-1:nz2),fuo(-1:nx2,-1:ny2,-1:nz2)
      common /region/nx,ny,nz                                
!$OMP PARALLEL DEFAULT(SHARED)
!$OMP SECTIONS
!$OMP SECTION
      do 110 k=1,nz
      do 110 j=1,ny
      do 110 i=1,nx-1
         wk=p(i,j,k)
         u(i,j,k)=fu(i,j,k)+wk
 110  continue
      do 490 k=1,nz
      do 490 j=1,ny
      do 490 i=1,nx
         fuo(i,j,k)=fu(i,j,k)
490   continue
!$OMP END SECTIONS
!$OMP END PARALLEL
      end

      program main
      parameter (nxp=86, nyp=68, nzp=68) 
      parameter (nx2=nxp+2, ny2=nyp+2, nz2=nzp+2)
      dimension u(-1:nx2,-1:ny2,-1:nz2),p(-1:nx2,-1:ny2,-1:nz2),
     3          fu(-1:nx2,-1:ny2,-1:nz2),fuo(-1:nx2,-1:ny2,-1:nz2)
      u = 1
      p = 2
      fu = 3
      fuo = 4

      call sub(u,p,fu,fuo)
      print*, u(1,1,1)
      print*, p(1,1,1)
      print*, fu(1,1,1)
      print*, fuo(1,1,1)
      end
