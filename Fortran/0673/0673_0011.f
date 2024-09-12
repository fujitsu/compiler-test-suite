      common /idata/ nxf,nxw,nxr,nx,nx1,nx2,nxw1,ny,ny1,ny2
     1              ,nxlm,nxl,nxl1,nxl2,nxt2,nxt1,nxt,nxtp
     1              ,kitno,linbd,lexbd,litno,lsmot,lbase
      common /rdata/ gravc ,gasct ,ajoul ,akel0 ,ascp0 ,ascv0
     1              ,akapa ,akap1 ,akapi ,akap1i,akap1h,akape
     1              ,akape2,akapei
     1              ,pres0 ,temp0 ,velo0 ,dens0 ,sund0 ,pcnst
     1              ,pres1 ,temp1 ,velo1 ,alpha ,dens1 ,sund1
     1              ,pres2 ,temp2 ,velo2 ,behta ,dens2 ,sund2
     1              ,densi ,veloi ,presi ,denso ,veloo ,preso
     1              ,prst0 ,prstn ,tmpt0 ,tmptn
     1              ,pi    ,degre ,radia ,time ,dltt
     1              ,adiac ,cpnum ,cpdif
      common /grido/ alpha0,behta0,stag0,pitch0,chod0,ai(2),bi(2),ri(2)
     1              ,upln,doln,fang(2),rang(2),jh1,jh2,xj(55,2)
     1              ,yj(55,2),l(2),xxle,yyle,xxte,yyte
      common /plo1/ lcp,leqp,leqm,leqd,leqt,nexp,aaaaa(50),cpexp(50)
     1             ,lve,cxaxi(50),veexp(50),nexs
      write(6,*) ' *******************************************'
      write(6,*) '  1 '
      write(6,*) '  11014.629 76.940002 78.337997 50.000000'
      write(6,*) '  10155.121 69.149994 147.53400 -67.746002'
      write(6,*) ' *******************************************'
      read(5,*) lsmot,litno,dltt
      read(5,*) lbase
      read(5,*) ascp0
      call basval (ldatin)
      alpha0= alpha/radia
      behta0= behta/radia
      read(5,*) linbd,lexbd
      read(5,*) nxf,nxw,nxr,ny
      nx=nxf+nxw+nxr
      nx1=nx-1
      nx2=nx-2
      nxw1=nxw-1
      ny1=ny-1
      ny2=ny-2
      nxlm=nxf
      nxl=nxf+1
      nxl1=nxl+1
      nxl2=nxl1+1
      nxt=nxf+nxw
      nxtp=nxt+1
      nxt1=nxt-1
      nxt2=nxt1-1
      read(5,*) pitch0,chod0,stag0,upln,doln
      read(5,*) xxle,yyle,xxte,yyte
      gsc = 1.05
      read(5,*) (fang(i),i=1,2),(rang(i),i=1,2)
      read(5,*) (ai(i),bi(i),ri(i),i=1,2)
      read(5,*) ndata1,ndata2
      jh1=1
      jh2=1
      if(ri(1).eq.0.0) jh1=0
      if(ri(2).eq.0.0) jh2=0
      l1=jh1+1
      l(1)=ndata1+jh1+jh2
      l(2)=ndata2+jh1+jh2
      read(5,1)((xj(i,j),yj(i,j),i=l1,l(j)-jh2),j=1,2)
    1 format(6f10.5)
      read(5,*) lcp,lve,nexs,nexp
      nexp=nexs+nexp
      if(nexp.eq.0) go to 100
      read(5,1)(aaaaa(i),i=1,nexp)
      read(5,1)(cxaxi(i),i=1,nexp)
      read(5,1)(cpexp(i),i=1,nexp)
      read(5,1)(veexp(i),i=1,nexp)
  100 continue
      read(5,*) leqp,leqm,leqd,leqt
      vsiz = 0.005
      stop
      end
      subroutine basval (ldatin)
      common /idata/ nxf,nxw,nxr,nx,nx1,nx2,nxw1,ny,ny1,ny2
     1              ,nxlm,nxl,nxl1,nxl2,nxt2,nxt1,nxt,nxtp
     1              ,kitno,linbd,lexbd,litno,lsmot,lbase
      common /rdata/ gravc ,gasct ,ajoul ,akel0 ,ascp0 ,ascv0
     1              ,akapa ,akap1 ,akapi ,akap1i,akap1h,akape
     1              ,akape2,akapei
     1              ,pres0 ,temp0 ,velo0 ,dens0 ,sund0 ,pcnst
     1              ,pres1 ,temp1 ,velo1 ,alpha ,dens1 ,sund1
     1              ,pres2 ,temp2 ,velo2 ,behta ,dens2 ,sund2
     1              ,densi ,veloi ,presi ,denso ,veloo ,preso
     1              ,prst0 ,prstn ,tmpt0 ,tmptn
     1              ,pi    ,degre ,radia ,time ,dltt
     1              ,adiac ,cpnum ,cpdif
      pi=3.14159265
      degre=180.0/pi
      radia=pi/180.0
      gravc=9.80665
      gasct=29.27
      ajoul=1.0/426.79
      akel0=273.16
      if(ascp0.lt.0.0) go to 10
      ascv0=ascp0-ajoul*gasct
      akapa=ascp0/ascv0
      go to 11
   10 akapa=-ascp0
   11 continue
      akap1=akapa-1.0
      akap1h=0.5*akap1
      akap1i=1.0/akap1
      akape=akapa*akap1i
      akape2=2.0*akape
      akapei=1.0/akape
      akapi=1.0/akapa
      call bsval0(ldatin)
      sund1=gravc*gasct*temp1
      dens1=pres1/sund1
      sund1=sqrt(akapa*sund1)
      sund2=gravc*gasct*temp2
      dens2=pres2/sund2
      sund2=sqrt(akapa*sund2)
      go to (21,22),lbase
   21 continue
      dens0=dens1
      pres0=pres1
      temp0=temp1
      sund0=sund1
      velo0=velo1
      go to 25
   22 continue
      dens0=dens2
      pres0=pres2
      temp0=temp2
      sund0=sund2
      velo0=velo2
   25 continue
      adiac=akapi
      pcnst=pres0*akapa
      tmptn=1.0+akap1h*(velo0/sund0)**2
      prst0=pres0*tmptn**akape
      tmpt0=tmptn*temp0
      densi=dens1/dens0
      denso=dens2/dens0
      veloi=velo1/sund0
      veloo=velo2/sund0
      presi=pres1/pcnst
      preso=pres2/pcnst
      prstn=prst0/pcnst
      return
      end
      subroutine bsval0(ldatin)
      common /idata/ nxf,nxw,nxr,nx,nx1,nx2,nxw1,ny,ny1,ny2
     1              ,nxlm,nxl,nxl1,nxl2,nxt2,nxt1,nxt,nxtp
     1              ,kitno,linbd,lexbd,litno,lsmot,lbase
      common /rdata/ gravc ,gasct ,ajoul ,akel0 ,ascp0 ,ascv0
     1              ,akapa ,akap1 ,akapi ,akap1i,akap1h,akape
     1              ,akape2,akapei
     1              ,pres0 ,temp0 ,velo0 ,dens0 ,sund0 ,pcnst
     1              ,pres1 ,temp1 ,velo1 ,alpha ,dens1 ,sund1
     1              ,pres2 ,temp2 ,velo2 ,behta ,dens2 ,sund2
     1              ,densi ,veloi ,presi ,denso ,veloo ,preso
     1              ,prst0 ,prstn ,tmpt0 ,tmptn
     1              ,pi    ,degre ,radia ,time ,dltt
     1              ,adiac ,cpnum ,cpdif
      read(5,*) ldatin
      write(6,*) ldatin
      go to (1,2,3,4,5),ldatin
    1 continue
      read(5,*) pres1,temp1,velo1,alpha
      read(5,*) pres2,temp2,velo2,behta
      write(6,*) pres1,temp1,velo1,alpha
      write(6,*) pres2,temp2,velo2,behta
      temp1=temp1+akel0
      temp2=temp2+akel0
      alpha=alpha*radia
      behta=behta*radia
      go to 9
    2 continue
      read(5,*) prst0,tmpt0,pres2,alpha,behta
      write(6,*) prst0,tmpt0,pres2,alpha,behta
      tmpt0=tmpt0+akel0
      alpha=alpha*radia
      behta=behta*radia
      w=(prst0/pres2)**akapei
      temp2=tmpt0/w
      dens2=pres2/(gravc*gasct*temp2)
      velo2=sqrt(akapa*gravc*gasct*temp2*(w-1.0)/akap1h)
      amflw=dens2*velo2*cos(behta)/cos(alpha)
      read(5,*) amnew
   20 continue
      amold=amnew
      w=1.0+akap1h*amold**2
      temp1=tmpt0/w
      pres1=prst0/w**akape
      dens1=pres1/(gravc*gasct*temp1)
      amnew=(amflw/dens1)/sqrt(akapa*gravc*gasct*temp1)
      if(abs((amold-amnew)/amnew).gt.1.0e-6) go to 20
      velo1=amflw/dens1
      go to 9
    3 continue
      read(5,*) prst0,tmpt0,amac1,alpha,pres2
      write(6,*) prst0,tmpt0,amac1,alpha,pres2
      tmpt0=tmpt0+akel0
      alpha=alpha*radia
      w=1.0+akap1h*amac1**2
      temp1=tmpt0/w
      pres1=prst0/w**akape
      dens1=pres1/(gravc*gasct*temp1)
      velo1=amac1*sqrt(akapa*gravc*gasct*temp1)
      w=(prst0/pres2)**akapei
      temp2=tmpt0/w
      dens2=pres2/(gravc*gasct*temp2)
      velo2=sqrt(akapa*gravc*gasct*temp2*(w-1.0)/akap1h)
      cosb=dens1*velo1*cos(alpha)/(dens2*velo2)
      sinb=-sqrt(1.0-cosb**2)
      behta=atan2(sinb,cosb)
      go to 9
    4 continue
      read(5,*) prst0,tmpt0,amac1,alpha,behta
      write(6,*) prst0,tmpt0,amac1,alpha,behta
      tmpt0=tmpt0+akel0
      alpha=alpha*radia
      behta=behta*radia
      w=1.0+akap1h*amac1**2
      temp1=tmpt0/w
      pres1=prst0/w**akape
      velo1=amac1*sqrt(akapa*gravc*gasct*temp1)
      amflw=dens1*velo1*cos(alpha)/cos(behta)
      read(5,*) amnew
   30 continue
      amold=amnew
      w=1.0+akap1h*amold**2
      temp2=tmpt0/w
      pres2=prst0/w**akape
      dens2=pres2/(gravc*gasct*temp2)
      amnew=(amflw/dens2)/sqrt(akapa*gravc*gasct*temp2)
      if(abs((amold-amnew)/amnew).gt.1.0e-6) go to 30
      velo2=amflw/dens2
      go to 9
    5 continue
      read(5,*) prst0,tmpt0,pres1,alpha,pres2
      write(6,*) prst0,tmpt0,pres1,alpha,pres2
      tmpt0=tmpt0+akel0
      alpha=alpha*radia
      w=(prst0/pres1)**akapei
      temp1=tmpt0/w
      amac1=sqrt((w-1.0)/akap1h)
      dens1=pres1/(gravc*gasct*temp1)
      velo1=amac1*sqrt(akapa*gravc*gasct*temp1)
      w=(prst0/pres2)**akapei
      temp2=tmpt0/w
      dens2=pres2/(gravc*gasct*temp2)
      velo2=sqrt(akapa*gravc*gasct*temp2*(w-1.0)/akap1h)
      cosb=dens1*velo1*cos(alpha)/(dens2*velo2)
      sinb=-sqrt(1.0-cosb**2)
      behta=atan2(sinb,cosb)
    9 continue
      return
      end
