      subroutine resid(p,fmg,g11,g22,g33,rhophi,bx,by,bz,mf,nf,lf,
     &                 rmg,ig,iter,itin)
      parameter(mxg = 20, ng = 1)
      integer lg, ilg(ng), jlg(ng), klg(ng), ijm(ng)
      common/dim/ lg, ilg, jlg, klg, ijm
      integer loc(63,ng), nb(6,ng), nby(ng)
      common/ibdy/loc, nb, nby
      integer imx(mxg,ng), jmx(mxg,ng), kmx(mxg,ng), lmg(ng),
     &        lmag(ng), lmb(ng), locp(mxg,ng), locap(mxg,ng),
     &        locpb(3,mxg,ng)
      common/mgi/imx, jmx, kmx, lmg, lmag, lmb, locp, locap,
     &           locpb
      real dfv(ng),dfm(ng),dpv(ng),dpm(ng),
     &                 rpv(ng), rpm(ng)
      common/rchk/dfv, dfm, dpv, dpm, rpv, rpm
      integer imd(ng),jmd(ng),kmd(ng),imp(ng),jmp(ng),kmp(ng),
     &        idp(ng),kdp(ng),mdp(ng)
      common/ichk/imd, jmd, kmd, imp, jmp, kmp, idp, kdp, mdp

      integer iani,iavg,idim,imod,intp,inio,irest,ismth,istop,
     &        istat,itmin,itmout,iterout,itck,itsm,nmax,nstep,nt,
     &        ntout,nfz,ngrid,nup,ndown,isgs
      common/parai/iani,iavg,idim,imod,intp,inio,irest,ismth,istop,
     &        istat,itmin,itmout,iterout,itck,itsm,nmax,nstep,nt,
     &        ntout,nfz,ngrid,nup,ndown,isgs
      real ah,al,beta,cfl,csv,dels,dt,epsp,epdp,
     &       fom,gamm,grav,gvol,omdp,prt,re,rho,rtime,shp,sorw,umax,
     &       uref,vis,wu,agrad
      common/parar/ah,al,beta,cfl,csv,dels,dt,epsp,epdp,
     &       fom,gamm,grav,gvol,omdp,prt,re,rho,rtime,shp,sorw,umax,
     &       uref,vis,wu,agrad
      real axith1,axith2,axith3,axith4
      common/axis/axith1,axith2,axith3,axith4
      real rka(3), rkb(3), rkc(3), rkd(3)
      common/rkpa/rka, rkb, rkc, rkd
      parameter(il = 66, jl = 42, kl = 50)
      parameter(mij = 66)
      real sst(il,jl,kl,4), utl(il,jl,kl,3),
     &                 tpa(il,jl,kl), tpb(il,jl,kl), tpc(il,jl,kl),
     &                 tpd(il,jl,kl), tpe(il,jl,kl), tpf(il,jl,kl),
     &                 tph(il,jl,kl), tpl(il,jl,kl), lkk(il,jl,kl),
     &                 hkk(il,jl,kl)
      common/sstmp/sst, utl, tpa, tpb, tpc, tpd, tpe, tpf,
     &             tph, tpl, lkk, hkk
      real aa(mij,mij,4),bb(mij,mij,4),cc(mij,mij,4),
     &                 dd(mij,mij,4),ee(mij,mij,4)
      common/sline/aa,bb,cc,dd,ee
      real a(mij,mij),b(mij,mij),c(mij,mij),
     &                 d1(mij,mij),d2(mij,mij),d3(mij,mij),
     &                 w(mij,mij),x1(mij,mij),x2(mij,mij),
     &                 x3(mij,mij),yy(mij,mij),dpdx(mij),
     &                 dpdy(mij),dpdz(mij),temp1(mij),temp2(mij),
     &                 temp3(mij),wbx(jl,kl,2),wby(il,kl,2),
     &                 wbz(il,jl,2),ccp(9,mij)
      common/tvar/a,b,c,d1,d2,d3,w,x1,x2,x3,yy,dpdx,dpdy,dpdz,
     &            temp1,temp2,temp3,wbx,wby,wbz,ccp
      real um(il,jl),vm(il,jl)
      common/center/um,vm
      real ce(mij),cw(mij), cn(mij),cs(mij),cf(mij,mij),
     &                 cb(mij), apu(mij),aeu(mij),awu(mij),anu(mij),
     &                 asu(mij),afu(mij),abu(mij),fne(mij),fpe(mij),
     &                 fnw(mij),fpw(mij),fnn(mij),fpn(mij),fns(mij),
     &                 fps(mij),fnf(mij),fpf(mij),fnb(mij),fpb(mij),
     &                 bv1(mij),bv2(mij),bv3(mij),bv4(mij),bv5(mij),
     &                 bv6(mij),rms(mij)
      common/vecv/ce,cw,cn,cs,cf,cb,apu,aeu,awu,anu,asu,afu,abu,
     &            fne,fpe,fnw,fpw,fnn,fpn,fns,fps,fnf,fpf,fnb,fpb
     &         	  bv1,bv2,bv3,bv4,bv5,bv6,rms
      integer ix(mij), iy(mij), iz(mij), jx(mij), jy(mij), jz(mij)
      common/impcp/ix, iy, iz, jx, jy, jz

      parameter(ilv = 66, jlv = 42, klv = 50, ngv = 1)
      real   phil(ilv,jlv,klv),phiold(ilv,jlv,klv),
     &         phis(ilv,jlv,klv),alpha(ilv,jlv,klv),
     &         phibnd(ilv,jlv)
      integer  nbphi(6,ngv),nbrei(6,ngv)
      common /paralv/ vislq,visgs,rhol,rhog,rholg,rhobar,drho,reyinv
      common /philv/ phil,phis,phiold,alpha,alpfac,web,gravnon,
     &               dpz1,dpz2,dxx,phibnd,dzz
      common /nbf/ nbphi,nbrei,lvlcon
      real  p(mf,nf,lf)  , fmg(mf,nf,lf), g11(mf,nf,lf),
     &                  g22(mf,nf,lf), g33(mf,nf,lf), rmg(mf,nf,lf),
     &                  bx(nf,lf,2), by(mf,lf,2)  , bz(mf,nf,2),
     &                  rhophi(mf,nf,lf)
 51      format(/,'in sub resid',/,'mf = ',i3,' nf = ',i3,
     &          ' lf = ',i3)
      do 100 j = 2,nf-1
      do 100 k = 2,lf-1
      do 100 i = 2,mf-1
         rhoi1 = 0.5d0*(rhophi(i,j,k)+rhophi(i-1,j,k))
         rhoi2 = 0.5d0*(rhophi(i+1,j,k)+rhophi(i,j,k))
         rhoj1 = 0.5d0*(rhophi(i,j,k)+rhophi(i,j-1,k))
         rhoj2 = 0.5d0*(rhophi(i,j+1,k)+rhophi(i,j,k))
         rhok1 = 0.5d0*(rhophi(i,j,k)+rhophi(i,j,k-1))
         rhok2 = 0.5d0*(rhophi(i,j,k+1)+rhophi(i,j,k))
         temp1(i) = g11(i,j,k)/rhoi2 + g11(i-1,j,k)/rhoi1
     &            + g22(i,j,k)/rhoj2 + g22(i,j-1,k)/rhoj1
     &            + g33(i,j,k)/rhok2 + g33(i,j,k-1)/rhok1
         rmg(i,j,k) = temp1(i)*p(i,j,k) -
     &      ( g11(i,j,k)/rhoi2 *p(i+1,j,k)
     &      + g11(i-1,j,k)/rhoi1 *p(i-1,j,k)
     &      + g22(i,j,k)/rhoj2 *p(i,j+1,k)
     &      + g22(i,j-1,k)/rhoj1 *p(i,j-1,k)
     &      + g33(i,j,k)/rhok2 *p(i,j,k+1)
     &      + g33(i,j,k-1)/rhok1 *p(i,j,k-1)
     &      - fmg(i,j,k))
 100     continue
         do 120 k = 2,lf-1
         do 120 j = 2,nf-1
            wbx(j,k,1) = bx(j,k,1)-(p(2,j,k)-p(1,j,k))
 120        wbx(j,k,2) = bx(j,k,2)-(p(mf,j,k)-p(mf-1,j,k))
         do 140 k = 2,lf-1
         do 140 i = 2,mf-1
            wby(i,k,1) = by(i,k,1)-(p(i,2,k)-p(i,1,k))
 140        wby(i,k,2) = by(i,k,2)-(p(i,nf,k)-p(i,nf-1,k))
         do 160 j = 2,nf-1
         do 160 i = 2,mf-1
            wbz(i,j,1) = bz(i,j,1)-(p(i,j,2)-p(i,j,1))
 160        wbz(i,j,2) = bz(i,j,2)-(p(i,j,lf)-p(i,j,lf-1))
      if(mf.eq.ilg(ig)) then
         if(ig.eq.1) then
            if(intp.eq.1) then
               isv = 1
            elseif(intp.eq.2) then
               isv = 1
            endif
            if(ngrid.eq.1) then
               wu = isv*ndown + wu
            elseif(itin.eq.1) then
               wu = isv*(ndown*8./7. + nup*8./7.) + wu
            else
               wu = isv*(ndown/7. + nup*8./7.) + wu
            endif
         endif
         if(mod(iter,itck).eq.0.and.itin.eq.itmin) then
            rpv(ig) = 0.
            rpm(ig) = 0.
            imp(ig) = 1
            jmp(ig) = 1
            do 200 i = 2,mf-1
            do 200 j = 2,nf-1
            do 200 k = 2,lf-1
               if(abs(rmg(i,j,k)).gt.abs(rpm(ig))) then
                  rpm(ig) = rmg(i,j,k)
                  imp(ig) = i
                  jmp(ig) = j
                  kmp(ig) = k
               endif
 200           rpv(ig) = rpv(ig) + rmg(i,j,k)**2
            if(rpv(ig).lt.1.e-20) then
               rpv(ig) = 0.
            else
               rpv(ig) = sqrt(rpv(ig)/
     &            dfloat((ilg(ig)-2)*(jlg(ig)-2)*(klg(ig)-2)))
            endif
         endif
      endif
      return
      end
      print *,'pass'
      end
