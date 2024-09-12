      SUBROUTINE solveivl(im,jm,km,ncell,
     &                    rlhs,
     &                    f,g,
     &                    imin,imax,jmin,jmax,kmin,kmax)
      IMPLICIT NONE

      INTEGER           idummy, jdummy, kdummy
      INTEGER           incidum, incjdum, inckdum
      INTEGER           im_dummy, jm_dummy, km_dummy
      INTEGER           adrcell,adrcellmin,inccell

      INTEGER           ijmc_dummy, imc_dummy
      INTEGER           adrc_dum
      INTEGER           indcellk, indcellj, indcelli

      adrcell(idummy,jdummy,kdummy, im_dummy, jm_dummy, km_dummy) =
     &        (idummy-1) 
     &      + (jdummy-1)*(im_dummy-1)
     &      + (kdummy-1)*(im_dummy-1)*(jm_dummy-1)
      adrcellmin(idummy,jdummy,kdummy, im_dummy, jm_dummy, km_dummy) =
     &        (MAX(1,MIN(idummy,im_dummy-1))-1) 
     &      + (MAX(1,MIN(jdummy,jm_dummy-1))-1)*(im_dummy-1)
     &      + (MAX(1,MIN(kdummy,km_dummy-1))-1)*
     &                              (im_dummy-1)*(jm_dummy-1)
      inccell(incidum,incjdum,inckdum, im_dummy, jm_dummy, km_dummy) =
     &        incidum  
     &      + incjdum*(im_dummy-1)
     &      + inckdum*(im_dummy-1)*(jm_dummy-1)

      indcellk(adrc_dum, ijmc_dummy) =
     &         adrc_dum/ijmc_dummy+1  
      indcellj(adrc_dum, imc_dummy,ijmc_dummy,kdummy)=
     &         (adrc_dum-(kdummy-1)*ijmc_dummy)/imc_dummy+1  
      indcelli(adrc_dum, imc_dummy,ijmc_dummy,jdummy,kdummy)=
     &         adrc_dum-(jdummy-1)*imc_dummy-(kdummy-1)*ijmc_dummy+1

      INTEGER neq
      PARAMETER (neq = 7)
      INTEGER im,jm,km
      INTEGER imin,imax,jmin,jmax,kmin,kmax
      INTEGER imaxm
      INTEGER ncell
      REAL rlhs(0:ncell-1, neq)
      REAL f(0:ncell-1,neq,neq),g(0:ncell-1,neq,neq)
      REAL coe,qoe
      INTEGER ni,nj,nk,ncl

      DO nk = kmin,kmax-1
      DO nj = jmin,jmax-1
      DO ni = imin,imax-2
        ncl = adrcell(ni,nj,nk, im,jm,km)
        qoe = f(ncl,2,1)/f(ncl,1,1)
        f(ncl,2,2) = f(ncl,2,2) - f(ncl,1,2)*qoe
        f(ncl,2,3) = f(ncl,2,3) - f(ncl,1,3)*qoe
        f(ncl,2,4) = f(ncl,2,4) - f(ncl,1,4)*qoe
        f(ncl,2,5) = f(ncl,2,5) - f(ncl,1,5)*qoe
        f(ncl,2,6) = f(ncl,2,6) - f(ncl,1,6)*qoe
        f(ncl,2,7) = f(ncl,2,7) - f(ncl,1,7)*qoe
        g(ncl,2,1) = g(ncl,2,1) - g(ncl,1,1)*qoe
        g(ncl,2,2) = g(ncl,2,2) - g(ncl,1,2)*qoe
        g(ncl,2,3) = g(ncl,2,3) - g(ncl,1,3)*qoe
        g(ncl,2,4) = g(ncl,2,4) - g(ncl,1,4)*qoe
        g(ncl,2,5) = g(ncl,2,5) - g(ncl,1,5)*qoe
        g(ncl,2,6) = g(ncl,2,6) - g(ncl,1,6)*qoe
        g(ncl,2,7) = g(ncl,2,7) - g(ncl,1,7)*qoe
        rlhs(ncl,2) = rlhs(ncl,2) - rlhs(ncl,1)*qoe
        qoe =  f(ncl,3,1)/f(ncl,1,1)
        f(ncl,3,2) = f(ncl,3,2) - f(ncl,1,2)*qoe
        f(ncl,3,3) = f(ncl,3,3) - f(ncl,1,3)*qoe
        f(ncl,3,4) = f(ncl,3,4) - f(ncl,1,4)*qoe
        f(ncl,3,5) = f(ncl,3,5) - f(ncl,1,5)*qoe
        f(ncl,3,6) = f(ncl,3,6) - f(ncl,1,6)*qoe
        f(ncl,3,7) = f(ncl,3,7) - f(ncl,1,7)*qoe
        g(ncl,3,1) = g(ncl,3,1) - g(ncl,1,1)*qoe
        g(ncl,3,2) = g(ncl,3,2) - g(ncl,1,2)*qoe
        g(ncl,3,3) = g(ncl,3,3) - g(ncl,1,3)*qoe
        g(ncl,3,4) = g(ncl,3,4) - g(ncl,1,4)*qoe
        g(ncl,3,5) = g(ncl,3,5) - g(ncl,1,5)*qoe
        g(ncl,3,6) = g(ncl,3,6) - g(ncl,1,6)*qoe
        g(ncl,3,7) = g(ncl,3,7) - g(ncl,1,7)*qoe
        rlhs(ncl,3) = rlhs(ncl,3) - rlhs(ncl,1)*qoe
        qoe = f(ncl,4,1)/f(ncl,1,1)
        f(ncl,4,2) = f(ncl,4,2) - f(ncl,1,2)*qoe
        f(ncl,4,3) = f(ncl,4,3) - f(ncl,1,3)*qoe 
        f(ncl,4,4) = f(ncl,4,4) - f(ncl,1,4)*qoe 
        f(ncl,4,5) = f(ncl,4,5) - f(ncl,1,5)*qoe 
        f(ncl,4,6) = f(ncl,4,6) - f(ncl,1,6)*qoe 
        f(ncl,4,7) = f(ncl,4,7) - f(ncl,1,7)*qoe 
        g(ncl,4,1) = g(ncl,4,1) - g(ncl,1,1)*qoe
        g(ncl,4,2) = g(ncl,4,2) - g(ncl,1,2)*qoe
        g(ncl,4,3) = g(ncl,4,3) - g(ncl,1,3)*qoe
        g(ncl,4,4) = g(ncl,4,4) - g(ncl,1,4)*qoe
        g(ncl,4,5) = g(ncl,4,5) - g(ncl,1,5)*qoe
        g(ncl,4,6) = g(ncl,4,6) - g(ncl,1,6)*qoe
        g(ncl,4,7) = g(ncl,4,7) - g(ncl,1,7)*qoe
        rlhs(ncl,4) = rlhs(ncl,4) - rlhs(ncl,1)*qoe 
        qoe = f(ncl,5,1)/f(ncl,1,1)
        f(ncl,5,2) = f(ncl,5,2) - f(ncl,1,2)*qoe
        f(ncl,5,3) = f(ncl,5,3) - f(ncl,1,3)*qoe 
        f(ncl,5,4) = f(ncl,5,4) - f(ncl,1,4)*qoe 
        f(ncl,5,5) = f(ncl,5,5) - f(ncl,1,5)*qoe 
        f(ncl,5,6) = f(ncl,5,6) - f(ncl,1,6)*qoe 
        f(ncl,5,7) = f(ncl,5,7) - f(ncl,1,7)*qoe 
        g(ncl,5,1) = g(ncl,5,1) - g(ncl,1,1)*qoe
        g(ncl,5,2) = g(ncl,5,2) - g(ncl,1,2)*qoe
        g(ncl,5,3) = g(ncl,5,3) - g(ncl,1,3)*qoe
        g(ncl,5,4) = g(ncl,5,4) - g(ncl,1,4)*qoe
        g(ncl,5,5) = g(ncl,5,5) - g(ncl,1,5)*qoe
        g(ncl,5,6) = g(ncl,5,6) - g(ncl,1,6)*qoe
        g(ncl,5,7) = g(ncl,5,7) - g(ncl,1,7)*qoe
        rlhs(ncl,5) = rlhs(ncl,5) - rlhs(ncl,1)*qoe 
        qoe = f(ncl,6,1)/f(ncl,1,1)
        f(ncl,6,2) = f(ncl,6,2) - f(ncl,1,2)*qoe
        f(ncl,6,3) = f(ncl,6,3) - f(ncl,1,3)*qoe 
        f(ncl,6,4) = f(ncl,6,4) - f(ncl,1,4)*qoe 
        f(ncl,6,5) = f(ncl,6,5) - f(ncl,1,5)*qoe 
        f(ncl,6,6) = f(ncl,6,6) - f(ncl,1,6)*qoe 
        f(ncl,6,7) = f(ncl,6,7) - f(ncl,1,7)*qoe 
        g(ncl,6,1) = g(ncl,6,1) - g(ncl,1,1)*qoe
        g(ncl,6,2) = g(ncl,6,2) - g(ncl,1,2)*qoe
        g(ncl,6,3) = g(ncl,6,3) - g(ncl,1,3)*qoe
        g(ncl,6,4) = g(ncl,6,4) - g(ncl,1,4)*qoe
        g(ncl,6,5) = g(ncl,6,5) - g(ncl,1,5)*qoe
        g(ncl,6,6) = g(ncl,6,6) - g(ncl,1,6)*qoe
        g(ncl,6,7) = g(ncl,6,7) - g(ncl,1,7)*qoe
        rlhs(ncl,6) = rlhs(ncl,6) - rlhs(ncl,1)*qoe 
        qoe = f(ncl,7,1)/f(ncl,1,1)
        f(ncl,7,2) = f(ncl,7,2) - f(ncl,1,2)*qoe
        f(ncl,7,3) = f(ncl,7,3) - f(ncl,1,3)*qoe 
        f(ncl,7,4) = f(ncl,7,4) - f(ncl,1,4)*qoe 
        f(ncl,7,5) = f(ncl,7,5) - f(ncl,1,5)*qoe 
        f(ncl,7,6) = f(ncl,7,6) - f(ncl,1,6)*qoe 
        f(ncl,7,7) = f(ncl,7,7) - f(ncl,1,7)*qoe 
        g(ncl,7,1) = g(ncl,7,1) - g(ncl,1,1)*qoe
        g(ncl,7,2) = g(ncl,7,2) - g(ncl,1,2)*qoe
        g(ncl,7,3) = g(ncl,7,3) - g(ncl,1,3)*qoe
        g(ncl,7,4) = g(ncl,7,4) - g(ncl,1,4)*qoe
        g(ncl,7,5) = g(ncl,7,5) - g(ncl,1,5)*qoe
        g(ncl,7,6) = g(ncl,7,6) - g(ncl,1,6)*qoe
        g(ncl,7,7) = g(ncl,7,7) - g(ncl,1,7)*qoe
        rlhs(ncl,7) = rlhs(ncl,7) - rlhs(ncl,1)*qoe 
      END DO
      END DO
      END DO

      DO nk= kmin,kmax-1
      DO nj= jmin,jmax-1
       imaxm = adrcell(imax-1,nj,nk, im,jm,km)
       imaxm = imaxm-72
      coe = f(imaxm,2,1)/f(imaxm,1,1)
      f(imaxm,2,2) = f(imaxm,2,2) - f(imaxm,1,2)*coe
      f(imaxm,2,3) = f(imaxm,2,3) - f(imaxm,1,3)*coe
      f(imaxm,2,4) = f(imaxm,2,4) - f(imaxm,1,4)*coe
      f(imaxm,2,5) = f(imaxm,2,5) - f(imaxm,1,5)*coe
      f(imaxm,2,6) = f(imaxm,2,6) - f(imaxm,1,6)*coe
      f(imaxm,2,7) = f(imaxm,2,7) - f(imaxm,1,7)*coe
      rlhs(imaxm,2) = rlhs(imaxm,2) - rlhs(imaxm,1)*coe
      coe = f(imaxm,3,1)/f(imaxm,1,1)
      f(imaxm,3,2) = f(imaxm,3,2) - f(imaxm,1,2)*coe
      f(imaxm,3,3) = f(imaxm,3,3) - f(imaxm,1,3)*coe
      f(imaxm,3,4) = f(imaxm,3,4) - f(imaxm,1,4)*coe
      f(imaxm,3,5) = f(imaxm,3,5) - f(imaxm,1,5)*coe
      f(imaxm,3,6) = f(imaxm,3,6) - f(imaxm,1,6)*coe
      f(imaxm,3,7) = f(imaxm,3,7) - f(imaxm,1,7)*coe
      rlhs(imaxm,3) = rlhs(imaxm,3) - rlhs(imaxm,1)*coe
      coe = f(imaxm,4,1)/f(imaxm,1,1)
      f(imaxm,4,2) = f(imaxm,4,2) - f(imaxm,1,2)*coe
      f(imaxm,4,3) = f(imaxm,4,3) - f(imaxm,1,3)*coe 
      f(imaxm,4,4) = f(imaxm,4,4) - f(imaxm,1,4)*coe 
      f(imaxm,4,5) = f(imaxm,4,5) - f(imaxm,1,5)*coe 
      f(imaxm,4,6) = f(imaxm,4,6) - f(imaxm,1,6)*coe 
      f(imaxm,4,7) = f(imaxm,4,7) - f(imaxm,1,7)*coe 
      rlhs(imaxm,4) = rlhs(imaxm,4) - rlhs(imaxm,1)*coe 
      coe = f(imaxm,5,1)/f(imaxm,1,1)
      f(imaxm,5,2) = f(imaxm,5,2) - f(imaxm,1,2)*coe
      f(imaxm,5,3) = f(imaxm,5,3) - f(imaxm,1,3)*coe 
      f(imaxm,5,4) = f(imaxm,5,4) - f(imaxm,1,4)*coe 
      f(imaxm,5,5) = f(imaxm,5,5) - f(imaxm,1,5)*coe 
      f(imaxm,5,6) = f(imaxm,5,6) - f(imaxm,1,6)*coe 
      f(imaxm,5,7) = f(imaxm,5,7) - f(imaxm,1,7)*coe 
      rlhs(imaxm,5) = rlhs(imaxm,5) - rlhs(imaxm,1)*coe 
      coe = f(imaxm,6,1)/f(imaxm,1,1)
      f(imaxm,6,2) = f(imaxm,6,2) - f(imaxm,1,2)*coe
      f(imaxm,6,3) = f(imaxm,6,3) - f(imaxm,1,3)*coe 
      f(imaxm,6,4) = f(imaxm,6,4) - f(imaxm,1,4)*coe 
      f(imaxm,6,5) = f(imaxm,6,5) - f(imaxm,1,5)*coe 
      f(imaxm,6,6) = f(imaxm,6,6) - f(imaxm,1,6)*coe 
      f(imaxm,6,7) = f(imaxm,6,7) - f(imaxm,1,7)*coe 
      rlhs(imaxm,6) = rlhs(imaxm,6) - rlhs(imaxm,1)*coe 
      coe = f(imaxm,7,1)/f(imaxm,1,1)
      f(imaxm,7,2) = f(imaxm,7,2) - f(imaxm,1,2)*coe
      f(imaxm,7,3) = f(imaxm,7,3) - f(imaxm,1,3)*coe 
      f(imaxm,7,4) = f(imaxm,7,4) - f(imaxm,1,4)*coe 
      f(imaxm,7,5) = f(imaxm,7,5) - f(imaxm,1,5)*coe 
      f(imaxm,7,6) = f(imaxm,7,6) - f(imaxm,1,6)*coe 
      f(imaxm,7,7) = f(imaxm,7,7) - f(imaxm,1,7)*coe 
      rlhs(imaxm,7) = rlhs(imaxm,7) - rlhs(imaxm,1)*coe 

      END DO
      END DO

      END

      program main
      parameter(ncell=10,neq=10)
      INTEGER im,jm,km
      REAL rlhs(0:ncell-1, neq)                     
      REAL f(0:ncell-1,neq,neq),g(0:ncell-1,neq,neq)
      INTEGER imin,imax,jmin,jmax,kmin,kmax

      im=5
      jm=5
      km=5
      imin=1
      imax=2
      jmin=3
      jmax=4
      kmin=5
      kmax=6

      do j=1,neq
         do i=0,ncell-1
            rlhs(i,j)=i
         enddo
      enddo
      do k=1,neq
         do j=1,neq
            do i=0,ncell-1
               f(i,j,k)=i
               g(i,j,k)=i
            enddo
         enddo
      enddo

      call solveivl(im,jm,km,ncell,
     &              rlhs,
     &              f,g,
     &              imin,imax,jmin,jmax,kmin,kmax)

      print *,imin,imax,jmin,jmax,kmin,kmax
      end
