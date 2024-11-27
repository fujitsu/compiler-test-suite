      implicit complex*16 (a-c)
      implicit real*8 (d-h,k,o-z)
      parameter (pi=3.14159265358979323d0,ci=(0.0d0,1.0d0))
      parameter (xo=0.25d0,zo=0.2d0)
      parameter (fc=1.0d0,hz=25.0d0)
      parameter (nl=1672,nt=512,me=202)
      parameter (n10=70,n13=70)
      parameter (n20=60,n23=60)
      parameter (n30=40,n31=70,n32=60,n34=20,n36=38)
      parameter (n40=80,n43=20,n45=60)
      parameter (n54=60,n56=20)
      parameter (n63=38,n65=20,n67=25)
      parameter (n76=25)
      parameter (na4=4,na5=4,na6=4,na7=88)
      parameter (nb1=2,nb3=4,nb6=3,nb7=91)
      parameter (pb1=1.60d0,pm1=1.60d0*0.15d0*0.15d0,q1=15.0d0)
      parameter (pb2=1.70d0,pm2=1.70d0*0.21d0*0.21d0,q2=20.0d0)
      parameter (pb3=1.78d0,pm3=1.78d0*0.34d0*0.34d0,q3=25.0d0)
      parameter (pb4=1.65d0,pm4=1.65d0*0.19d0*0.19d0,q4=20.0d0)
      parameter (pb5=1.80d0,pm5=1.80d0*0.22d0*0.22d0,q5=25.0d0)
      parameter (pb6=1.90d0,pm6=1.90d0*0.63d0*0.63d0,q6=35.0d0)
      parameter (pb7=2.20d0,pm7=2.20d0*1.40d0*1.40d0,q7=80.0d0)
      parameter (pl1=1.60d0*(0.24d0*0.24d0-2.0d0*0.15d0*0.15d0))
      parameter (pl2=1.70d0*(0.42d0*0.42d0-2.0d0*0.21d0*0.21d0))
      parameter (pl3=1.78d0*(1.10d0*1.10d0-2.0d0*0.34d0*0.34d0))
      parameter (pl4=1.65d0*(0.34d0*0.34d0-2.0d0*0.19d0*0.19d0))
      parameter (pl5=1.80d0*(0.45d0*0.45d0-2.0d0*0.22d0*0.22d0))
      parameter (pl6=1.90d0*(2.70d0*2.70d0-2.0d0*0.63d0*0.63d0))
      parameter (pl7=2.20d0*(4.50d0*4.50d0-2.0d0*1.40d0*1.40d0))
      real*8 el10(n10,2,2),el13(n13,2,2)              ,el1b(nb1,2,2)
      real*8 el20(n20,2,2),el23(n23,2,2)
      real*8 el30(n30,2,2),el31(n31,2,2)
      real*8 el32(n32,2,2),el34(n34,2,2)
      real*8 el36(n36,2,2)                            ,el3b(nb3,2,2)
      real*8 el40(n40,2,2),el43(n43,2,2)
      real*8 el45(n45,2,2)              ,el4a(na4,2,2)
      real*8 el54(n54,2,2),el56(n56,2,2),el5a(na5,2,2)
      real*8 el63(n63,2,2),el65(n65,2,2)
      real*8 el67(n67,2,2)              ,el6a(na6,2,2),el6b(nb6,2,2)
      real*8 el76(n76,2,2)              ,el7a(na7,2,2),el7b(nb7,2,2)
      complex*16 cu(nl,nt),cuwk(nl)
      cpm1=pm1*(1.0d0+ci/q1)
      cpm2=pm2*(1.0d0+ci/q2)
      cpm3=pm3*(1.0d0+ci/q3)
      cpm4=pm4*(1.0d0+ci/q4)
      cpm5=pm5*(1.0d0+ci/q5)
      cpm6=pm6*(1.0d0+ci/q6)
      cpm7=pm7*(1.0d0+ci/q7)
      cpl1=pl1*(1.0d0+ci/q1)
      cpl2=pl2*(1.0d0+ci/q2)
      cpl3=pl3*(1.0d0+ci/q3)
      cpl4=pl4*(1.0d0+ci/q4)
      cpl5=pl5*(1.0d0+ci/q5)
      cpl6=pl6*(1.0d0+ci/q6)
      cpl7=pl7*(1.0d0+ci/q7)
      cva1=sqrt((cpl1+2.0d0*cpm1)/pb1)
      cva2=sqrt((cpl2+2.0d0*cpm2)/pb2)
      cva3=sqrt((cpl3+2.0d0*cpm3)/pb3)
      cva4=sqrt((cpl4+2.0d0*cpm4)/pb4)
      cva5=sqrt((cpl5+2.0d0*cpm5)/pb5)
      cva6=sqrt((cpl6+2.0d0*cpm6)/pb6)
      cva7=sqrt((cpl7+2.0d0*cpm7)/pb7)
      cvb1=sqrt(cpm1/pb1)
      cvb2=sqrt(cpm2/pb2)
      cvb3=sqrt(cpm3/pb3)
      cvb4=sqrt(cpm4/pb4)
      cvb5=sqrt(cpm5/pb5)
      cvb6=sqrt(cpm6/pb6)
      cvb7=sqrt(cpm7/pb7)
      call bem(el10,el13                    ,el1b
     &        ,el20,el23
     &        ,el30,el31,el32,el34,el36     ,el3b
     &        ,el40,el43,el45          ,el4a
     &        ,el54,el56               ,el5a
     &        ,el63,el65,el67          ,el6a,el6b
     &        ,el76                    ,el7a,el7b
     &        ,n10 ,n13                     ,nb1
     &        ,n20 ,n23
     &        ,n30 ,n31 ,n32 ,n34 ,n36      ,nb3
     &        ,n40 ,n43 ,n45           ,na4
     &        ,n54 ,n56                ,na5
     &        ,n63 ,n65 ,n67           ,na6 ,nb6
     &        ,n76                     ,na7 ,nb7)
      do 777 istep=2,nt/2
         ist=istep
         w=2.0d0*pi*hz*(istep-1)/nt
         cw=cmplx(w,0.0d0)
         cka1=cw/cva1
         cka2=cw/cva2
         cka3=cw/cva3
         cka4=cw/cva4
         cka5=cw/cva5
         cka6=cw/cva6
         cka7=cw/cva7
         ckb1=cw/cvb1
         ckb2=cw/cvb2
         ckb3=cw/cvb3
         ckb4=cw/cvb4
         ckb5=cw/cvb5
         ckb6=cw/cvb6
         ckb7=cw/cvb7
      if (istep==2)call xstop
         call matgf(el10,el13,el1b,el20,el23,el30,el31,el32,el34
     &             ,el36,el3b,el40,el43,el45,el4a,el54,el56,el5a
     &             ,el63,el65,el67,el6a,el6b,el76,el7a,el7b
     &             ,cka1,cka2,cka3,cka4,cka5,cka6,cka7
     &             ,ckb1,ckb2,ckb3,ckb4,ckb5,ckb6,ckb7
     &             ,cpm1,cpm2,cpm3,cpm4,cpm5,cpm6,cpm7
     &             ,cw,cuwk,xo,zo)
         do 200 i=1,nl
            cu(i,istep)=cuwk(i)
  200    continue
  777 continue
      call output(nl,nt,cu)
      stop
      end
      subroutine xstop
      print *,'pass'
      stop
      end
      subroutine inwave(ne,na,nb,el,ea,eb,xs,zs
     &                 ,cka,ckb,cpm,cuin,cuina,cuinb)
      implicit complex*16 (a-c)
      implicit real*8 (d-h,k,o-z)
      parameter(pi=3.14159265358979323d0,ci=(0.0d0,1.0d0))
      real*8 el(ne,2,2),ea(na,2,2),eb(nb,2,2)
      complex*16 cuin(ne*2),cuina(na*2),cuinb(nb*2)
      do 20 i=1,ne
         xp=(el(i,1,1)+el(i,2,1))/2.0d0
         zp=(el(i,1,2)+el(i,2,2))/2.0d0
         xr=sqrt((xp-xs)**2+(zp-zs)**2)
         crka=cka*xr
         crkb=ckb*xr
         call hank0(crka,cha0)
         call hank0(crkb,chb0)
         call hank1(crka,cha1)
         call hank1(crkb,chb1)
         cha2=2.0d0*cha1/crka-cha0
         chb2=2.0d0*chb1/crkb-chb0
     &                  *(chb2-cha2*cka*cka/(ckb*ckb))
     &                  /(4.0d0*cpm*xr*xr)
         cuin(i+ne)=-ci*(chb0-(chb1-cha1*cka/ckb)/(ckb*xr)
     &                 +(zp-zs)*(zp-zs)
     &                  *(chb2-cha2*cka*cka/(ckb*ckb))
     &                  /(xr*xr))/(4.0d0*cpm)
   20 continue
      do 40 i=1,na
         xp=(ea(i,1,1)+ea(i,2,1))/2.0d0
         zp=(ea(i,1,2)+ea(i,2,2))/2.0d0
         xr=sqrt((xp-xs)**2+(zp-zs)**2)
         crka=cka*xr
         crkb=ckb*xr
         call hank0(crka,cha0)
         call hank0(crkb,chb0)
         call hank1(crka,cha1)
         call hank1(crkb,chb1)
         cha2=2.0d0*cha1/crka-cha0
         chb2=2.0d0*chb1/crkb-chb0
         cuina(i   )=-ci*(xp-xs)*(zp-zs)
     &                  *(chb2-cha2*cka*cka/(ckb*ckb))
     &                  /(4.0d0*cpm*xr*xr)
         cuina(i+na)=-ci*(chb0-(chb1-cha1*cka/ckb)/(ckb*xr)
     &                   +(zp-zs)*(zp-zs)
     &                    *(chb2-cha2*cka*cka/(ckb*ckb))
     &                    /(xr*xr))/(4.0d0*cpm)
   40 continue
      do 60 i=1,nb
         xp=(eb(i,1,1)+eb(i,2,1))/2.0d0
         zp=(eb(i,1,2)+eb(i,2,2))/2.0d0
         xr=sqrt((xp-xs)**2+(zp-zs)**2)
         crka=cka*xr
         crkb=ckb*xr
         call hank0(crka,cha0)
         call hank0(crkb,chb0)
         call hank1(crka,cha1)
         call hank1(crkb,chb1)
         cha2=2.0d0*cha1/crka-cha0
         chb2=2.0d0*chb1/crkb-chb0
         cuinb(i   )=-ci*(xp-xs)*(zp-zs)
     &                  *(chb2-cha2*cka*cka/(ckb*ckb))
     &                  /(4.0d0*cpm*xr*xr)
         cuinb(i+nb)=-ci*(chb0-(chb1-cha1*cka/ckb)/(ckb*xr)
     &                   +(zp-zs)*(zp-zs)
     &                    *(chb2-cha2*cka*cka/(ckb*ckb))
     &                    /(xr*xr))/(4.0d0*cpm)
   60 continue
      return
      end
      subroutine ricker(nt,hz,fc,cwt)
      implicit complex*16 (a-c)
      implicit real*8 (d-h,o-z)
      parameter (pi=3.14159265358979323d0)
      complex*16 cwt(nt)
      do 10 istep=1,nt
         pft=pi*pi*fc*fc*(istep-50.0d0)*(istep-50.0d0)/(hz*hz)
         cwt(istep)=cmplx((2.0d0*pft-1.0d0)*exp(-pft),0.0d0)
   10 continue
      call fft(nt,cwt,-1)
      do 20 istep=1,nt
         cwt(istep)=sqrt(pi)*0.25d0*cwt(istep)/nt
   20 continue
      return
      end
      subroutine grfgh(np,ns,ep,es,cka,ckb,cpm,cg,ch,in)
      implicit complex*16 (a-c)
      implicit real*8 (d-h,k,o-z)
      parameter (pi=3.14159265358979323d0,ci=(0.0d0,1.0d0))
      complex*16 cg(ns*2,np*2),ch(ns*2,np*2),cdgp(2,2,2)
      real*8 ep(np,2,2),es(ns,2,2),xp(2),xs(2),xn(2)
      real*8 delt(2,2),xw(8),xu(8)
      delt(1,1)=1.0d0
      delt(1,2)=0.0d0
      delt(2,1)=0.0d0
      delt(2,2)=1.0d0
      cpl=cpm*(ckb*ckb/(cka*cka)-2.0d0)
      call gauss8(xu,xw)
      do 100 i=1,ns*2
         do 110 j=1,np*2
            cg(i,j)=(0.0d0,0.0d0)
            ch(i,j)=(0.0d0,0.0d0)
  110    continue
  100 continue
      do 200 l=1,8
         do 210 j=1,np
            do 220 i=1,ns
               xs(1)=(es(i,1,1)+es(i,2,1))/2.0d0
               xs(2)=(es(i,1,2)+es(i,2,2))/2.0d0
               xr   =sqrt((ep(j,1,1)-ep(j,2,1))**2
     &                   +(ep(j,1,2)-ep(j,2,2))**2)
               xn(1)=-(ep(j,2,2)-ep(j,1,2))/xr
               xn(2)= (ep(j,2,1)-ep(j,1,1))/xr
               xp(1)=(ep(j,1,1)+ep(j,2,1))/2.0d0
     &              +(ep(j,2,1)-ep(j,1,1))*xu(l)/2.0d0
               xp(2)=(ep(j,1,2)+ep(j,2,2))/2.0d0
     &              +(ep(j,2,2)-ep(j,1,2))*xu(l)/2.0d0
               crka=cka*sqrt((xp(1)-xs(1))**2+(xp(2)-xs(2))**2)
               crkb=ckb*sqrt((xp(1)-xs(1))**2+(xp(2)-xs(2))**2)
               call hank0(crka,cha0)
               call hank0(crkb,chb0)
               call hank1(crka,cha1)
               call hank1(crkb,chb1)
               cha2=2.0d0*cha1/crka-cha0
               chb2=2.0d0*chb1/crkb-chb0
               do 230 n=1,2
                  do 240 m=1,2
                     cg(i+(m-1)*ns,j+(n-1)*np)
     &              =cg(i+(m-1)*ns,j+(n-1)*np)
     &              -ci*xw(l)*xr
     &                 *(delt(m,n)*chb0
     &                  -delt(m,n)*(chb1-cha1*cka/ckb)/crkb
     &                  +(xp(m)-xs(m))*(xp(n)-xs(n))
     &                   *(chb2*ckb*ckb-cha2*cka*cka)/(crkb**2))
     &                 /(4.0d0*cpm)
                     do 250 id=1,2
                        cdgp(m,n,id)
     &                 =(0.25d0*ci*xw(l)*xr/cpm)
     &                 *(delt(m,n)*chb1*ckb*ckb
     &                            *(xp(id)-xs(id))/crkb
     &                  -delt(m,n)*(chb1-cha1*cka/ckb)
     &                            *ckb*ckb*(xp(id)-xs(id))/(crkb**3)
     &                  +delt(m,n)*(chb1/crkb-chb2)
     &                            *(xp(id)-xs(id))*ckb*ckb/(crkb**2)
     &                  -delt(m,n)*(cha1/crka-cha2)
     &                            *(xp(id)-xs(id))*cka*cka/(crkb**2))
	      cdgp(m,n,id)=cdgp(m,n,id)+(0.25d0*ci*xw(l)*xr/cpm)
     &                  *(-(chb2-cha2*cka*cka/(ckb*ckb))
     &                    *(delt(m,id)*(xp(n)-xs(n))*ckb*ckb/(crkb**2)
     &                     +delt(n,id)*(xp(m)-xs(m))*ckb*ckb/(crkb**2)
     &                     -2.0d0*(xp(m)-xs(m))
     &                           *(xp(n)-xs(n))
     &                           *(xp(id)-xs(id))*ckb*ckb*ckb*ckb
     &                           /(crkb**4)))
	      cdgp(m,n,id)=cdgp(m,n,id)+(0.25d0*ci*xw(l)*xr/cpm)
     &                  *(-(chb1-2.0d0*chb2/crkb)
     &                           *(xp(m)-xs(m))
     &                           *(xp(n)-xs(n))
     &                           *(xp(id)-xs(id))*ckb*ckb*ckb*ckb
     &                           /(crkb**3))
	      cdgp(m,n,id)=cdgp(m,n,id)+(0.25d0*ci*xw(l)*xr/cpm)
     &                  *(+(cha1-2.0d0*cha2/crka)
     &                           *(xp(m)-xs(m))
     &                           *(xp(n)-xs(n))
     &                           *(xp(id)-xs(id))*ckb*cka*cka*cka
     &                           /(crkb**3))
  250                continue
  240             continue
  230          continue
               do 235 n=1,2
                  do 245 m=1,2
                     ch(i+(m-1)*ns,j+(n-1)*np)
     &              =ch(i+(m-1)*ns,j+(n-1)*np)
     &              +xn(1)*(cpl*delt(1,n)
     &                         *(cdgp(m,1,1)+cdgp(m,2,2))
     &                     +cpm*(cdgp(m,1,n)+cdgp(m,n,1)))
     &              +xn(2)*(cpl*delt(2,n)
     &                         *(cdgp(m,1,1)+cdgp(m,2,2))
     &                     +cpm*(cdgp(m,2,n)+cdgp(m,n,2)))
  245             continue
  235          continue
  220       continue
  210    continue
  200 continue
      return
      end
      subroutine gauss8(xu,xw)
      implicit complex*16 (a-c)
      implicit real*8 (d-h,o-z)
      real*8 xu(8),xw(8)
      xu(1)=0.96028985649753623d0
      xu(2)=0.79666647741362674d0
      xu(3)=0.52553240991632899d0
      xu(4)=0.18343464249564980d0
      xu(5)=-0.18343464249564980d0
      xu(6)=-0.52553240991632899d0
      xu(7)=-0.79666647741362674d0
      xu(8)=-0.96028985649753623d0
      xw(1)=0.05061426814518813d0
      xw(2)=0.11119051722668724d0
      xw(3)=0.15685332293894364d0
      xw(4)=0.18134189168918099d0
      xw(5)=0.18134189168918099d0
      xw(6)=0.15685332293894364d0
      xw(7)=0.11119051722668724d0
      xw(8)=0.05061426814518813d0
      return
      end
      subroutine matgf(el10,el13,el1b,el20,el23,el30,el31,el32,el34
     &                ,el36,el3b,el40,el43,el45,el4a,el54,el56,el5a
     &                ,el63,el65,el67,el6a,el6b,el76,el7a,el7b
     &                ,cka1,cka2,cka3,cka4,cka5,cka6,cka7
     &                ,ckb1,ckb2,ckb3,ckb4,ckb5,ckb6,ckb7
     &                ,cpm1,cpm2,cpm3,cpm4,cpm5,cpm6,cpm7
     &                ,cw,cuwk,xo,zo)
      implicit complex*16 (a-c)
      implicit real*8 (d-h,o-z)
      parameter (nl=1672,nt=512,me=202)
      parameter (n10=70,n13=70)
      parameter (n20=60,n23=60)
      parameter (n30=40,n31=70,n32=60,n34=20,n36=38)
      parameter (n40=80,n43=20,n45=60)
      parameter (n54=60,n56=20)
      parameter (n63=38,n65=20,n67=25)
      parameter (n76=25)
      parameter (na4=4,na5=4,na6=4,na7=88)
      parameter (nb1=2,nb3=4,nb6=3,nb7=91)
      real*8 el10(n10,2,2),el13(n13,2,2)              ,el1b(nb1,2,2)
      real*8 el20(n20,2,2),el23(n23,2,2)
      real*8 el30(n30,2,2),el31(n31,2,2)
      real*8 el32(n32,2,2),el34(n34,2,2)
      real*8 el36(n36,2,2)                            ,el3b(nb3,2,2)
      real*8 el40(n40,2,2),el43(n43,2,2)
      real*8 el45(n45,2,2)              ,el4a(na4,2,2)
      real*8 el54(n54,2,2),el56(n56,2,2),el5a(na5,2,2)
      real*8 el63(n63,2,2),el65(n65,2,2)
      real*8 el67(n67,2,2)              ,el6a(na6,2,2),el6b(nb6,2,2)
      real*8 el76(n76,2,2)              ,el7a(na7,2,2),el7b(nb7,2,2)
      complex*16 cuwk(nl)
      complex*16 cg100(n10*2,n10*2),ch100(n10*2,n10*2)
      complex*16 cg103(n10*2,n13*2),ch103(n10*2,n13*2)
      complex*16 cg130(n13*2,n10*2),ch130(n13*2,n10*2)
      complex*16 cg133(n13*2,n13*2),ch133(n13*2,n13*2)
      complex*16 cg200(n20*2,n20*2),ch200(n20*2,n20*2)
      complex*16 cg203(n20*2,n23*2),ch203(n20*2,n23*2)
      complex*16 cg230(n23*2,n20*2),ch230(n23*2,n20*2)
      complex*16 cg233(n23*2,n23*2),ch233(n23*2,n23*2)
      complex*16 cg300(n30*2,n30*2),ch300(n30*2,n30*2)
      complex*16 cg301(n30*2,n31*2),ch301(n30*2,n31*2)
      complex*16 cg302(n30*2,n32*2),ch302(n30*2,n32*2)
      complex*16 cg304(n30*2,n34*2),ch304(n30*2,n34*2)
      complex*16 cg306(n30*2,n36*2),ch306(n30*2,n36*2)
      complex*16 cg310(n31*2,n30*2),ch310(n31*2,n30*2)
      complex*16 cg311(n31*2,n31*2),ch311(n31*2,n31*2)
      complex*16 cg312(n31*2,n32*2),ch312(n31*2,n32*2)
      complex*16 cg314(n31*2,n34*2),ch314(n31*2,n34*2)
      complex*16 cg316(n31*2,n36*2),ch316(n31*2,n36*2)
      complex*16 cg320(n32*2,n30*2),ch320(n32*2,n30*2)
      complex*16 cg321(n32*2,n31*2),ch321(n32*2,n31*2)
      complex*16 cg322(n32*2,n32*2),ch322(n32*2,n32*2)
      complex*16 cg324(n32*2,n34*2),ch324(n32*2,n34*2)
      complex*16 cg326(n32*2,n36*2),ch326(n32*2,n36*2)
      complex*16 cg340(n34*2,n30*2),ch340(n34*2,n30*2)
      complex*16 cg341(n34*2,n31*2),ch341(n34*2,n31*2)
      complex*16 cg342(n34*2,n32*2),ch342(n34*2,n32*2)
      complex*16 cg344(n34*2,n34*2),ch344(n34*2,n34*2)
      complex*16 cg346(n34*2,n36*2),ch346(n34*2,n36*2)
      complex*16 cg360(n36*2,n30*2),ch360(n36*2,n30*2)
      complex*16 cg361(n36*2,n31*2),ch361(n36*2,n31*2)
      complex*16 cg362(n36*2,n32*2),ch362(n36*2,n32*2)
      complex*16 cg364(n36*2,n34*2),ch364(n36*2,n34*2)
      complex*16 cg366(n36*2,n36*2),ch366(n36*2,n36*2)
      complex*16 cg400(n40*2,n40*2),ch400(n40*2,n40*2)
      complex*16 cg403(n40*2,n43*2),ch403(n40*2,n43*2)
      complex*16 cg405(n40*2,n45*2),ch405(n40*2,n45*2)
      complex*16 cg430(n43*2,n40*2),ch430(n43*2,n40*2)
      complex*16 cg433(n43*2,n43*2),ch433(n43*2,n43*2)
      complex*16 cg435(n43*2,n45*2),ch435(n43*2,n45*2)
      complex*16 cg450(n45*2,n40*2),ch450(n45*2,n40*2)
      complex*16 cg453(n45*2,n43*2),ch453(n45*2,n43*2)
      complex*16 cg455(n45*2,n45*2),ch455(n45*2,n45*2)
      complex*16 cg544(n54*2,n54*2),ch544(n54*2,n54*2)
      complex*16 cg546(n54*2,n56*2),ch546(n54*2,n56*2)
      complex*16 cg564(n56*2,n54*2),ch564(n56*2,n54*2)
      complex*16 cg566(n56*2,n56*2),ch566(n56*2,n56*2)
      complex*16 cg633(n63*2,n63*2),ch633(n63*2,n63*2)
      complex*16 cg635(n63*2,n65*2),ch635(n63*2,n65*2)
      complex*16 cg637(n63*2,n67*2),ch637(n63*2,n67*2)
      complex*16 cg653(n65*2,n63*2),ch653(n65*2,n63*2)
      complex*16 cg655(n65*2,n65*2),ch655(n65*2,n65*2)
      complex*16 cg657(n65*2,n67*2),ch657(n65*2,n67*2)
      complex*16 cg673(n67*2,n63*2),ch673(n67*2,n63*2)
      complex*16 cg675(n67*2,n65*2),ch675(n67*2,n65*2)
      complex*16 cg677(n67*2,n67*2),ch677(n67*2,n67*2)
      complex*16 cg766(n76*2,n76*2),ch766(n76*2,n76*2)
      complex*16 cg1bb(nb1*2,nb1*2),ch1bb(nb1*2,nb1*2)
      complex*16 cg1b0(nb1*2,n10*2),ch1b0(nb1*2,n10*2)
      complex*16 cg1b3(nb1*2,n13*2),ch1b3(nb1*2,n13*2)
      complex*16 cg10b(n10*2,nb1*2),ch10b(n10*2,nb1*2)
      complex*16 cg13b(n13*2,nb1*2),ch13b(n13*2,nb1*2)
      complex*16 cg3bb(nb3*2,nb3*2),ch3bb(nb3*2,nb3*2)
      complex*16 cg3b0(nb3*2,n30*2),ch3b0(nb3*2,n30*2)
      complex*16 cg3b1(nb3*2,n31*2),ch3b1(nb3*2,n31*2)
      complex*16 cg3b2(nb3*2,n32*2),ch3b2(nb3*2,n32*2)
      complex*16 cg3b4(nb3*2,n34*2),ch3b4(nb3*2,n34*2)
      complex*16 cg3b6(nb3*2,n36*2),ch3b6(nb3*2,n36*2)
      complex*16 cg30b(n30*2,nb3*2),ch30b(n30*2,nb3*2)
      complex*16 cg31b(n31*2,nb3*2),ch31b(n31*2,nb3*2)
      complex*16 cg32b(n32*2,nb3*2),ch32b(n32*2,nb3*2)
      complex*16 cg34b(n34*2,nb3*2),ch34b(n34*2,nb3*2)
      complex*16 cg36b(n36*2,nb3*2),ch36b(n36*2,nb3*2)
      complex*16 cg4aa(na4*2,na4*2),ch4aa(na4*2,na4*2)
      complex*16 cg4a0(na4*2,n40*2),ch4a0(na4*2,n40*2)
      complex*16 cg4a3(na4*2,n43*2),ch4a3(na4*2,n43*2)
      complex*16 cg4a5(na4*2,n45*2),ch4a5(na4*2,n45*2)
      complex*16 cg40a(n40*2,na4*2),ch40a(n40*2,na4*2)
      complex*16 cg43a(n43*2,na4*2),ch43a(n43*2,na4*2)
      complex*16 cg45a(n45*2,na4*2),ch45a(n45*2,na4*2)
      complex*16 cg5aa(na5*2,na5*2),ch5aa(na5*2,na5*2)
      complex*16 cg5a4(na5*2,n54*2),ch5a4(na5*2,n54*2)
      complex*16 cg5a6(na5*2,n56*2),ch5a6(na5*2,n56*2)
      complex*16 cg54a(n54*2,na5*2),ch54a(n54*2,na5*2)
      complex*16 cg56a(n56*2,na5*2),ch56a(n56*2,na5*2)
      complex*16 cg6aa(na6*2,na6*2),ch6aa(na6*2,na6*2)
      complex*16 cg6ab(na6*2,nb6*2),ch6ab(na6*2,nb6*2)
      complex*16 cg6a3(na6*2,n63*2),ch6a3(na6*2,n63*2)
      complex*16 cg6a5(na6*2,n65*2),ch6a5(na6*2,n65*2)
      complex*16 cg6a7(na6*2,n67*2),ch6a7(na6*2,n67*2)
      complex*16 cg6ba(nb6*2,na6*2),ch6ba(nb6*2,na6*2)
      complex*16 cg6bb(nb6*2,nb6*2),ch6bb(nb6*2,nb6*2)
      complex*16 cg6b3(nb6*2,n63*2),ch6b3(nb6*2,n63*2)
      complex*16 cg6b5(nb6*2,n65*2),ch6b5(nb6*2,n65*2)
      complex*16 cg6b7(nb6*2,n67*2),ch6b7(nb6*2,n67*2)
      complex*16 cg63a(n63*2,na6*2),ch63a(n63*2,na6*2)
      complex*16 cg63b(n63*2,nb6*2),ch63b(n63*2,nb6*2)
      complex*16 cg65a(n65*2,na6*2),ch65a(n65*2,na6*2)
      complex*16 cg65b(n65*2,nb6*2),ch65b(n65*2,nb6*2)
      complex*16 cg67a(n67*2,na6*2),ch67a(n67*2,na6*2)
      complex*16 cg67b(n67*2,nb6*2),ch67b(n67*2,nb6*2)
      complex*16 cg7aa(na7*2,na7*2),ch7aa(na7*2,na7*2)
      complex*16 cg7ab(na7*2,nb7*2),ch7ab(na7*2,nb7*2)
      complex*16 cg7a6(na7*2,n76*2),ch7a6(na7*2,n76*2)
      complex*16 cg7ba(nb7*2,na7*2),ch7ba(nb7*2,na7*2)
      complex*16 cg7bb(nb7*2,nb7*2),ch7bb(nb7*2,nb7*2)
      complex*16 cg7b6(nb7*2,n76*2),ch7b6(nb7*2,n76*2)
      complex*16 cg76a(n76*2,na7*2),ch76a(n76*2,na7*2)
      complex*16 cg76b(n76*2,nb7*2),ch76b(n76*2,nb7*2)
      complex*16 cevaa4(me,na4*2),ctvaa4(na4*2,me),cuvaa4(na4*2,me)
      complex*16 cevab4(me,na4*2),ctvab4(na4*2,me),cuvab4(na4*2,me)
      complex*16 cevaa5(me,na5*2),ctvaa5(na5*2,me),cuvaa5(na5*2,me)
      complex*16 cevab5(me,na5*2),ctvab5(na5*2,me),cuvab5(na5*2,me)
      complex*16 cevaa6(me,na6*2),ctvaa6(na6*2,me),cuvaa6(na6*2,me)
      complex*16 cevab6(me,na6*2),ctvab6(na6*2,me),cuvab6(na6*2,me)
      complex*16 cevaa7(me,na7*2),ctvaa7(na7*2,me),cuvaa7(na7*2,me)
      complex*16 cevab7(me,na7*2),ctvab7(na7*2,me),cuvab7(na7*2,me)
      complex*16 cevba1(me,nb1*2),ctvba1(nb1*2,me),cuvba1(nb1*2,me)
      complex*16 cevbb1(me,nb1*2),ctvbb1(nb1*2,me),cuvbb1(nb1*2,me)
      complex*16 cevba3(me,nb3*2),ctvba3(nb3*2,me),cuvba3(nb3*2,me)
      complex*16 cevbb3(me,nb3*2),ctvbb3(nb3*2,me),cuvbb3(nb3*2,me)
      complex*16 cevba6(me,nb6*2),ctvba6(nb6*2,me),cuvba6(nb6*2,me)
      complex*16 cevbb6(me,nb6*2),ctvbb6(nb6*2,me),cuvbb6(nb6*2,me)
      complex*16 cevba7(me,nb7*2),ctvba7(nb7*2,me),cuvba7(nb7*2,me)
      complex*16 cevbb7(me,nb7*2),ctvbb7(nb7*2,me),cuvbb7(nb7*2,me)
      complex*16 cain(me),cbin(me)
      complex*16 a(nl+me,nl+me+1),ax(nl+me),ay(nl+me)
      call grfgh(n10,n10,el10,el10,cka1,ckb1,cpm1,cg100,ch100, 1)
      call grfgh(n13,n10,el13,el10,cka1,ckb1,cpm1,cg103,ch103,-1)
      call grfgh(n10,n13,el10,el13,cka1,ckb1,cpm1,cg130,ch130,-1)
      call grfgh(n13,n13,el13,el13,cka1,ckb1,cpm1,cg133,ch133, 1)
      call grfgh(n20,n20,el20,el20,cka2,ckb2,cpm2,cg200,ch200, 1)
      call grfgh(n23,n20,el23,el20,cka2,ckb2,cpm2,cg203,ch203,-1)
      call grfgh(n20,n23,el20,el23,cka2,ckb2,cpm2,cg230,ch230,-1)
      call grfgh(n23,n23,el23,el23,cka2,ckb2,cpm2,cg233,ch233, 1)
      call grfgh(n30,n30,el30,el30,cka3,ckb3,cpm3,cg300,ch300, 1)
      call grfgh(n31,n30,el31,el30,cka3,ckb3,cpm3,cg301,ch301,-1)
      call grfgh(n32,n30,el32,el30,cka3,ckb3,cpm3,cg302,ch302,-1)
      call grfgh(n34,n30,el34,el30,cka3,ckb3,cpm3,cg304,ch304,-1)
      call grfgh(n36,n30,el36,el30,cka3,ckb3,cpm3,cg306,ch306,-1)
      call grfgh(n30,n31,el30,el31,cka3,ckb3,cpm3,cg310,ch310,-1)
      call grfgh(n31,n31,el31,el31,cka3,ckb3,cpm3,cg311,ch311, 1)
      call grfgh(n32,n31,el32,el31,cka3,ckb3,cpm3,cg312,ch312,-1)
      call grfgh(n34,n31,el34,el31,cka3,ckb3,cpm3,cg314,ch314,-1)
      call grfgh(n36,n31,el36,el31,cka3,ckb3,cpm3,cg316,ch316,-1)
      call grfgh(n30,n32,el30,el32,cka3,ckb3,cpm3,cg320,ch320,-1)
      call grfgh(n31,n32,el31,el32,cka3,ckb3,cpm3,cg321,ch321,-1)
      call grfgh(n32,n32,el32,el32,cka3,ckb3,cpm3,cg322,ch322, 1)
      call grfgh(n34,n32,el34,el32,cka3,ckb3,cpm3,cg324,ch324,-1)
      call grfgh(n36,n32,el36,el32,cka3,ckb3,cpm3,cg326,ch326,-1)
      call grfgh(n30,n34,el30,el34,cka3,ckb3,cpm3,cg340,ch340,-1)
      call grfgh(n31,n34,el31,el34,cka3,ckb3,cpm3,cg341,ch341,-1)
      call grfgh(n32,n34,el32,el34,cka3,ckb3,cpm3,cg342,ch342,-1)
      call grfgh(n34,n34,el34,el34,cka3,ckb3,cpm3,cg344,ch344, 1)
      call grfgh(n36,n34,el36,el34,cka3,ckb3,cpm3,cg346,ch346,-1)
      call grfgh(n30,n36,el30,el36,cka3,ckb3,cpm3,cg360,ch360,-1)
      call grfgh(n31,n36,el31,el36,cka3,ckb3,cpm3,cg361,ch361,-1)
      call grfgh(n32,n36,el32,el36,cka3,ckb3,cpm3,cg362,ch362,-1)
      call grfgh(n34,n36,el34,el36,cka3,ckb3,cpm3,cg364,ch364,-1)
      call grfgh(n36,n36,el36,el36,cka3,ckb3,cpm3,cg366,ch366, 1)
      call grfgh(n40,n40,el40,el40,cka4,ckb4,cpm4,cg400,ch400, 1)
      call grfgh(n43,n40,el43,el40,cka4,ckb4,cpm4,cg403,ch403,-1)
      call grfgh(n45,n40,el45,el40,cka4,ckb4,cpm4,cg405,ch405,-1)
      call grfgh(n40,n43,el40,el43,cka4,ckb4,cpm4,cg430,ch430,-1)
      call grfgh(n43,n43,el43,el43,cka4,ckb4,cpm4,cg433,ch433, 1)
      call grfgh(n45,n43,el45,el43,cka4,ckb4,cpm4,cg435,ch435,-1)
      call grfgh(n40,n45,el40,el45,cka4,ckb4,cpm4,cg450,ch450,-1)
      call grfgh(n43,n45,el43,el45,cka4,ckb4,cpm4,cg453,ch453,-1)
      call grfgh(n45,n45,el45,el45,cka4,ckb4,cpm4,cg455,ch455, 1)
      call grfgh(n54,n54,el54,el54,cka5,ckb5,cpm5,cg544,ch544, 1)
      call grfgh(n56,n54,el56,el54,cka5,ckb5,cpm5,cg546,ch546,-1)
      call grfgh(n54,n56,el54,el56,cka5,ckb5,cpm5,cg564,ch564,-1)
      call grfgh(n56,n56,el56,el56,cka5,ckb5,cpm5,cg566,ch566, 1)
      call grfgh(n63,n63,el63,el63,cka6,ckb6,cpm6,cg633,ch633, 1)
      call grfgh(n65,n63,el65,el63,cka6,ckb6,cpm6,cg635,ch635,-1)
      call grfgh(n67,n63,el67,el63,cka6,ckb6,cpm6,cg637,ch637,-1)
      call grfgh(n63,n65,el63,el65,cka6,ckb6,cpm6,cg653,ch653,-1)
      call grfgh(n65,n65,el65,el65,cka6,ckb6,cpm6,cg655,ch655, 1)
      call grfgh(n67,n65,el67,el65,cka6,ckb6,cpm6,cg657,ch657,-1)
      call grfgh(n63,n67,el63,el67,cka6,ckb6,cpm6,cg673,ch673,-1)
      call grfgh(n65,n67,el65,el67,cka6,ckb6,cpm6,cg675,ch675,-1)
      call grfgh(n67,n67,el67,el67,cka6,ckb6,cpm6,cg677,ch677, 1)
      call grfgh(n76,n76,el76,el76,cka7,ckb7,cpm7,cg766,ch766, 1)
      call grfgh(nb1,nb1,el1b,el1b,cka1,ckb1,cpm1,cg1bb,ch1bb, 1)
      call grfgh(n10,nb1,el10,el1b,cka1,ckb1,cpm1,cg1b0,ch1b0,-1)
      call grfgh(n13,nb1,el13,el1b,cka1,ckb1,cpm1,cg1b3,ch1b3,-1)
      call grfgh(nb1,n10,el1b,el10,cka1,ckb1,cpm1,cg10b,ch10b,-1)
      call grfgh(nb1,n13,el1b,el13,cka1,ckb1,cpm1,cg13b,ch13b,-1)
      call grfgh(nb3,nb3,el3b,el3b,cka3,ckb3,cpm3,cg3bb,ch3bb, 1)
      call grfgh(n30,nb3,el30,el3b,cka3,ckb3,cpm3,cg3b0,ch3b0,-1)
      call grfgh(n31,nb3,el31,el3b,cka3,ckb3,cpm3,cg3b1,ch3b1,-1)
      call grfgh(n32,nb3,el32,el3b,cka3,ckb3,cpm3,cg3b2,ch3b2,-1)
      call grfgh(n34,nb3,el34,el3b,cka3,ckb3,cpm3,cg3b4,ch3b4,-1)
      call grfgh(n36,nb3,el36,el3b,cka3,ckb3,cpm3,cg3b6,ch3b6,-1)
      call grfgh(nb3,n30,el3b,el30,cka3,ckb3,cpm3,cg30b,ch30b,-1)
      call grfgh(nb3,n31,el3b,el31,cka3,ckb3,cpm3,cg31b,ch31b,-1)
      call grfgh(nb3,n32,el3b,el32,cka3,ckb3,cpm3,cg32b,ch32b,-1)
      call grfgh(nb3,n34,el3b,el34,cka3,ckb3,cpm3,cg34b,ch34b,-1)
      call grfgh(nb3,n36,el3b,el36,cka3,ckb3,cpm3,cg36b,ch36b,-1)
      call grfgh(na4,na4,el4a,el4a,cka4,ckb4,cpm4,cg4aa,ch4aa, 1)
      call grfgh(n40,na4,el40,el4a,cka4,ckb4,cpm4,cg4a0,ch4a0,-1)
      call grfgh(n43,na4,el43,el4a,cka4,ckb4,cpm4,cg4a3,ch4a3,-1)
      call grfgh(n45,na4,el45,el4a,cka4,ckb4,cpm4,cg4a5,ch4a5,-1)
      call grfgh(na4,n40,el4a,el40,cka4,ckb4,cpm4,cg40a,ch40a,-1)
      call grfgh(na4,n43,el4a,el43,cka4,ckb4,cpm4,cg43a,ch43a,-1)
      call grfgh(na4,n45,el4a,el45,cka4,ckb4,cpm4,cg45a,ch45a,-1)
      call grfgh(na5,na5,el5a,el5a,cka5,ckb5,cpm5,cg5aa,ch5aa, 1)
      call grfgh(n54,na5,el54,el5a,cka5,ckb5,cpm5,cg5a4,ch5a4,-1)
      call grfgh(n56,na5,el56,el5a,cka5,ckb5,cpm5,cg5a6,ch5a6,-1)
      call grfgh(na5,n54,el5a,el54,cka5,ckb5,cpm5,cg54a,ch54a,-1)
      call grfgh(na5,n56,el5a,el56,cka5,ckb5,cpm5,cg56a,ch56a,-1)
      call grfgh(na6,na6,el6a,el6a,cka6,ckb6,cpm6,cg6aa,ch6aa, 1)
      call grfgh(nb6,na6,el6b,el6a,cka6,ckb6,cpm6,cg6ab,ch6ab,-1)
      call grfgh(n63,na6,el63,el6a,cka6,ckb6,cpm6,cg6a3,ch6a3,-1)
      call grfgh(n65,na6,el65,el6a,cka6,ckb6,cpm6,cg6a5,ch6a5,-1)
      call grfgh(n67,na6,el67,el6a,cka6,ckb6,cpm6,cg6a7,ch6a7,-1)
      call grfgh(na6,nb6,el6a,el6b,cka6,ckb6,cpm6,cg6ba,ch6ba,-1)
      call grfgh(nb6,nb6,el6b,el6b,cka6,ckb6,cpm6,cg6bb,ch6bb, 1)
      call grfgh(n63,nb6,el63,el6b,cka6,ckb6,cpm6,cg6b3,ch6b3,-1)
      call grfgh(n65,nb6,el65,el6b,cka6,ckb6,cpm6,cg6b5,ch6b5,-1)
      call grfgh(n67,nb6,el67,el6b,cka6,ckb6,cpm6,cg6b7,ch6b7,-1)
      call grfgh(na6,n63,el6a,el63,cka6,ckb6,cpm6,cg63a,ch63a,-1)
      call grfgh(nb6,n63,el6b,el63,cka6,ckb6,cpm6,cg63b,ch63b,-1)
      call grfgh(na6,n65,el6a,el65,cka6,ckb6,cpm6,cg65a,ch65a,-1)
      call grfgh(nb6,n65,el6b,el65,cka6,ckb6,cpm6,cg65b,ch65b,-1)
      call grfgh(na6,n67,el6a,el67,cka6,ckb6,cpm6,cg67a,ch67a,-1)
      call grfgh(nb6,n67,el6b,el67,cka6,ckb6,cpm6,cg67b,ch67b,-1)
      call grfgh(na7,na7,el7a,el7a,cka7,ckb7,cpm7,cg7aa,ch7aa, 1)
      call grfgh(nb7,na7,el7b,el7a,cka7,ckb7,cpm7,cg7ab,ch7ab,-1)
      call grfgh(n76,na7,el76,el7a,cka7,ckb7,cpm7,cg7a6,ch7a6,-1)
      call grfgh(na7,nb7,el7a,el7b,cka7,ckb7,cpm7,cg7ba,ch7ba,-1)
      call grfgh(nb7,nb7,el7b,el7b,cka7,ckb7,cpm7,cg7bb,ch7bb, 1)
      call grfgh(n76,nb7,el76,el7b,cka7,ckb7,cpm7,cg7b6,ch7b6,-1)
      call grfgh(na7,n76,el7a,el76,cka7,ckb7,cpm7,cg76a,ch76a,-1)
      call grfgh(nb7,n76,el7b,el76,cka7,ckb7,cpm7,cg76b,ch76b,-1)
      write (6,*) 111
      call ntpfa(cevaa4,cevab4,cuvaa4,cuvab4,ctvaa4,ctvab4
     &          ,cevaa5,cevab5,cuvaa5,cuvab5,ctvaa5,ctvab5
     &          ,cevaa6,cevab6,cuvaa6,cuvab6,ctvaa6,ctvab6
     &          ,cevaa7,cevab7,cuvaa7,cuvab7,ctvaa7,ctvab7
     &          ,cw,mra,cain)
      write (6,*) 222
      call ntpfb(cevba1,cevbb1,cuvba1,cuvbb1,ctvba1,ctvbb1
     &          ,cevba3,cevbb3,cuvba3,cuvbb3,ctvba3,ctvbb3
     &          ,cevba6,cevbb6,cuvba6,cuvbb6,ctvba6,ctvbb6
     &          ,cevba7,cevbb7,cuvba7,cuvbb7,ctvba7,ctvbb7
     &          ,cw,mrb,cbin)
      write (6,*) mra,mrb
      write (6,*) 333
      mx01=     n10*2
      mx02=mx01+n13*2
      mx03=mx02+n20*2
      mx04=mx03+n23*2
      mx05=mx04+n30*2
      mx06=mx05+n31*2
      mx07=mx06+n32*2
      mx08=mx07+n34*2
      mx09=mx08+n36*2
      mx10=mx09+n40*2
      mx11=mx10+n43*2
      mx12=mx11+n45*2
      mx13=mx12+n54*2
      mx14=mx13+n56*2
      mx15=mx14+n63*2
      mx16=mx15+n65*2
      mx17=mx16+n67*2
      mx18=mx17+n76*2
      my01=     n10*2
      my02=my01+n13*2
      my03=my02+n13*2
      my04=my03+n20*2
      my05=my04+n23*2
      my06=my05+n23*2
      my07=my06+n30*2
      my08=my07+n34*2
      my09=my08+n34*2
      my10=my09+n36*2
      my11=my10+n36*2
      my12=my11+n40*2
      my13=my12+n45*2
      my14=my13+n45*2
      my15=my14+n56*2
      my16=my15+n56*2
      my17=my16+n67*2
      my18=my17+n67*2
      nlab=nl+mra+mrb
      do 10 j=1,nlab
         ay(j)=(0.0d0,0.0d0)
         do 20 i=1,nlab
            a(i,j)=(0.0d0,0.0d0)
   20    continue
   10 continue
      do 30 i=1,n10*2
         ch100(i,i)=ch100(i,i)+(0.5d0,0.0d0)
   30 continue
      do 31 i=1,n13*2
         ch133(i,i)=ch133(i,i)+(0.5d0,0.0d0)
   31 continue
      do 32 i=1,n20*2
         ch200(i,i)=ch200(i,i)+(0.5d0,0.0d0)
   32 continue
      do 33 i=1,n23*2
         ch233(i,i)=ch233(i,i)+(0.5d0,0.0d0)
   33 continue
      do 34 i=1,n30*2
         ch300(i,i)=ch300(i,i)+(0.5d0,0.0d0)
   34 continue
      do 35 i=1,n31*2
         ch311(i,i)=ch311(i,i)+(0.5d0,0.0d0)
   35 continue
      do 36 i=1,n32*2
         ch322(i,i)=ch322(i,i)+(0.5d0,0.0d0)
   36 continue
      do 37 i=1,n34*2
         ch344(i,i)=ch344(i,i)+(0.5d0,0.0d0)
   37 continue
      do 38 i=1,n36*2
         ch366(i,i)=ch366(i,i)+(0.5d0,0.0d0)
   38 continue
      do 39 i=1,n40*2
         ch400(i,i)=ch400(i,i)+(0.5d0,0.0d0)
   39 continue
      do 40 i=1,n43*2
         ch433(i,i)=ch433(i,i)+(0.5d0,0.0d0)
   40 continue
      do 41 i=1,n45*2
         ch455(i,i)=ch455(i,i)+(0.5d0,0.0d0)
   41 continue
      do 42 i=1,n54*2
         ch544(i,i)=ch544(i,i)+(0.5d0,0.0d0)
   42 continue
      do 43 i=1,n56*2
         ch566(i,i)=ch566(i,i)+(0.5d0,0.0d0)
   43 continue
      do 44 i=1,n63*2
         ch633(i,i)=ch633(i,i)+(0.5d0,0.0d0)
   44 continue
      do 45 i=1,n65*2
         ch655(i,i)=ch655(i,i)+(0.5d0,0.0d0)
   45 continue
      do 46 i=1,n67*2
         ch677(i,i)=ch677(i,i)+(0.5d0,0.0d0)
   46 continue
      do 47 i=1,n76*2
         ch766(i,i)=ch766(i,i)+(0.5d0,0.0d0)
   47 continue
      do 48 i=1,nb1*2
         ch1bb(i,i)=ch1bb(i,i)+(0.5d0,0.0d0)
   48 continue
      do 49 i=1,nb3*2
         ch3bb(i,i)=ch3bb(i,i)+(0.5d0,0.0d0)
   49 continue
      do 50 i=1,na4*2
         ch4aa(i,i)=ch4aa(i,i)+(0.5d0,0.0d0)
   50 continue
      do 51 i=1,na5*2
         ch5aa(i,i)=ch5aa(i,i)+(0.5d0,0.0d0)
   51 continue
      do 52 i=1,na6*2
         ch6aa(i,i)=ch6aa(i,i)+(0.5d0,0.0d0)
   52 continue
      do 53 i=1,nb6*2
         ch6bb(i,i)=ch6bb(i,i)+(0.5d0,0.0d0)
   53 continue
      do 54 i=1,na7*2
         ch7aa(i,i)=ch7aa(i,i)+(0.5d0,0.0d0)
   54 continue
      do 55 i=1,nb7*2
         ch7bb(i,i)=ch7bb(i,i)+(0.5d0,0.0d0)
   55 continue
      do 100 j=1,n10*2
         do 101 i=1,n10*2
            a(i     ,j     )= ch100(i,j)
  101    continue
         do 102 i=1,n13*2
            a(i+mx01,j     )= ch130(i,j)
  102    continue
  100 continue
      do 110 j=1,n13*2
         do 111 i=1,n10*2
            a(i     ,j+my01)=-cg103(i,j)
  111    continue
         do 112 i=1,n13*2
            a(i+mx01,j+my01)=-cg133(i,j)
  112    continue
         do 113 i=1,n30*2
            a(i+mx04,j+my01)= cg301(i,j)
  113    continue
         do 114 i=1,n31*2
            a(i+mx05,j+my01)= cg311(i,j)
  114    continue
         do 115 i=1,n32*2
            a(i+mx06,j+my01)= cg321(i,j)
  115    continue
         do 116 i=1,n34*2
            a(i+mx07,j+my01)= cg341(i,j)
  116    continue
         do 117 i=1,n36*2
            a(i+mx08,j+my01)= cg361(i,j)
  117    continue
  110 continue
      do 120 j=1,n13*2
         do 121 i=1,n10*2
            a(i     ,j+my02)= ch103(i,j)
  121    continue
         do 122 i=1,n13*2
            a(i+mx01,j+my02)= ch133(i,j)
  122    continue
         do 123 i=1,n30*2
            a(i+mx04,j+my02)= ch301(i,j)
  123    continue
         do 124 i=1,n31*2
            a(i+mx05,j+my02)= ch311(i,j)
  124    continue
         do 125 i=1,n32*2
            a(i+mx06,j+my02)= ch321(i,j)
  125    continue
         do 126 i=1,n34*2
            a(i+mx07,j+my02)= ch341(i,j)
  126    continue
         do 127 i=1,n36*2
            a(i+mx08,j+my02)= ch361(i,j)
  127    continue
  120 continue
      do 130 j=1,n20*2
         do 131 i=1,n20*2
            a(i+mx02,j+my03)= ch200(i,j)
  131    continue
         do 132 i=1,n23*2
            a(i+mx03,j+my03)= ch230(i,j)
  132    continue
  130 continue
      do 140 j=1,n23*2
         do 141 i=1,n20*2
            a(i+mx02,j+my04)=-cg203(i,j)
  141    continue
         do 142 i=1,n23*2
            a(i+mx03,j+my04)=-cg233(i,j)
  142    continue
         do 143 i=1,n30*2
            a(i+mx04,j+my04)= cg302(i,j)
  143    continue
         do 144 i=1,n31*2
            a(i+mx05,j+my04)= cg312(i,j)
  144    continue
         do 145 i=1,n32*2
            a(i+mx06,j+my04)= cg322(i,j)
  145    continue
         do 146 i=1,n34*2
            a(i+mx07,j+my04)= cg342(i,j)
  146    continue
         do 147 i=1,n36*2
            a(i+mx08,j+my04)= cg362(i,j)
  147    continue
  140 continue
      do 150 j=1,n23*2
         do 151 i=1,n20*2
            a(i+mx02,j+my05)= ch203(i,j)
  151    continue
         do 152 i=1,n23*2
            a(i+mx03,j+my05)= ch233(i,j)
  152    continue
         do 153 i=1,n30*2
            a(i+mx04,j+my05)= ch302(i,j)
  153    continue
         do 154 i=1,n31*2
            a(i+mx05,j+my05)= ch312(i,j)
  154    continue
         do 155 i=1,n32*2
            a(i+mx06,j+my05)= ch322(i,j)
  155    continue
         do 156 i=1,n34*2
            a(i+mx07,j+my05)= ch342(i,j)
  156    continue
         do 157 i=1,n36*2
            a(i+mx08,j+my05)= ch362(i,j)
  157    continue
  150 continue
      do 160 j=1,n30*2
         do 161 i=1,n30*2
            a(i+mx04,j+my06)= ch300(i,j)
  161    continue
         do 162 i=1,n31*2
            a(i+mx05,j+my06)= ch310(i,j)
  162    continue
         do 163 i=1,n32*2
            a(i+mx06,j+my06)= ch320(i,j)
  163    continue
         do 164 i=1,n34*2
            a(i+mx07,j+my06)= ch340(i,j)
  164    continue
         do 165 i=1,n36*2
            a(i+mx08,j+my06)= ch360(i,j)
  165    continue
  160 continue
      do 170 j=1,n34*2
         do 171 i=1,n30*2
            a(i+mx04,j+my07)=-cg304(i,j)
  171    continue
         do 172 i=1,n31*2
            a(i+mx05,j+my07)=-cg314(i,j)
  172    continue
         do 173 i=1,n32*2
            a(i+mx06,j+my07)=-cg324(i,j)
  173    continue
         do 174 i=1,n34*2
            a(i+mx07,j+my07)=-cg344(i,j)
  174    continue
         do 175 i=1,n36*2
            a(i+mx08,j+my07)=-cg364(i,j)
  175    continue
         do 176 i=1,n40*2
            a(i+mx09,j+my07)= cg403(i,j)
  176    continue
         do 177 i=1,n43*2
            a(i+mx10,j+my07)= cg433(i,j)
  177    continue
         do 178 i=1,n45*2
            a(i+mx11,j+my07)= cg453(i,j)
  178    continue
  170 continue
      do 180 j=1,n34*2
         do 181 i=1,n30*2
            a(i+mx04,j+my08)= ch304(i,j)
  181    continue
         do 182 i=1,n31*2
            a(i+mx05,j+my08)= ch314(i,j)
  182    continue
         do 183 i=1,n32*2
            a(i+mx06,j+my08)= ch324(i,j)
  183    continue
         do 184 i=1,n34*2
            a(i+mx07,j+my08)= ch344(i,j)
  184    continue
         do 185 i=1,n36*2
            a(i+mx08,j+my08)= ch364(i,j)
  185    continue
         do 186 i=1,n40*2
            a(i+mx09,j+my08)= ch403(i,j)
  186    continue
         do 187 i=1,n43*2
            a(i+mx10,j+my08)= ch433(i,j)
  187    continue
         do 188 i=1,n45*2
            a(i+mx11,j+my08)= ch453(i,j)
  188    continue
  180 continue
      do 190 j=1,n36*2
         do 191 i=1,n30*2
            a(i+mx04,j+my09)=-cg306(i,j)
  191    continue
         do 192 i=1,n31*2
            a(i+mx05,j+my09)=-cg316(i,j)
  192    continue
         do 193 i=1,n32*2
            a(i+mx06,j+my09)=-cg326(i,j)
  193    continue
         do 194 i=1,n34*2
            a(i+mx07,j+my09)=-cg346(i,j)
  194    continue
         do 195 i=1,n36*2
            a(i+mx08,j+my09)=-cg366(i,j)
  195    continue
         do 196 i=1,n63*2
            a(i+mx14,j+my09)= cg633(i,j)
  196    continue
         do 197 i=1,n65*2
            a(i+mx15,j+my09)= cg653(i,j)
  197    continue
         do 198 i=1,n67*2
            a(i+mx16,j+my09)= cg673(i,j)
  198    continue
  190 continue
      do 200 j=1,n36*2
         do 201 i=1,n30*2
            a(i+mx04,j+my10)= ch306(i,j)
  201    continue
         do 202 i=1,n31*2
            a(i+mx05,j+my10)= ch316(i,j)
  202    continue
         do 203 i=1,n32*2
            a(i+mx06,j+my10)= ch326(i,j)
  203    continue
         do 204 i=1,n34*2
            a(i+mx07,j+my10)= ch346(i,j)
  204    continue
         do 205 i=1,n36*2
            a(i+mx08,j+my10)= ch366(i,j)
  205    continue
         do 206 i=1,n63*2
            a(i+mx14,j+my10)= ch633(i,j)
  206    continue
         do 207 i=1,n65*2
            a(i+mx15,j+my10)= ch653(i,j)
  207    continue
         do 208 i=1,n67*2
            a(i+mx16,j+my10)= ch673(i,j)
  208    continue
  200 continue
      do 210 j=1,n40*2
         do 211 i=1,n40*2
            a(i+mx09,j+my11)= ch400(i,j)
  211    continue
         do 212 i=1,n43*2
            a(i+mx10,j+my11)= ch430(i,j)
  212    continue
         do 213 i=1,n45*2
            a(i+mx11,j+my11)= ch450(i,j)
  213    continue
  210 continue
      do 220 j=1,n45*2
         do 221 i=1,n40*2
            a(i+mx09,j+my12)=-cg405(i,j)
  221    continue
         do 222 i=1,n43*2
            a(i+mx10,j+my12)=-cg435(i,j)
  222    continue
         do 223 i=1,n45*2
            a(i+mx11,j+my12)=-cg455(i,j)
  223    continue
         do 224 i=1,n54*2
            a(i+mx12,j+my12)= cg544(i,j)
  224    continue
         do 225 i=1,n56*2
            a(i+mx13,j+my12)= cg564(i,j)
  225    continue
  220 continue
      do 230 j=1,n45*2
         do 231 i=1,n40*2
            a(i+mx09,j+my13)= ch405(i,j)
  231    continue
         do 232 i=1,n43*2
            a(i+mx10,j+my13)= ch435(i,j)
  232    continue
         do 233 i=1,n45*2
            a(i+mx11,j+my13)= ch455(i,j)
  233    continue
         do 234 i=1,n54*2
            a(i+mx12,j+my13)= ch544(i,j)
  234    continue
         do 235 i=1,n56*2
            a(i+mx13,j+my13)= ch564(i,j)
  235    continue
  230 continue
      do 240 j=1,n56*2
         do 241 i=1,n54*2
            a(i+mx12,j+my14)=-cg546(i,j)
  241    continue
         do 242 i=1,n56*2
            a(i+mx13,j+my14)=-cg566(i,j)
  242    continue
         do 243 i=1,n63*2
            a(i+mx14,j+my14)= cg635(i,j)
  243    continue
         do 244 i=1,n65*2
            a(i+mx15,j+my14)= cg655(i,j)
  244    continue
         do 245 i=1,n67*2
            a(i+mx16,j+my14)= cg675(i,j)
  245    continue
  240 continue
      do 250 j=1,n56*2
         do 251 i=1,n54*2
            a(i+mx12,j+my15)= ch546(i,j)
  251    continue
         do 252 i=1,n56*2
            a(i+mx13,j+my15)= ch566(i,j)
  252    continue
         do 253 i=1,n63*2
            a(i+mx14,j+my15)= ch635(i,j)
  253    continue
         do 254 i=1,n65*2
            a(i+mx15,j+my15)= ch655(i,j)
  254    continue
         do 255 i=1,n67*2
            a(i+mx16,j+my15)= ch675(i,j)
  255    continue
  250 continue
      do 260 j=1,n67*2
         do 261 i=1,n63*2
            a(i+mx14,j+my16)=-cg637(i,j)
  261    continue
         do 262 i=1,n65*2
            a(i+mx15,j+my16)=-cg657(i,j)
  262    continue
         do 263 i=1,n67*2
            a(i+mx16,j+my16)=-cg677(i,j)
  263    continue
         do 264 i=1,n76*2
            a(i+mx17,j+my16)= cg766(i,j)
  264    continue
  260 continue
      do 270 j=1,n67*2
         do 271 i=1,n63*2
            a(i+mx14,j+my17)= ch637(i,j)
  271    continue
         do 272 i=1,n65*2
            a(i+mx15,j+my17)= ch657(i,j)
  272    continue
         do 273 i=1,n67*2
            a(i+mx16,j+my17)= ch677(i,j)
  273    continue
         do 274 i=1,n76*2
            a(i+mx17,j+my17)= ch766(i,j)
  274    continue
  270 continue
      do 2200 j=1,n43*2
         do 2201 i=1,mra
            do 2202 l=1,na4*2
               a(i+mx18,j+my07)
     &        =a(i+mx18,j+my07)+cevaa4(i,l)*cg4a3(l,j)
 2202       continue
 2201    continue
 2200 continue
      do 2210 j=1,n43*2
         do 2211 i=1,mra
            do 2212 l=1,na4*2
               a(i+mx18,j+my08)
     &        =a(i+mx18,j+my08)+cevaa4(i,l)*ch4a3(l,j)
 2212       continue
 2211    continue
 2210 continue
      do 2220 j=1,n63*2
         do 2221 i=1,mra
            do 2222 l=1,na6*2
               a(i+mx18,j+my09)
     &        =a(i+mx18,j+my09)+cevaa6(i,l)*cg6a3(l,j)
 2222       continue
 2221    continue
 2220 continue
      do 2230 j=1,n63*2
         do 2231 i=1,mra
            do 2232 l=1,na6*2
               a(i+mx18,j+my10)
     &        =a(i+mx18,j+my10)+cevaa6(i,l)*ch6a3(l,j)
 2232       continue
 2231    continue
 2230 continue
      do 2240 j=1,n40*2
         do 2241 i=1,mra
            do 2242 l=1,na4*2
               a(i+mx18,j+my11)
     &        =a(i+mx18,j+my11)+cevaa4(i,l)*ch4a0(l,j)
 2242       continue
 2241    continue
 2240 continue
      do 2250 j=1,n45*2
         do 2251 i=1,mra
            do 2252 l=1,na4*2
               a(i+mx18,j+my12)
     &        =a(i+mx18,j+my12)-cevaa4(i,l)*cg4a5(l,j)
 2252       continue
            do 2253 l=1,na5*2
               a(i+mx18,j+my12)
     &        =a(i+mx18,j+my12)+cevaa5(i,l)*cg5a4(l,j)
 2253       continue
 2251    continue
 2250 continue
      do 2260 j=1,n45*2
         do 2261 i=1,mra
            do 2262 l=1,na4*2
               a(i+mx18,j+my13)
     &        =a(i+mx18,j+my13)+cevaa4(i,l)*ch4a5(l,j)
 2262       continue
            do 2263 l=1,na5*2
               a(i+mx18,j+my13)
     &        =a(i+mx18,j+my13)+cevaa5(i,l)*ch5a4(l,j)
 2263       continue
 2261    continue
 2260 continue
      do 2270 j=1,n56*2
         do 2271 i=1,mra
            do 2272 l=1,na5*2
               a(i+mx18,j+my14)
     &        =a(i+mx18,j+my14)-cevaa5(i,l)*cg5a6(l,j)
 2272       continue
            do 2273 l=1,na6*2
               a(i+mx18,j+my14)
     &        =a(i+mx18,j+my14)+cevaa6(i,l)*cg6a5(l,j)
 2273       continue
 2271    continue
 2270 continue
      do 2280 j=1,n56*2
         do 2281 i=1,mra
            do 2282 l=1,na5*2
               a(i+mx18,j+my15)
     &        =a(i+mx18,j+my15)+cevaa5(i,l)*ch5a6(l,j)
 2282       continue
            do 2283 l=1,na6*2
               a(i+mx18,j+my15)
     &        =a(i+mx18,j+my15)+cevaa6(i,l)*ch6a5(l,j)
 2283       continue
 2281    continue
 2280 continue
      do 2290 j=1,n67*2
         do 2291 i=1,mra
            do 2292 l=1,na6*2
               a(i+mx18,j+my16)
     &        =a(i+mx18,j+my16)-cevaa6(i,l)*cg6a7(l,j)
 2292       continue
            do 2293 l=1,na7*2
               a(i+mx18,j+my16)
     &        =a(i+mx18,j+my16)+cevaa7(i,l)*cg7a6(l,j)
 2293       continue
 2291    continue
 2290 continue
      do 2300 j=1,n67*2
         do 2301 i=1,mra
            do 2302 l=1,na6*2
               a(i+mx18,j+my17)
     &        =a(i+mx18,j+my17)+cevaa6(i,l)*ch6a7(l,j)
 2302       continue
            do 2303 l=1,na7*2
               a(i+mx18,j+my17)
     &        =a(i+mx18,j+my17)+cevaa7(i,l)*ch7a6(l,j)
 2303       continue
 2301    continue
 2300 continue
      do 3200 j=1,n10*2
         do 3201 i=1,mrb
            do 3202 l=1,nb1*2
               a(i+mx18+mra,j     )
     &        =a(i+mx18+mra,j     )+cevbb1(i,l)*ch1b0(l,j)
 3202       continue
 3201    continue
 3200 continue
      do 3210 j=1,n13*2
         do 3211 i=1,mrb
            do 3212 l=1,nb1*2
               a(i+mx18+mra,j+my01)
     &        =a(i+mx18+mra,j+my01)-cevbb1(i,l)*cg1b3(l,j)
 3212       continue
            do 3213 l=1,nb3*2
               a(i+mx18+mra,j+my01)
     &        =a(i+mx18+mra,j+my01)+cevbb3(i,l)*cg3b1(l,j)
 3213       continue
 3211    continue
 3210 continue
      do 3220 j=1,n13*2
         do 3221 i=1,mrb
            do 3222 l=1,nb1*2
               a(i+mx18+mra,j+my02)
     &        =a(i+mx18+mra,j+my02)+cevbb1(i,l)*ch1b3(l,j)
 3222       continue
            do 3223 l=1,nb3*2
               a(i+mx18+mra,j+my02)
     &        =a(i+mx18+mra,j+my02)+cevbb3(i,l)*ch3b1(l,j)
 3223       continue
 3221    continue
 3220 continue
      do 3230 j=1,n32*2
         do 3231 i=1,mrb
            do 3232 l=1,nb3*2
               a(i+mx18+mra,j+my04)
     &        =a(i+mx18+mra,j+my04)+cevbb3(i,l)*cg3b2(l,j)
 3232       continue
 3231    continue
 3230 continue
      do 3240 j=1,n32*2
         do 3241 i=1,mrb
            do 3242 l=1,nb3*2
               a(i+mx18+mra,j+my05)
     &        =a(i+mx18+mra,j+my05)+cevbb3(i,l)*ch3b2(l,j)
 3242       continue
 3241    continue
 3240 continue
      do 3250 j=1,n30*2
         do 3251 i=1,mrb
            do 3252 l=1,nb3*2
               a(i+mx18+mra,j+my06)
     &        =a(i+mx18+mra,j+my06)+cevbb3(i,l)*ch3b0(l,j)
 3252       continue
 3251    continue
 3250 continue
      do 3260 j=1,n34*2
         do 3261 i=1,mrb
            do 3262 l=1,nb3*2
               a(i+mx18+mra,j+my07)
     &        =a(i+mx18+mra,j+my07)-cevbb3(i,l)*cg3b4(l,j)
 3262       continue
 3261    continue
 3260 continue
      do 3270 j=1,n34*2
         do 3271 i=1,mrb
            do 3272 l=1,nb3*2
               a(i+mx18+mra,j+my08)
     &        =a(i+mx18+mra,j+my08)+cevbb3(i,l)*ch3b4(l,j)
 3272       continue
 3271    continue
 3270 continue
      do 3280 j=1,n36*2
         do 3281 i=1,mrb
            do 3282 l=1,nb3*2
               a(i+mx18+mra,j+my09)
     &        =a(i+mx18+mra,j+my09)-cevbb3(i,l)*cg3b6(l,j)
 3282       continue
            do 3283 l=1,nb6*2
               a(i+mx18+mra,j+my09)
     &        =a(i+mx18+mra,j+my09)+cevbb6(i,l)*cg6b3(l,j)
 3283       continue
 3281    continue
 3280 continue
      do 3290 j=1,n36*2
         do 3291 i=1,mrb
            do 3292 l=1,nb3*2
               a(i+mx18+mra,j+my10)
     &        =a(i+mx18+mra,j+my10)+cevbb3(i,l)*ch3b6(l,j)
 3292       continue
            do 3293 l=1,nb6*2
               a(i+mx18+mra,j+my10)
     &        =a(i+mx18+mra,j+my10)+cevbb6(i,l)*ch6b3(l,j)
 3293       continue
 3291    continue
 3290 continue
      do 3300 j=1,n65*2
         do 3301 i=1,mrb
            do 3302 l=1,nb6*2
               a(i+mx18+mra,j+my14)
     &        =a(i+mx18+mra,j+my14)+cevbb6(i,l)*cg6b5(l,j)
 3302       continue
 3301    continue
 3300 continue
      do 3310 j=1,n65*2
         do 3311 i=1,mrb
            do 3312 l=1,nb6*2
               a(i+mx18+mra,j+my15)
     &        =a(i+mx18+mra,j+my15)+cevbb6(i,l)*ch6b5(l,j)
 3312       continue
 3311    continue
 3310 continue
      do 3320 j=1,n67*2
         do 3321 i=1,mrb
            do 3322 l=1,nb6*2
               a(i+mx18+mra,j+my16)
     &        =a(i+mx18+mra,j+my16)-cevbb6(i,l)*cg6b7(l,j)
 3322       continue
            do 3323 l=1,nb7*2
               a(i+mx18+mra,j+my16)
     &        =a(i+mx18+mra,j+my16)+cevbb7(i,l)*cg7b6(l,j)
 3323       continue
 3321    continue
 3320 continue
      do 3330 j=1,n67*2
         do 3331 i=1,mrb
            do 3332 l=1,nb6*2
               a(i+mx18+mra,j+my17)
     &        =a(i+mx18+mra,j+my17)+cevbb6(i,l)*ch6b7(l,j)
 3332       continue
            do 3333 l=1,nb7*2
               a(i+mx18+mra,j+my17)
     &        =a(i+mx18+mra,j+my17)+cevbb7(i,l)*ch7b6(l,j)
 3333       continue
 3331    continue
 3330 continue
      do 4300 j=1,mra
         do 4301 i=1,n40*2
            do 4302 l=1,na4*2
               a(i+mx09,j+my18)
     &        =a(i+mx09,j+my18)
     &        +cg40a(i,l)*ctvaa4(l,j)
     &        +ch40a(i,l)*cuvaa4(l,j)
 4302       continue
 4301    continue
         do 4311 i=1,n43*2
            do 4312 l=1,na4*2
               a(i+mx10,j+my18)
     &        =a(i+mx10,j+my18)
     &        +cg43a(i,l)*ctvaa4(l,j)
     &        +ch43a(i,l)*cuvaa4(l,j)
 4312       continue
 4311    continue
         do 4321 i=1,n45*2
            do 4322 l=1,na4*2
               a(i+mx11,j+my18)
     &        =a(i+mx11,j+my18)
     &        +cg45a(i,l)*ctvaa4(l,j)
     &        +ch45a(i,l)*cuvaa4(l,j)
 4322       continue
 4321    continue
         do 4331 i=1,n54*2
            do 4332 l=1,na5*2
               a(i+mx12,j+my18)
     &        =a(i+mx12,j+my18)
     &        +cg54a(i,l)*ctvaa5(l,j)
     &        +ch54a(i,l)*cuvaa5(l,j)
 4332       continue
 4331    continue
         do 4341 i=1,n56*2
            do 4342 l=1,na5*2
               a(i+mx13,j+my18)
     &        =a(i+mx13,j+my18)
     &        +cg56a(i,l)*ctvaa5(l,j)
     &        +ch56a(i,l)*cuvaa5(l,j)
 4342       continue
 4341    continue
         do 4351 i=1,n63*2
            do 4352 l=1,na6*2
               a(i+mx14,j+my18)
     &        =a(i+mx14,j+my18)
     &        +cg63a(i,l)*ctvaa6(l,j)
     &        +ch63a(i,l)*cuvaa6(l,j)
 4352       continue
 4351    continue
         do 4361 i=1,n65*2
            do 4362 l=1,na6*2
               a(i+mx15,j+my18)
     &        =a(i+mx15,j+my18)
     &        +cg65a(i,l)*ctvaa6(l,j)
     &        +ch65a(i,l)*cuvaa6(l,j)
 4362       continue
 4361    continue
         do 4371 i=1,n67*2
            do 4372 l=1,na6*2
               a(i+mx16,j+my18)
     &        =a(i+mx16,j+my18)
     &        +cg67a(i,l)*ctvaa6(l,j)
     &        +ch67a(i,l)*cuvaa6(l,j)
 4372       continue
 4371    continue
         do 4381 i=1,n76*2
            do 4382 l=1,na7*2
               a(i+mx17,j+my18)
     &        =a(i+mx17,j+my18)
     &        +cg76a(i,l)*ctvaa7(l,j)
     &        +ch76a(i,l)*cuvaa7(l,j)
 4382       continue
 4381    continue
 4300 continue
      do 5300 j=1,mrb
         do 5301 i=1,n10*2
            do 5302 l=1,nb1*2
               a(i     ,j+my18+mra)
     &        =a(i     ,j+my18+mra)
     &        +cg10b(i,l)*ctvbb1(l,j)
     &        +ch10b(i,l)*cuvbb1(l,j)
 5302       continue
 5301    continue
         do 5311 i=1,n13*2
            do 5312 l=1,nb1*2
               a(i+mx01,j+my18+mra)
     &        =a(i+mx01,j+my18+mra)
     &        +cg13b(i,l)*ctvbb1(l,j)
     &        +ch13b(i,l)*cuvbb1(l,j)
 5312       continue
 5311    continue
         do 5321 i=1,n30*2
            do 5322 l=1,nb3*2
               a(i+mx04,j+my18+mra)
     &        =a(i+mx04,j+my18+mra)
     &        +cg30b(i,l)*ctvbb3(l,j)
     &        +ch30b(i,l)*cuvbb3(l,j)
 5322       continue
 5321    continue
         do 5331 i=1,n31*2
            do 5332 l=1,nb3*2
               a(i+mx05,j+my18+mra)
     &        =a(i+mx05,j+my18+mra)
     &        +cg31b(i,l)*ctvbb3(l,j)
     &        +ch31b(i,l)*cuvbb3(l,j)
 5332       continue
 5331    continue
         do 5341 i=1,n32*2
            do 5342 l=1,nb3*2
               a(i+mx06,j+my18+mra)
     &        =a(i+mx06,j+my18+mra)
     &        +cg32b(i,l)*ctvbb3(l,j)
     &        +ch32b(i,l)*cuvbb3(l,j)
 5342       continue
 5341    continue
         do 5351 i=1,n34*2
            do 5352 l=1,nb3*2
               a(i+mx07,j+my18+mra)
     &        =a(i+mx07,j+my18+mra)
     &        +cg34b(i,l)*ctvbb3(l,j)
     &        +ch34b(i,l)*cuvbb3(l,j)
 5352       continue
 5351    continue
         do 5361 i=1,n36*2
            do 5362 l=1,nb3*2
               a(i+mx08,j+my18+mra)
     &        =a(i+mx08,j+my18+mra)
     &        +cg36b(i,l)*ctvbb3(l,j)
     &        +ch36b(i,l)*cuvbb3(l,j)
 5362       continue
 5361    continue
         do 5371 i=1,n63*2
            do 5372 l=1,nb6*2
               a(i+mx14,j+my18+mra)
     &        =a(i+mx14,j+my18+mra)
     &        +cg63b(i,l)*ctvbb6(l,j)
     &        +ch63b(i,l)*cuvbb6(l,j)
 5372       continue
 5371    continue
         do 5381 i=1,n65*2
            do 5382 l=1,nb6*2
               a(i+mx15,j+my18+mra)
     &        =a(i+mx15,j+my18+mra)
     &        +cg65b(i,l)*ctvbb6(l,j)
     &        +ch65b(i,l)*cuvbb6(l,j)
 5382       continue
 5381    continue
         do 5391 i=1,n67*2
            do 5392 l=1,nb6*2
               a(i+mx16,j+my18+mra)
     &        =a(i+mx16,j+my18+mra)
     &        +cg67b(i,l)*ctvbb6(l,j)
     &        +ch67b(i,l)*cuvbb6(l,j)
 5392       continue
 5391    continue
         do 5401 i=1,n76*2
            do 5402 l=1,nb7*2
               a(i+mx17,j+my18+mra)
     &        =a(i+mx17,j+my18+mra)
     &        +cg76b(i,l)*ctvbb7(l,j)
     &        +ch76b(i,l)*cuvbb7(l,j)
 5402       continue
 5401    continue
 5300 continue
      do 6500 j=1,mra
         do 6501 i=1,mra
            do 6502 lp=1,na4*2
               do 6503 lq=1,na4*2
                  a(i+mx18,j+my18)
     &           =a(i+mx18,j+my18)
     &           +cevaa4(i,lp)*cg4aa(lp,lq)*ctvaa4(lq,j)
     &           +cevaa4(i,lp)*ch4aa(lp,lq)*cuvaa4(lq,j)
 6503          continue
 6502       continue
            do 6512 lp=1,na5*2
               do 6513 lq=1,na5*2
                  a(i+mx18,j+my18)
     &           =a(i+mx18,j+my18)
     &           +cevaa5(i,lp)*cg5aa(lp,lq)*ctvaa5(lq,j)
     &           +cevaa5(i,lp)*ch5aa(lp,lq)*cuvaa5(lq,j)
 6513          continue
 6512       continue
            do 6522 lp=1,na6*2
               do 6523 lq=1,na6*2
                  a(i+mx18,j+my18)
     &           =a(i+mx18,j+my18)
     &           +cevaa6(i,lp)*cg6aa(lp,lq)*ctvaa6(lq,j)
     &           +cevaa6(i,lp)*ch6aa(lp,lq)*cuvaa6(lq,j)
 6523          continue
 6522       continue
            do 6532 lp=1,na7*2
               do 6533 lq=1,na7*2
                  a(i+mx18,j+my18)
     &           =a(i+mx18,j+my18)
     &           +cevaa7(i,lp)*cg7aa(lp,lq)*ctvaa7(lq,j)
     &           +cevaa7(i,lp)*ch7aa(lp,lq)*cuvaa7(lq,j)
 6533          continue
 6532       continue
 6501    continue
 6500 continue
      do 6600 j=1,mrb
         do 6601 i=1,mra
            do 6602 lp=1,na6*2
               do 6603 lq=1,nb6*2
                  a(i+mx18,j+my18+mra)
     &           =a(i+mx18,j+my18+mra)
     &           +cevaa6(i,lp)*cg6ab(lp,lq)*ctvbb6(lq,j)
     &           +cevaa6(i,lp)*ch6ab(lp,lq)*cuvbb6(lq,j)
 6603          continue
 6602       continue
            do 6612 lp=1,na7*2
               do 6613 lq=1,nb7*2
                  a(i+mx18,j+mx18+mra)
     &           =a(i+mx18,j+mx18+mra)
     &           +cevaa7(i,lp)*cg7ab(lp,lq)*ctvbb7(lq,j)
     &           +cevaa7(i,lp)*ch7ab(lp,lq)*cuvbb7(lq,j)
 6613          continue
 6612       continue
 6601    continue
 6600 continue
      do 6700 j=1,mra
         do 6701 i=1,mrb
            do 6702 lp=1,nb6*2
               do 6703 lq=1,na6*2
                  a(i+mx18+mra,j+my18)
     &           =a(i+mx18+mra,j+my18)
     &           +cevbb6(i,lp)*cg6ba(lp,lq)*ctvaa6(lq,j)
     &           +cevbb6(i,lp)*ch6ba(lp,lq)*cuvaa6(lq,j)
 6703          continue
 6702       continue
            do 6712 lp=1,nb7*2
               do 6713 lq=1,na7*2
                  a(i+mx18+mra,j+my18)
     &           =a(i+mx18+mra,j+my18)
     &           +cevbb7(i,lp)*cg7ba(lp,lq)*ctvaa7(lq,j)
     &           +cevbb7(i,lp)*ch7ba(lp,lq)*cuvaa7(lq,j)
 6713          continue
 6712       continue
 6701    continue
 6700 continue
      do 6800 j=1,mrb
         do 6801 i=1,mrb
            do 6802 lp=1,nb1*2
               do 6803 lq=1,nb1*2
                  a(i+mx18+mra,j+my18+mra)
     &           =a(i+mx18+mra,j+my18+mra)
     &           +cevbb1(i,lp)*cg1bb(lp,lq)*ctvbb1(lq,j)
     &           +cevbb1(i,lp)*ch1bb(lp,lq)*cuvbb1(lq,j)
 6803          continue
 6802       continue
            do 6812 lp=1,nb3*2
               do 6813 lq=1,nb3*2
                  a(i+mx18+mra,j+my18+mra)
     &           =a(i+mx18+mra,j+my18+mra)
     &           +cevbb3(i,lp)*cg3bb(lp,lq)*ctvbb3(lq,j)
     &           +cevbb3(i,lp)*ch3bb(lp,lq)*cuvbb3(lq,j)
 6813          continue
 6812       continue
            do 6822 lp=1,nb6*2
               do 6823 lq=1,nb6*2
                  a(i+mx18+mra,j+my18+mra)
     &           =a(i+mx18+mra,j+my18+mra)
     &           +cevbb6(i,lp)*cg6bb(lp,lq)*ctvbb6(lq,j)
     &           +cevbb6(i,lp)*ch6bb(lp,lq)*cuvbb6(lq,j)
 6823          continue
 6822       continue
            do 6832 lp=1,nb7*2
               do 6833 lq=1,nb7*2
                  a(i+mx18+mra,j+my18+mra)
     &           =a(i+mx18+mra,j+my18+mra)
     &           +cevbb7(i,lp)*cg7bb(lp,lq)*ctvbb7(lq,j)
     &           +cevbb7(i,lp)*ch7bb(lp,lq)*cuvbb7(lq,j)
 6833          continue
 6832       continue
 6801    continue
 6800 continue
      do 7000 i=1,nlab
         ay(i)=(0.0d0,0.0d0)
 7000 continue
      do 7010 i=1,n10*2
         do 7020 j=1,nb1*2
            do 7030 l=1,mrb
               ay(i     )=ay(i     )+cg10b(i,j)*ctvba1(j,l)*cbin(l)
     &                              -ch10b(i,j)*cuvba1(j,l)*cbin(l)
 7030       continue
 7020    continue
 7010 continue
      do 7015 i=1,n13*2
         do 7025 j=1,nb1*2
            do 7035 l=1,mrb
               ay(i+mx01)=ay(i+mx01)+cg13b(i,j)*ctvba1(j,l)*cbin(l)
     &                              -ch13b(i,j)*cuvba1(j,l)*cbin(l)
 7035       continue
 7025    continue
 7015 continue
      do 7110 i=1,n30*2
         do 7120 j=1,nb3*2
            do 7130 l=1,mrb
               ay(i+mx04)=ay(i+mx04)+cg30b(i,j)*ctvba3(j,l)*cbin(l)
     &                              -ch30b(i,j)*cuvba3(j,l)*cbin(l)
 7130       continue
 7120    continue
 7110 continue
      do 7111 i=1,n31*2
         do 7121 j=1,nb3*2
            do 7131 l=1,mrb
               ay(i+mx05)=ay(i+mx05)+cg31b(i,j)*ctvba3(j,l)*cbin(l)
     &                              -ch31b(i,j)*cuvba3(j,l)*cbin(l)
 7131       continue
 7121    continue
 7111 continue
      do 7112 i=1,n32*2
         do 7122 j=1,nb3*2
            do 7132 l=1,mrb
               ay(i+mx06)=ay(i+mx06)+cg32b(i,j)*ctvba3(j,l)*cbin(l)
     &                              -ch32b(i,j)*cuvba3(j,l)*cbin(l)
 7132       continue
 7122    continue
 7112 continue
      do 7114 i=1,n34*2
         do 7124 j=1,nb3*2
            do 7134 l=1,mrb
               ay(i+mx07)=ay(i+mx07)+cg34b(i,j)*ctvba3(j,l)*cbin(l)
     &                              -ch34b(i,j)*cuvba3(j,l)*cbin(l)
 7134       continue
 7124    continue
 7114 continue
      do 7116 i=1,n36*2
         do 7126 j=1,nb3*2
            do 7136 l=1,mrb
               ay(i+mx08)=ay(i+mx08)+cg36b(i,j)*ctvba3(j,l)*cbin(l)
     &                              -ch36b(i,j)*cuvba3(j,l)*cbin(l)
 7136       continue
 7126    continue
 7116 continue
      do 7210 i=1,n63*2
         do 7220 j=1,nb6*2
            do 7230 l=1,mrb
               ay(i+mx14)=ay(i+mx14)+cg63b(i,j)*ctvba6(j,l)*cbin(l)
     &                              -ch63b(i,j)*cuvba6(j,l)*cbin(l)
 7230       continue
 7220    continue
 7210 continue
      do 7215 i=1,n65*2
         do 7225 j=1,nb6*2
            do 7235 l=1,mrb
               ay(i+mx15)=ay(i+mx15)+cg65b(i,j)*ctvba6(j,l)*cbin(l)
     &                              -ch65b(i,j)*cuvba6(j,l)*cbin(l)
 7235       continue
 7225    continue
 7215 continue
      do 7217 i=1,n67*2
         do 7227 j=1,nb6*2
            do 7237 l=1,mrb
               ay(i+mx16)=ay(i+mx16)+cg67b(i,j)*ctvba6(j,l)*cbin(l)
     &                              -ch67b(i,j)*cuvba6(j,l)*cbin(l)
 7237       continue
 7227    continue
 7217 continue
      do 7310 i=1,n76*2
         do 7320 j=1,nb7*2
            do 7330 l=1,mrb
               ay(i+mx17)=ay(i+mx17)+cg76b(i,j)*ctvba7(j,l)*cbin(l)
     &                              -ch76b(i,j)*cuvba7(j,l)*cbin(l)
 7330       continue
 7320    continue
 7310 continue
      do 8000 i=1,mra
         do 8210 lp=1,na6*2
            do 8220 lq=1,nb6*2
               do 8230 j=1,mrb
                  ay(i+mx18)
     &           =ay(i+mx18)
     &           +cevaa6(i,lp)*cg6ab(lp,lq)*ctvba6(lq,j)*cbin(j)
     &           -cevaa6(i,lp)*ch6ab(lp,lq)*cuvba6(lq,j)*cbin(j)
 8230          continue
 8220       continue
 8210    continue
         do 8310 lp=1,na7*2
            do 8320 lq=1,nb7*2
               do 8330 j=1,mrb
                  ay(i+mx18)
     &           =ay(i+mx18)
     &           +cevaa7(i,lp)*cg7ab(lp,lq)*ctvba7(lq,j)*cbin(j)
     &           -cevaa7(i,lp)*ch7ab(lp,lq)*cuvba7(lq,j)*cbin(j)
 8330          continue
 8320       continue
 8310    continue
 8000 continue
      do 8500 i=1,mrb
         do 8510 lp=1,nb1*2
            do 8520 lq=1,nb1*2
               do 8530 j=1,mrb
                  ay(i+mx18+mra)
     &           =ay(i+mx18+mra)
     &           +cevbb1(i,lp)*cg1bb(lp,lq)*ctvba1(lq,j)*cbin(j)
     &           -cevbb1(i,lp)*ch1bb(lp,lq)*cuvba1(lq,j)*cbin(j)
 8530          continue
 8520       continue
 8510    continue
         do 8610 lp=1,nb3*2
            do 8620 lq=1,nb3*2
               do 8630 j=1,mrb
                  ay(i+mx18+mra)
     &           =ay(i+mx18+mra)
     &           +cevbb3(i,lp)*cg3bb(lp,lq)*ctvba3(lq,j)*cbin(j)
     &           -cevbb3(i,lp)*ch3bb(lp,lq)*cuvba3(lq,j)*cbin(j)
 8630          continue
 8620       continue
 8610    continue
         do 8710 lp=1,nb6*2
            do 8720 lq=1,nb6*2
               do 8730 j=1,mrb
                  ay(i+mx18+mra)
     &           =ay(i+mx18+mra)
     &           +cevbb6(i,lp)*cg6bb(lp,lq)*ctvba6(lq,j)*cbin(j)
     &           -cevbb6(i,lp)*ch6bb(lp,lq)*cuvba6(lq,j)*cbin(j)
 8730          continue
 8720       continue
 8710    continue
         do 8810 lp=1,nb7*2
            do 8820 lq=1,nb7*2
               do 8830 j=1,mrb
                  ay(i+mx18+mra)
     &           =ay(i+mx18+mra)
     &           +cevbb7(i,lp)*cg7bb(lp,lq)*ctvba7(lq,j)*cbin(j)
     &           -cevbb7(i,lp)*ch7bb(lp,lq)*cuvba7(lq,j)*cbin(j)
 8830          continue
 8820       continue
 8810    continue
 8500 continue
      write(6,*) 444
      do 9999 i=1,nlab
         a(i,nlab+1)=ay(i)
 9999 continue
      n=nlab
      n1=n+1
      do 9010 k=1,n
         k1=k+1
         xpmax=abs(a(k,k))
         ir=k
         if (k.ne.n) then
            do 9020 i=k1,n
               xaa=abs(a(i,k))
               if (xaa.ge.xpmax) then
                  xpmax=xaa
                  ir=i
               end if
 9020       continue
         end if
         if (ir.ne.k) then
            do 9030 j=k,n1
               ca=a(k,j)
               a(k,j)=a(ir,j)
               a(ir,j)=ca
 9030       continue
         end if
         ca=a(k,k)
         do 9040 j=k,n1
            a(k,j)=a(k,j)/ca
 9040    continue
         if (k.ne.n) then
            do 9050 i=k1,n
               ai=a(i,k)
               do 9060 j=k1,n1
                  a(i,j)=a(i,j)-ai*a(k,j)
 9060          continue
 9050       continue
         end if
 9010 continue
      if (n.ne.1) then
         n2=n-1
         do 9080 k=1,n2
            kk=n-k
            cs=a(kk,n1)
            k1=kk+1
            do 9070 j=k1,n
               cs=cs-a(kk,j)*a(j,n1)
 9070       continue
            a(kk,n1)=cs
 9080    continue
      end if
      do 9090 i=1,n
         ax(i)=a(i,n1)
 9090 continue
      write(6,*) 555
      do 9000 i=1,nl
         cuwk(i)=ax(i)
 9000 continue
      return
      end
      subroutine ntpfa(cevaa1,cevab1,cuvaa1,cuvab1,ctvaa1,ctvab1
     &                ,cevaa2,cevab2,cuvaa2,cuvab2,ctvaa2,ctvab2
     &                ,cevaa3,cevab3,cuvaa3,cuvab3,ctvaa3,ctvab3
     &                ,cevaa4,cevab4,cuvaa4,cuvab4,ctvaa4,ctvab4
     &                ,cw,mra,cain)
      implicit complex*16 (a-c)
      implicit real*8 (d-h,k,o-z)
      parameter (pi=3.14159265358979323d0,ci=(0.0d0,1.0d0))
      parameter (ne=100,me=101,nfv=202)
      parameter (na1=4,na2=4,na3=4,na4=88)
      parameter (dx=-2.0d0,dxs=0.7d0)
      INTEGER*4 IX1,IX2
      PARAMETER (IX1=0,IX2=1,NB=100)
      REAL*8 DA1(NB),DA2(NB)
      real*8 h(ne),pb(ne)
      real*8 drvma(nfv,nfv),drvmb(nfv,nfv),zr(nfv,nfv)
      real*8 divma(nfv,nfv),divmb(nfv,nfv),zi(nfv,nfv)
      real*8 dalfr(nfv),dalfi(nfv),dbeta(nfv)
      complex*16 cpm(ne),cpl(ne),cva(ne),cvb(ne)
      complex*16 cv(ne,4,4),csv(ne,4,4),cjv(ne,4)
      complex*16 csumv(nfv),csvv(ne,4,4),cfvv(nfv,nfv)
      complex*16 cvma(nfv,nfv),cvmb(nfv,nfv),ckv(nfv)
      complex*16 cr1(me,nfv),cr2(me,nfv)
      complex*16 cevl(nfv)
      complex*16 cevaa1(nfv,na1*2),cuvaa1(na1*2,nfv),ctvaa1(na1*2,nfv)
      complex*16 cevaa2(nfv,na2*2),cuvaa2(na2*2,nfv),ctvaa2(na2*2,nfv)
      complex*16 cevaa3(nfv,na3*2),cuvaa3(na3*2,nfv),ctvaa3(na3*2,nfv)
      complex*16 cevaa4(nfv,na4*2),cuvaa4(na4*2,nfv),ctvaa4(na4*2,nfv)
      complex*16 cevab1(nfv,na1*2),cuvab1(na1*2,nfv),ctvab1(na1*2,nfv)
      complex*16 cevab2(nfv,na2*2),cuvab2(na2*2,nfv),ctvab2(na2*2,nfv)
      complex*16 cevab3(nfv,na3*2),cuvab3(na3*2,nfv),ctvab3(na3*2,nfv)
      complex*16 cevab4(nfv,na4*2),cuvab4(na4*2,nfv),ctvab4(na4*2,nfv)
      complex*16 cain(nfv)
      complex*16 chvaa1(nfv,na1*2),chvab1(nfv,na1*2)
      complex*16 chvaa2(nfv,na2*2),chvab2(nfv,na2*2)
      complex*16 chvaa3(nfv,na3*2),chvab3(nfv,na3*2)
      complex*16 chvaa4(nfv,na4*2),chvab4(nfv,na4*2)
      call tlpa(ne,h,cpm,cpl,cva,cvb,pb)
      call mat(ne,nfv,cw,h,cpm,cpl,cva,cvb,pb,cvma,cvmb)
      do 100 j=1,nfv
         do 110 i=1,nfv
            drvma(i,j)=real(cvma(i,j))
            divma(i,j)=imag(cvma(i,j))
            drvmb(i,j)=real(cvmb(i,j))
            divmb(i,j)=imag(cvmb(i,j))
  110    continue
  100 continue
      eps1=1.0d-24
      call cqzhes(nfv,nfv,drvma,divma,drvmb,divmb,.true.,zr,zi,eps1)
      write(6,*) 12345
      call cqzval(nfv,nfv,drvma,divma,drvmb,divmb,eps1,dalfr,dalfi
     &           ,dbeta,.true.,zr,zi,ierr)
      write(6,*) 98765
      call cqzvec(nfv,nfv,drvma,divma,drvmb,divmb,dalfr,dalfi,dbeta
     &           ,zr,zi)
      write(6,*) 77777
      do 200 j=1,nfv
         if (abs(dbeta(j)).lt.1.0d-8) then
             cevl(j)=-ci*1.0d6
         else 
             cevl(j)=sqrt((dalfr(j)+ci*dalfi(j))/dbeta(j))
             if (imag(cevl(j)).gt.1.0d0) then
                 cevl(j)=-ci*1.0d6
             end if
             if (abs(imag(cevl(j))).gt.abs(real(cevl(j)))) then
                 if (imag(cevl(j)).gt.0.0d0) then
                     cevl(j)=-cevl(j)
                 end if
             end if
         end if
  200 continue
      mra=0
      do 400 j=1,nfv
         if (abs(exp(ci*cevl(j)*dx)).gt.1.0d-2) then
             mra=mra+1
             ckv(mra)=cevl(j)
             do 410 i=1,me
                cr1(i,mra)= zr(i*2-1,j)+ci*zi(i*2-1,j)
                cr2(i,mra)=(zr(i*2  ,j)+ci*zi(i*2  ,j))/cevl(j)
  410        continue
         end if
  400 continue
      do 600 j=1,mra
         csumv(j)=0.0d0
         do 610 i=1,ne
            cv(i,1,1)=2.0d0*ckv(j)*h(i)*(2.0d0*cpm(i)+cpl(i))/3.0d0
            cv(i,3,1)=2.0d0*ckv(j)*h(i)*(2.0d0*cpm(i)+cpl(i))/6.0d0
            cv(i,2,2)=2.0d0*ckv(j)*h(i)       *cpm(i)        /3.0d0
            cv(i,4,2)=2.0d0*ckv(j)*h(i)       *cpm(i)        /6.0d0
            cv(i,1,3)=2.0d0*ckv(j)*h(i)*(2.0d0*cpm(i)+cpl(i))/6.0d0
            cv(i,3,3)=2.0d0*ckv(j)*h(i)*(2.0d0*cpm(i)+cpl(i))/3.0d0
            cv(i,2,4)=2.0d0*ckv(j)*h(i)       *cpm(i)        /6.0d0
            cv(i,4,4)=2.0d0*ckv(j)*h(i)       *cpm(i)        /3.0d0
            cv(i,2,1)= (cpm(i)-cpl(i))/2.0d0
            cv(i,4,1)= (cpm(i)+cpl(i))/2.0d0
            cv(i,1,2)= (cpm(i)-cpl(i))/2.0d0
            cv(i,3,2)=-(cpm(i)+cpl(i))/2.0d0
            cv(i,2,3)=-(cpm(i)+cpl(i))/2.0d0
            cv(i,4,3)=-(cpm(i)-cpl(i))/2.0d0
            cv(i,1,4)= (cpm(i)+cpl(i))/2.0d0
            cv(i,3,4)=-(cpm(i)-cpl(i))/2.0d0
  610    continue 
         do 620 i=1,ne
            csumv(j)=csumv(j)
     &              +cr1(i  ,j)*cv(i,1,1)*cr1(i  ,j)*0.5d0
     &              +cr1(i  ,j)*cv(i,1,2)*cr2(i  ,j)*0.5d0
     &              +cr1(i  ,j)*cv(i,1,3)*cr1(i+1,j)*0.5d0
     &              +cr1(i  ,j)*cv(i,1,4)*cr2(i+1,j)*0.5d0
     &              +cr2(i  ,j)*cv(i,2,1)*cr1(i  ,j)*0.5d0
     &              +cr2(i  ,j)*cv(i,2,2)*cr2(i  ,j)*0.5d0
     &              +cr2(i  ,j)*cv(i,2,3)*cr1(i+1,j)*0.5d0
     &              +cr2(i  ,j)*cv(i,2,4)*cr2(i+1,j)*0.5d0
     &              +cr1(i+1,j)*cv(i,3,1)*cr1(i  ,j)*0.5d0
     &              +cr1(i+1,j)*cv(i,3,2)*cr2(i  ,j)*0.5d0
     &              +cr1(i+1,j)*cv(i,3,3)*cr1(i+1,j)*0.5d0
     &              +cr1(i+1,j)*cv(i,3,4)*cr2(i+1,j)*0.5d0
     &              +cr2(i+1,j)*cv(i,4,1)*cr1(i  ,j)*0.5d0
     &              +cr2(i+1,j)*cv(i,4,2)*cr2(i  ,j)*0.5d0
     &              +cr2(i+1,j)*cv(i,4,3)*cr1(i+1,j)*0.5d0
     &              +cr2(i+1,j)*cv(i,4,4)*cr2(i+1,j)*0.5d0
  620    continue
  600 continue
      do 630 j=1,mra
         do 640 i=1,me
            cr1(i,j)=cr1(i,j)/sqrt(csumv(j))
            cr2(i,j)=cr2(i,j)/sqrt(csumv(j))
  640    continue
  630 continue
      do 800 j=1,mra
         do 810 i=1,na1
            cuvaa1(i    ,j)=    (cr1(i,j)+cr1(i+1,j))*0.5d0
            cuvaa1(i+na1,j)= ci*(cr2(i,j)+cr2(i+1,j))*0.5d0
            ctvaa1(i    ,j)= ci*(cpl(i)+2.0d0*cpm(i))*ckv(j)
     &                       *(cr1(i,j)+cr1(i+1,j))*0.5d0
     &                      +ci*cpl(i)*(cr2(i+1,j)-cr2(i,j))/h(i)
            ctvaa1(i+na1,j)= cpm(i)*((cr1(i+1,j)-cr1(i,j))/h(i)
     &                           -ckv(j)*(cr2(i,j)+cr2(i+1,j))*0.5d0)
            cuvab1(i    ,j)=    (cr1(i,j)+cr1(i+1,j))*0.5d0
            cuvab1(i+na1,j)=-ci*(cr2(i,j)+cr2(i+1,j))*0.5d0
            ctvab1(i    ,j)= ci*(cpl(i)+2.0d0*cpm(i))*ckv(j)
     &                         *(cr1(i,j)+cr1(i+1,j))*0.5d0
     &                      +ci*cpl(i)*(cr2(i+1,j)-cr2(i,j))/h(i)
            ctvab1(i+na1,j)=-cpm(i)*((cr1(i+1,j)-cr1(i,j))/h(i)
     &                             -ckv(j)*(cr2(i,j)+cr2(i+1,j))*0.5d0)
  810    continue
         do 820 i=1,na2
            cuvaa2(i    ,j)=    (cr1(i+na1,j)+cr1(i+na1+1,j))*0.5d0
            cuvaa2(i+na2,j)= ci*(cr2(i+na1,j)+cr2(i+na1+1,j))*0.5d0
            ctvaa2(i    ,j)= ci*(cpl(i+na1)+2.0d0*cpm(i+na1))*ckv(j)
     &                       *(cr1(i+na1,j)+cr1(i+na1+1,j))*0.5d0
     &                      +ci*cpl(i+na1)*(cr2(i+na1+1,j)
     &                                    -cr2(i+na1,j))/h(i+na1)
            ctvaa2(i+na2,j)= cpm(i+na1)*((cr1(i+na1+1,j)
     &                                  -cr1(i+na1,j))/h(i+na1)
     &                                 -ckv(j)*(cr2(i+na1,j)
     &                                         +cr2(i+na1+1,j))*0.5d0)
            cuvab2(i    ,j)=    (cr1(i+na1,j)+cr1(i+na1+1,j))*0.5d0
            cuvab2(i+na2,j)=-ci*(cr2(i+na1,j)+cr2(i+na1+1,j))*0.5d0
            ctvab2(i    ,j)= ci*(cpl(i+na1)+2.0d0*cpm(i+na1))*ckv(j)
     &                         *(cr1(i+na1,j)+cr1(i+na1+1,j))*0.5d0
     &                      +ci*cpl(i+na1)*(cr2(i+na1+1,j)
     &                                    -cr2(i+na1,j))/h(i+na1)
            ctvab2(i+na2,j)=-cpm(i+na1)*((cr1(i+na1+1,j)
     &                                  -cr1(i+na1,j))/h(i+na1)
     &                                 -ckv(j)*(cr2(i+na1,j)
     &                                         +cr2(i+na1+1,j))*0.5d0)
  820    continue
         do 830 i=1,na3
            cuvaa3(i    ,j)=    (cr1(i+na1+na2,j)
     &                          +cr1(i+na1+na2+1,j))*0.5d0
            cuvaa3(i+na3,j)= ci*(cr2(i+na1+na2,j)
     &                          +cr2(i+na1+na2+1,j))*0.5d0
            ctvaa3(i    ,j)= ci*(cpl(i+na1+na2)
     &                          +2.0d0*cpm(i+na1+na2))*ckv(j)
     &                         *(cr1(i+na1+na2,j)
     &                          +cr1(i+na1+na2+1,j))*0.5d0
     &                      +ci*cpl(i+na1+na2)
     &                         *(cr2(i+na1+na2+1,j)
     &                          -cr2(i+na1+na2,j))/h(i+na1+na2)
            ctvaa3(i+na3,j)= cpm(i+na1+na2)
     &                         *((cr1(i+na1+na2+1,j)
     &                           -cr1(i+na1+na2,j))/h(i+na1+na2)
     &                          -ckv(j)*(cr2(i+na1+na2,j)
     &                                  +cr2(i+na1+na2+1,j))*0.5d0)
            cuvab3(i    ,j)=    (cr1(i+na1+na2,j)
     &                          +cr1(i+na1+na2+1,j))*0.5d0
            cuvab3(i+na3,j)=-ci*(cr2(i+na1+na2,j)
     &                          +cr2(i+na1+na2+1,j))*0.5d0
            ctvab3(i    ,j)= ci*(cpl(i+na1+na2)
     &                          +2.0d0*cpm(i+na1+na2))*ckv(j)
     &                         *(cr1(i+na1+na2,j)
     &                          +cr1(i+na1+na2+1,j))*0.5d0
     &                      +ci*cpl(i+na1+na2)
     &                         *(cr2(i+na1+na2+1,j)
     &                          -cr2(i+na1+na2,j))/h(i+na1+na2)
            ctvab3(i+na3,j)=-cpm(i+na1+na2)
     &                         *((cr1(i+na1+na2+1,j)
     &                           -cr1(i+na1+na2,j))/h(i+na1+na2)
     &                          -ckv(j)*(cr2(i+na1+na2,j)
     &                                  +cr2(i+na1+na2+1,j))*0.5d0)
  830    continue
         do 840 i=1,na4
            cuvaa4(i    ,j)=    (cr1(i+na1+na2+na3,j)
     &                          +cr1(i+na1+na2+na3+1,j))*0.5d0
            cuvaa4(i+na4,j)= ci*(cr2(i+na1+na2+na3,j)
     &                          +cr2(i+na1+na2+na3+1,j))*0.5d0
            ctvaa4(i    ,j)= ci*(cpl(i+na1+na2+na3)
     &                          +2.0d0*cpm(i+na1+na2+na3))*ckv(j)
     &                         *(cr1(i+na1+na2+na3,j)
     &                          +cr1(i+na1+na2+na3+1,j))*0.5d0
     &                      +ci*cpl(i+na1+na2+na3)
     &                         *(cr2(i+na1+na2+na3+1,j)
     &                          -cr2(i+na1+na2+na3,j))/h(i+na1+na2+na3)
            ctvaa4(i+na4,j)= cpm(i+na1+na2+na3)
     &                         *((cr1(i+na1+na2+na3+1,j)
     &                           -cr1(i+na1+na2+na3,j))
     &                         /h(i+na1+na2+na3)
     &                          -ckv(j)*(cr2(i+na1+na2+na3,j)
     &                                  +cr2(i+na1+na2+na3+1,j))*0.5d0)
            cuvab4(i    ,j)=    (cr1(i+na1+na2+na3,j)
     &                          +cr1(i+na1+na2+na3+1,j))*0.5d0
            cuvab4(i+na4,j)=-ci*(cr2(i+na1+na2+na3,j)
     &                          +cr2(i+na1+na2+na3+1,j))*0.5d0
            ctvab4(i    ,j)= ci*(cpl(i+na1+na2+na3)
     &                          +2.0d0*cpm(i+na1+na2+na3))*ckv(j)
     &                         *(cr1(i+na1+na2+na3,j)
     &                          +cr1(i+na1+na2+na3+1,j))*0.5d0
     &                      +ci*cpl(i+na1+na2+na3)
     &                         *(cr2(i+na1+na2+na3+1,j)
     &                          -cr2(i+na1+na2+na3,j))/h(i+na1+na2+na3)
            ctvab4(i+na4,j)=-cpm(i+na1+na2+na3)
     &                         *((cr1(i+na1+na2+na3+1,j)
     &                           -cr1(i+na1+na2+na3,j))
     &                         /h(i+na1+na2+na3)
     &                          -ckv(j)*(cr2(i+na1+na2+na3,j)
     &                                  +cr2(i+na1+na2+na3+1,j))*0.5d0)
  840    continue
  800 continue
      do 1000 l=1,mra
         do 1100 j=1,mra
            do 1200 i=1,ne
               csvv(i,1,1)=h(i)*(2.0d0*cpm(i)+cpl(i))*ckv(j)/3.0d0
               csvv(i,3,1)=h(i)*(2.0d0*cpm(i)+cpl(i))*ckv(j)/6.0d0
               csvv(i,1,3)=h(i)*(2.0d0*cpm(i)+cpl(i))*ckv(j)/6.0d0
               csvv(i,3,3)=h(i)*(2.0d0*cpm(i)+cpl(i))*ckv(j)/3.0d0
               csvv(i,2,2)=h(i)*cpm(i)*ckv(j)/3.0d0
               csvv(i,4,2)=h(i)*cpm(i)*ckv(j)/6.0d0
               csvv(i,2,4)=h(i)*cpm(i)*ckv(j)/6.0d0
               csvv(i,4,4)=h(i)*cpm(i)*ckv(j)/3.0d0
               csvv(i,2,1)= cpm(i)/2.0d0
               csvv(i,4,1)= cpm(i)/2.0d0
               csvv(i,2,3)=-cpm(i)/2.0d0
               csvv(i,4,3)=-cpm(i)/2.0d0
               csvv(i,1,2)=-cpl(i)/2.0d0
               csvv(i,3,2)=-cpl(i)/2.0d0
               csvv(i,1,4)= cpl(i)/2.0d0
               csvv(i,3,4)= cpl(i)/2.0d0
 1200       continue 
            cfvv(l,j)=0.0d0
            do 1300 i=1,ne
               cfvv(l,j)
     &        =cfvv(l,j)
     &        +cr1(i  ,l)*csvv(i,1,1)*cr1(i  ,j)*ci
     &        +cr1(i  ,l)*csvv(i,1,2)*cr2(i  ,j)*ci
     &        +cr1(i  ,l)*csvv(i,1,3)*cr1(i+1,j)*ci
     &        +cr1(i  ,l)*csvv(i,1,4)*cr2(i+1,j)*ci
     &        +cr2(i  ,l)*csvv(i,2,1)*cr1(i  ,j)*ci
     &        +cr2(i  ,l)*csvv(i,2,2)*cr2(i  ,j)*ci
     &        +cr2(i  ,l)*csvv(i,2,3)*cr1(i+1,j)*ci
     &        +cr2(i  ,l)*csvv(i,2,4)*cr2(i+1,j)*ci
     &        +cr1(i+1,l)*csvv(i,3,1)*cr1(i  ,j)*ci
     &        +cr1(i+1,l)*csvv(i,3,2)*cr2(i  ,j)*ci
     &        +cr1(i+1,l)*csvv(i,3,3)*cr1(i+1,j)*ci
     &        +cr1(i+1,l)*csvv(i,3,4)*cr2(i+1,j)*ci
     &        +cr2(i+1,l)*csvv(i,4,1)*cr1(i  ,j)*ci
     &        +cr2(i+1,l)*csvv(i,4,2)*cr2(i  ,j)*ci
     &        +cr2(i+1,l)*csvv(i,4,3)*cr1(i+1,j)*ci
     &        +cr2(i+1,l)*csvv(i,4,4)*cr2(i+1,j)*ci
 1300       continue
 1100    continue
         cfvv(l,l)=-ci
 1000 continue
      write(6,*) 76767
      call invmt(nfv,mra,cfvv)
      do 6000 j=1,mra
         do 6100 i=1,ne
            csv(i,1,1)=-ci*h(i)*(2.0d0*cpm(i)+cpl(i))*ckv(j)/2.0d0
            csv(i,3,1)=-ci*h(i)*(2.0d0*cpm(i)+cpl(i))*ckv(j)/2.0d0
            csv(i,2,1)= ci*cpl(i)
            csv(i,4,1)=-ci*cpl(i)
            csv(i,1,2)=-cpm(i)
            csv(i,3,2)= cpm(i)
            csv(i,2,2)=-h(i)*cpm(i)*ckv(j)/2.0d0
            csv(i,4,2)=-h(i)*cpm(i)*ckv(j)/2.0d0
 6100    continue 
         do 6200 i=1,ne
            cjv(i,1)=csv(i,1,1)*cr1(i  ,j)
     &              +csv(i,2,1)*cr2(i  ,j)
     &              +csv(i,3,1)*cr1(i+1,j)
     &              +csv(i,4,1)*cr2(i+1,j)

            cjv(i,2)=csv(i,1,2)*cr1(i  ,j)
     &              +csv(i,2,2)*cr2(i  ,j)
     &              +csv(i,3,2)*cr1(i+1,j)
     &              +csv(i,4,2)*cr2(i+1,j)
 6200    continue
         do 6210 i=1,na1
            chvaa1(j,i    )= cjv(i,1)
            chvaa1(j,i+na1)= cjv(i,2)
            chvab1(j,i    )= cjv(i,1)
            chvab1(j,i+na1)=-cjv(i,2)
 6210    continue
         do 6220 i=1,na2
            chvaa2(j,i    )= cjv(i+na1,1)
            chvaa2(j,i+na2)= cjv(i+na1,2)
            chvab2(j,i    )= cjv(i+na1,1)
            chvab2(j,i+na2)=-cjv(i+na1,2)
 6220    continue
         do 6230 i=1,na3
            chvaa3(j,i    )= cjv(i+na1+na2,1)
            chvaa3(j,i+na3)= cjv(i+na1+na2,2)
            chvab3(j,i    )= cjv(i+na1+na2,1)
            chvab3(j,i+na3)=-cjv(i+na1+na2,2)
 6230    continue
         do 6240 i=1,na4
            chvaa4(j,i    )= cjv(i+na1+na2+na3,1)
            chvaa4(j,i+na4)= cjv(i+na1+na2+na3,2)
            chvab4(j,i    )= cjv(i+na1+na2+na3,1)
            chvab4(j,i+na4)=-cjv(i+na1+na2+na3,2)
 6240    continue
 6000 continue
      do 7000 i=1,mra
         do 7110 j=1,na1*2
            cevaa1(i,j)=(0.0d0,0.0d0)
            cevab1(i,j)=(0.0d0,0.0d0)
            do 7210 l=1,mra
               cevaa1(i,j)=cevaa1(i,j)+cfvv(i,l)*chvaa1(l,j)
               cevab1(i,j)=cevab1(i,j)+cfvv(i,l)*chvab1(l,j)
 7210       continue
 7110    continue
         do 7120 j=1,na2*2
            cevaa2(i,j)=(0.0d0,0.0d0)
            cevab2(i,j)=(0.0d0,0.0d0)
            do 7220 l=1,mra
               cevaa2(i,j)=cevaa2(i,j)+cfvv(i,l)*chvaa2(l,j)
               cevab2(i,j)=cevab2(i,j)+cfvv(i,l)*chvab2(l,j)
 7220       continue
 7120    continue
         do 7130 j=1,na3*2
            cevaa3(i,j)=(0.0d0,0.0d0)
            cevab3(i,j)=(0.0d0,0.0d0)
            do 7230 l=1,mra
               cevaa3(i,j)=cevaa3(i,j)+cfvv(i,l)*chvaa3(l,j)
               cevab3(i,j)=cevab3(i,j)+cfvv(i,l)*chvab3(l,j)
 7230       continue
 7130    continue
         do 7140 j=1,na4*2
            cevaa4(i,j)=(0.0d0,0.0d0)
            cevab4(i,j)=(0.0d0,0.0d0)
            do 7240 l=1,mra
               cevaa4(i,j)=cevaa4(i,j)+cfvv(i,l)*chvaa4(l,j)
               cevab4(i,j)=cevab4(i,j)+cfvv(i,l)*chvab4(l,j)
 7240       continue
 7140    continue
 7000 continue
      do 8000 i=1,mra
         cain(i)=0.25d0*cr2(1,i)*exp(-ci*ckv(i)*dxs)
 8000 continue
      do 8100 i=mra+1,nfv
         cain(i)=(0.0d0,0.0d0)
 8100 continue
      return
      end
      subroutine ntpfb(cevba1,cevbb1,cuvba1,cuvbb1,ctvba1,ctvbb1
     &                ,cevba2,cevbb2,cuvba2,cuvbb2,ctvba2,ctvbb2
     &                ,cevba3,cevbb3,cuvba3,cuvbb3,ctvba3,ctvbb3
     &                ,cevba4,cevbb4,cuvba4,cuvbb4,ctvba4,ctvbb4
     &                ,cw,mrb,cbin)
      implicit complex*16 (a-c)
      implicit real*8 (d-h,k,o-z)
      parameter (pi=3.14159265358979323d0,ci=(0.0d0,1.0d0))
      parameter (ne=100,me=101,nfv=202)
      parameter (nb1=2,nb2=4,nb3=3,nb4=91)
      parameter (dx=-2.0d0,dxs=0.7d0)
      real*8 h(ne),pb(ne)
      real*8 drvma(nfv,nfv),drvmb(nfv,nfv),zr(nfv,nfv)
      real*8 divma(nfv,nfv),divmb(nfv,nfv),zi(nfv,nfv)
      real*8 dalfr(nfv),dalfi(nfv),dbeta(nfv)
      complex*16 cpm(ne),cpl(ne),cva(ne),cvb(ne)
      complex*16 cv(ne,4,4),csv(ne,4,4),cjv(ne,4)
      complex*16 csumv(nfv),csvv(ne,4,4),cfvv(nfv,nfv)
      complex*16 cvma(nfv,nfv),cvmb(nfv,nfv),ckv(nfv)
      complex*16 cr1(me,nfv),cr2(me,nfv)
      complex*16 cevl(nfv),cev(nfv,nfv)
      complex*16 cevba1(nfv,nb1*2),cuvba1(nb1*2,nfv),ctvba1(nb1*2,nfv)
      complex*16 cevba2(nfv,nb2*2),cuvba2(nb2*2,nfv),ctvba2(nb2*2,nfv)
      complex*16 cevba3(nfv,nb3*2),cuvba3(nb3*2,nfv),ctvba3(nb3*2,nfv)
      complex*16 cevba4(nfv,nb4*2),cuvba4(nb4*2,nfv),ctvba4(nb4*2,nfv)
      complex*16 cevbb1(nfv,nb1*2),cuvbb1(nb1*2,nfv),ctvbb1(nb1*2,nfv)
      complex*16 cevbb2(nfv,nb2*2),cuvbb2(nb2*2,nfv),ctvbb2(nb2*2,nfv)
      complex*16 cevbb3(nfv,nb3*2),cuvbb3(nb3*2,nfv),ctvbb3(nb3*2,nfv)
      complex*16 cevbb4(nfv,nb4*2),cuvbb4(nb4*2,nfv),ctvbb4(nb4*2,nfv)
      complex*16 cbin(nfv)
      complex*16 chvba1(nfv,nb1*2),chvbb1(nfv,nb1*2)
      complex*16 chvba2(nfv,nb2*2),chvbb2(nfv,nb2*2)
      complex*16 chvba3(nfv,nb3*2),chvbb3(nfv,nb3*2)
      complex*16 chvba4(nfv,nb4*2),chvbb4(nfv,nb4*2)
      call tlpb(ne,h,cpm,cpl,cva,cvb,pb)
      call mat(ne,nfv,cw,h,cpm,cpl,cva,cvb,pb,cvma,cvmb)
      do 100 j=1,nfv
         do 110 i=1,nfv
            drvma(i,j)=real(cvma(i,j))
            divma(i,j)=imag(cvma(i,j))
            drvmb(i,j)=real(cvmb(i,j))
            divmb(i,j)=imag(cvmb(i,j))
  110    continue
  100 continue
      eps1=1.0d-24
      call cqzhes(nfv,nfv,drvma,divma,drvmb,divmb,.true.,zr,zi,eps1)
      call cqzval(nfv,nfv,drvma,divma,drvmb,divmb,eps1,dalfr,dalfi
     &           ,dbeta,.true.,zr,zi,ierr)
      call cqzvec(nfv,nfv,drvma,divma,drvmb,divmb,dalfr,dalfi,dbeta
     &           ,zr,zi)
      do 200 j=1,nfv
         if (abs(dbeta(j)).lt.1.0d-8) then
             cevl(j)=-ci*1.0d6
         else 
             cevl(j)=sqrt((dalfr(j)+ci*dalfi(j))/dbeta(j))
             if (imag(cevl(j)).gt.1.0d0) then
                 cevl(j)=-ci*1.0d6
             end if
             if (abs(imag(cevl(j))).gt.abs(real(cevl(j)))) then
                 if (imag(cevl(j)).gt.0.0d0) then
                     cevl(j)=-cevl(j)
                 end if
             end if
         end if
  200 continue
      mrb=0
      do 400 j=1,nfv
         if (abs(exp(ci*cevl(j)*dx)).gt.1.0d-2) then
             mrb=mrb+1
             ckv(mrb)=cevl(j)
             do 410 i=1,me
                cr1(i,mrb)= zr(i*2-1,j)+ci*zi(i*2-1,j)
                cr2(i,mrb)=(zr(i*2  ,j)+ci*zi(i*2  ,j))/cevl(j)
  410        continue
         end if
  400 continue
      do 600 j=1,mrb
         csumv(j)=0.0d0
         do 610 i=1,ne
            cv(i,1,1)=2.0d0*ckv(j)*h(i)*(2.0d0*cpm(i)+cpl(i))/3.0d0
            cv(i,3,1)=2.0d0*ckv(j)*h(i)*(2.0d0*cpm(i)+cpl(i))/6.0d0
            cv(i,2,2)=2.0d0*ckv(j)*h(i)       *cpm(i)        /3.0d0
            cv(i,4,2)=2.0d0*ckv(j)*h(i)       *cpm(i)        /6.0d0
            cv(i,1,3)=2.0d0*ckv(j)*h(i)*(2.0d0*cpm(i)+cpl(i))/6.0d0
            cv(i,3,3)=2.0d0*ckv(j)*h(i)*(2.0d0*cpm(i)+cpl(i))/3.0d0
            cv(i,2,4)=2.0d0*ckv(j)*h(i)       *cpm(i)        /6.0d0
            cv(i,4,4)=2.0d0*ckv(j)*h(i)       *cpm(i)        /3.0d0
            cv(i,2,1)= (cpm(i)-cpl(i))/2.0d0
            cv(i,4,1)= (cpm(i)+cpl(i))/2.0d0
            cv(i,1,2)= (cpm(i)-cpl(i))/2.0d0
            cv(i,3,2)=-(cpm(i)+cpl(i))/2.0d0
            cv(i,2,3)=-(cpm(i)+cpl(i))/2.0d0
            cv(i,4,3)=-(cpm(i)-cpl(i))/2.0d0
            cv(i,1,4)= (cpm(i)+cpl(i))/2.0d0
            cv(i,3,4)=-(cpm(i)-cpl(i))/2.0d0
  610    continue 
         do 620 i=1,ne
            csumv(j)=csumv(j)
     &              +cr1(i  ,j)*cv(i,1,1)*cr1(i  ,j)*0.5d0
     &              +cr1(i  ,j)*cv(i,1,2)*cr2(i  ,j)*0.5d0
     &              +cr1(i  ,j)*cv(i,1,3)*cr1(i+1,j)*0.5d0
     &              +cr1(i  ,j)*cv(i,1,4)*cr2(i+1,j)*0.5d0
     &              +cr2(i  ,j)*cv(i,2,1)*cr1(i  ,j)*0.5d0
     &              +cr2(i  ,j)*cv(i,2,2)*cr2(i  ,j)*0.5d0
     &              +cr2(i  ,j)*cv(i,2,3)*cr1(i+1,j)*0.5d0
     &              +cr2(i  ,j)*cv(i,2,4)*cr2(i+1,j)*0.5d0
     &              +cr1(i+1,j)*cv(i,3,1)*cr1(i  ,j)*0.5d0
     &              +cr1(i+1,j)*cv(i,3,2)*cr2(i  ,j)*0.5d0
     &              +cr1(i+1,j)*cv(i,3,3)*cr1(i+1,j)*0.5d0
     &              +cr1(i+1,j)*cv(i,3,4)*cr2(i+1,j)*0.5d0
     &              +cr2(i+1,j)*cv(i,4,1)*cr1(i  ,j)*0.5d0
     &              +cr2(i+1,j)*cv(i,4,2)*cr2(i  ,j)*0.5d0
     &              +cr2(i+1,j)*cv(i,4,3)*cr1(i+1,j)*0.5d0
     &              +cr2(i+1,j)*cv(i,4,4)*cr2(i+1,j)*0.5d0
  620    continue
  600 continue
      do 630 j=1,mrb
         do 640 i=1,me
            cr1(i,j)=cr1(i,j)/sqrt(csumv(j))
            cr2(i,j)=cr2(i,j)/sqrt(csumv(j))
  640    continue
  630 continue
      do 800 j=1,mrb
         do 810 i=1,nb1
            cuvba1(i    ,j)=    (cr1(i,j)+cr1(i+1,j))*0.5d0
            cuvba1(i+nb1,j)= ci*(cr2(i,j)+cr2(i+1,j))*0.5d0
            ctvba1(i    ,j)= ci*(cpl(i)+2.0d0*cpm(i))*ckv(j)
     &                       *(cr1(i,j)+cr1(i+1,j))*0.5d0
     &                      +ci*cpl(i)*(cr2(i+1,j)-cr2(i,j))/h(i)
            ctvba1(i+nb1,j)= cpm(i)*((cr1(i+1,j)-cr1(i,j))/h(i)
     &                           -ckv(j)*(cr2(i,j)+cr2(i+1,j))*0.5d0)
            cuvbb1(i    ,j)=    (cr1(i,j)+cr1(i+1,j))*0.5d0
            cuvbb1(i+nb1,j)=-ci*(cr2(i,j)+cr2(i+1,j))*0.5d0
            ctvbb1(i    ,j)= ci*(cpl(i)+2.0d0*cpm(i))*ckv(j)
     &                         *(cr1(i,j)+cr1(i+1,j))*0.5d0
     &                      +ci*cpl(i)*(cr2(i+1,j)-cr2(i,j))/h(i)
            ctvbb1(i+nb1,j)=-cpm(i)*((cr1(i+1,j)-cr1(i,j))/h(i)
     &                             -ckv(j)*(cr2(i,j)+cr2(i+1,j))*0.5d0)
  810    continue
         do 820 i=1,nb2
            cuvba2(i    ,j)=    (cr1(i+nb1,j)+cr1(i+nb1+1,j))*0.5d0
            cuvba2(i+nb2,j)= ci*(cr2(i+nb1,j)+cr2(i+nb1+1,j))*0.5d0
            ctvba2(i    ,j)= ci*(cpl(i+nb1)+2.0d0*cpm(i+nb1))*ckv(j)
     &                       *(cr1(i+nb1,j)+cr1(i+nb1+1,j))*0.5d0
     &                      +ci*cpl(i+nb1)*(cr2(i+nb1+1,j)
     &                                    -cr2(i+nb1,j))/h(i+nb1)
            ctvba2(i+nb2,j)= cpm(i+nb1)*((cr1(i+nb1+1,j)
     &                                  -cr1(i+nb1,j))/h(i+nb1)
     &                                 -ckv(j)*(cr2(i+nb1,j)
     &                                         +cr2(i+nb1+1,j))*0.5d0)
            cuvbb2(i    ,j)=    (cr1(i+nb1,j)+cr1(i+nb1+1,j))*0.5d0
            cuvbb2(i+nb2,j)=-ci*(cr2(i+nb1,j)+cr2(i+nb1+1,j))*0.5d0
            ctvbb2(i    ,j)= ci*(cpl(i+nb1)+2.0d0*cpm(i+nb1))*ckv(j)
     &                         *(cr1(i+nb1,j)+cr1(i+nb1+1,j))*0.5d0
     &                      +ci*cpl(i+nb1)*(cr2(i+nb1+1,j)
     &                                    -cr2(i+nb1,j))/h(i+nb1)
            ctvbb2(i+nb2,j)=-cpm(i+nb1)*((cr1(i+nb1+1,j)
     &                                  -cr1(i+nb1,j))/h(i+nb1)
     &                                 -ckv(j)*(cr2(i+nb1,j)
     &                                         +cr2(i+nb1+1,j))*0.5d0)
  820    continue
         do 830 i=1,nb3
            cuvba3(i    ,j)=    (cr1(i+nb1+nb2,j)
     &                          +cr1(i+nb1+nb2+1,j))*0.5d0
            cuvba3(i+nb3,j)= ci*(cr2(i+nb1+nb2,j)
     &                          +cr2(i+nb1+nb2+1,j))*0.5d0
            ctvba3(i    ,j)= ci*(cpl(i+nb1+nb2)
     &                          +2.0d0*cpm(i+nb1+nb2))*ckv(j)
     &                         *(cr1(i+nb1+nb2,j)
     &                          +cr1(i+nb1+nb2+1,j))*0.5d0
     &                      +ci*cpl(i+nb1+nb2)
     &                         *(cr2(i+nb1+nb2+1,j)
     &                          -cr2(i+nb1+nb2,j))/h(i+nb1+nb2)
            ctvba3(i+nb3,j)= cpm(i+nb1+nb2)
     &                         *((cr1(i+nb1+nb2+1,j)
     &                           -cr1(i+nb1+nb2,j))/h(i+nb1+nb2)
     &                          -ckv(j)*(cr2(i+nb1+nb2,j)
     &                                  +cr2(i+nb1+nb2+1,j))*0.5d0)
            cuvbb3(i    ,j)=    (cr1(i+nb1+nb2,j)
     &                          +cr1(i+nb1+nb2+1,j))*0.5d0
            cuvbb3(i+nb3,j)=-ci*(cr2(i+nb1+nb2,j)
     &                          +cr2(i+nb1+nb2+1,j))*0.5d0
            ctvbb3(i    ,j)= ci*(cpl(i+nb1+nb2)
     &                          +2.0e0*cpm(i+nb1+nb2))*ckv(j)
     &                         *(cr1(i+nb1+nb2,j)
     &                          +cr1(i+nb1+nb2+1,j))*0.5e0
     &                      +ci*cpl(i+nb1+nb2)
     &                         *(cr2(i+nb1+nb2+1,j)
     &                          -cr2(i+nb1+nb2,j))/h(i+nb1+nb2)
            ctvbb3(i+nb3,j)=-cpm(i+nb1+nb2)
     &                         *((cr1(i+nb1+nb2+1,j)
     &                           -cr1(i+nb1+nb2,j))/h(i+nb1+nb2)
     &                          -ckv(j)*(cr2(i+nb1+nb2,j)
     &                                  +cr2(i+nb1+nb2+1,j))*0.5d0)
  830    continue
         do 840 i=1,nb4
            cuvba4(i    ,j)=    (cr1(i+nb1+nb2+nb3,j)
     &                          +cr1(i+nb1+nb2+nb3+1,j))*0.5d0
            cuvba4(i+nb4,j)= ci*(cr2(i+nb1+nb2+nb3,j)
     &                          +cr2(i+nb1+nb2+nb3+1,j))*0.5d0
            ctvba4(i    ,j)= ci*(cpl(i+nb1+nb2+nb3)
     &                          +2.0d0*cpm(i+nb1+nb2+nb3))*ckv(j)
     &                         *(cr1(i+nb1+nb2+nb3,j)
     &                          +cr1(i+nb1+nb2+nb3+1,j))*0.5d0
     &                      +ci*cpl(i+nb1+nb2+nb3)
     &                         *(cr2(i+nb1+nb2+nb3+1,j)
     &                          -cr2(i+nb1+nb2+nb3,j))/h(i+nb1+nb2+nb3)
            ctvba4(i+nb4,j)= cpm(i+nb1+nb2+nb3)
     &                         *((cr1(i+nb1+nb2+nb3+1,j)
     &                           -cr1(i+nb1+nb2+nb3,j))
     &                         /h(i+nb1+nb2+nb3)
     &                          -ckv(j)*(cr2(i+nb1+nb2+nb3,j)
     &                                  +cr2(i+nb1+nb2+nb3+1,j))*0.5d0)
            cuvbb4(i    ,j)=    (cr1(i+nb1+nb2+nb3,j)
     &                          +cr1(i+nb1+nb2+nb3+1,j))*0.5d0
            cuvbb4(i+nb4,j)=-ci*(cr2(i+nb1+nb2+nb3,j)
     &                          +cr2(i+nb1+nb2+nb3+1,j))*0.5d0
            ctvbb4(i    ,j)= ci*(cpl(i+nb1+nb2+nb3)
     &                          +2.0d0*cpm(i+nb1+nb2+nb3))*ckv(j)
     &                         *(cr1(i+nb1+nb2+nb3,j)
     &                          +cr1(i+nb1+nb2+nb3+1,j))*0.5d0
     &                      +ci*cpl(i+nb1+nb2+nb3)
     &                         *(cr2(i+nb1+nb2+nb3+1,j)
     &                          -cr2(i+nb1+nb2+nb3,j))/h(i+nb1+nb2+nb3)
            ctvbb4(i+nb4,j)=-cpm(i+nb1+nb2+nb3)
     &                         *((cr1(i+nb1+nb2+nb3+1,j)
     &                           -cr1(i+nb1+nb2+nb3,j))
     &                         /h(i+nb1+nb2+nb3)
     &                          -ckv(j)*(cr2(i+nb1+nb2+nb3,j)
     &                                  +cr2(i+nb1+nb2+nb3+1,j))*0.5d0)
  840    continue
  800 continue
      do 1000 l=1,mrb
         do 1100 j=1,mrb
            do 1200 i=1,ne
               csvv(i,1,1)=h(i)*(2.0d0*cpm(i)+cpl(i))*ckv(j)/3.0d0
               csvv(i,3,1)=h(i)*(2.0d0*cpm(i)+cpl(i))*ckv(j)/6.0d0
               csvv(i,1,3)=h(i)*(2.0d0*cpm(i)+cpl(i))*ckv(j)/6.0d0
               csvv(i,3,3)=h(i)*(2.0d0*cpm(i)+cpl(i))*ckv(j)/3.0d0
               csvv(i,2,2)=h(i)*cpm(i)*ckv(j)/3.0d0
               csvv(i,4,2)=h(i)*cpm(i)*ckv(j)/6.0d0
               csvv(i,2,4)=h(i)*cpm(i)*ckv(j)/6.0d0
               csvv(i,4,4)=h(i)*cpm(i)*ckv(j)/3.0d0
               csvv(i,2,1)= cpm(i)/2.0d0
               csvv(i,4,1)= cpm(i)/2.0d0
               csvv(i,2,3)=-cpm(i)/2.0d0
               csvv(i,4,3)=-cpm(i)/2.0d0
               csvv(i,1,2)=-cpl(i)/2.0d0
               csvv(i,3,2)=-cpl(i)/2.0d0
               csvv(i,1,4)= cpl(i)/2.0d0
               csvv(i,3,4)= cpl(i)/2.0d0
 1200       continue 
            cfvv(l,j)=0.0d0
            do 1300 i=1,ne
               cfvv(l,j)
     &        =cfvv(l,j)
     &        +cr1(i  ,l)*csvv(i,1,1)*cr1(i  ,j)*ci
     &        +cr1(i  ,l)*csvv(i,1,2)*cr2(i  ,j)*ci
     &        +cr1(i  ,l)*csvv(i,1,3)*cr1(i+1,j)*ci
     &        +cr1(i  ,l)*csvv(i,1,4)*cr2(i+1,j)*ci
     &        +cr2(i  ,l)*csvv(i,2,1)*cr1(i  ,j)*ci
     &        +cr2(i  ,l)*csvv(i,2,2)*cr2(i  ,j)*ci
     &        +cr2(i  ,l)*csvv(i,2,3)*cr1(i+1,j)*ci
     &        +cr2(i  ,l)*csvv(i,2,4)*cr2(i+1,j)*ci
     &        +cr1(i+1,l)*csvv(i,3,1)*cr1(i  ,j)*ci
     &        +cr1(i+1,l)*csvv(i,3,2)*cr2(i  ,j)*ci
     &        +cr1(i+1,l)*csvv(i,3,3)*cr1(i+1,j)*ci
     &        +cr1(i+1,l)*csvv(i,3,4)*cr2(i+1,j)*ci
     &        +cr2(i+1,l)*csvv(i,4,1)*cr1(i  ,j)*ci
     &        +cr2(i+1,l)*csvv(i,4,2)*cr2(i  ,j)*ci
     &        +cr2(i+1,l)*csvv(i,4,3)*cr1(i+1,j)*ci
     &        +cr2(i+1,l)*csvv(i,4,4)*cr2(i+1,j)*ci
 1300       continue
 1100    continue
         cfvv(l,l)=-ci
 1000 continue
      call invmt(nfv,mrb,cfvv)
      do 6000 j=1,mrb
         do 6100 i=1,ne
            csv(i,1,1)=-ci*h(i)*(2.0d0*cpm(i)+cpl(i))*ckv(j)/2.0d0
            csv(i,3,1)=-ci*h(i)*(2.0d0*cpm(i)+cpl(i))*ckv(j)/2.0d0
            csv(i,2,1)= ci*cpl(i)
            csv(i,4,1)=-ci*cpl(i)
            csv(i,1,2)=-cpm(i)
            csv(i,3,2)= cpm(i)
            csv(i,2,2)=-h(i)*cpm(i)*ckv(j)/2.0d0
            csv(i,4,2)=-h(i)*cpm(i)*ckv(j)/2.0d0
 6100    continue 
         do 6200 i=1,ne
            cjv(i,1)=csv(i,1,1)*cr1(i  ,j)
     &              +csv(i,2,1)*cr2(i  ,j)
     &              +csv(i,3,1)*cr1(i+1,j)
     &              +csv(i,4,1)*cr2(i+1,j)
            cjv(i,2)=csv(i,1,2)*cr1(i  ,j)
     &              +csv(i,2,2)*cr2(i  ,j)
     &              +csv(i,3,2)*cr1(i+1,j)
     &              +csv(i,4,2)*cr2(i+1,j)
 6200    continue
         do 6210 i=1,nb1
            chvba1(j,i    )= cjv(i,1)
            chvba1(j,i+nb1)= cjv(i,2)
            chvbb1(j,i    )= cjv(i,1)
            chvbb1(j,i+nb1)=-cjv(i,2)
 6210    continue
         do 6220 i=1,nb2
            chvba2(j,i    )= cjv(i+nb1,1)
            chvba2(j,i+nb2)= cjv(i+nb1,2)
            chvbb2(j,i    )= cjv(i+nb1,1)
            chvbb2(j,i+nb2)=-cjv(i+nb1,2)
 6220    continue
         do 6230 i=1,nb3
            chvba3(j,i    )= cjv(i+nb1+nb2,1)
            chvba3(j,i+nb3)= cjv(i+nb1+nb2,2)
            chvbb3(j,i    )= cjv(i+nb1+nb2,1)
            chvbb3(j,i+nb3)=-cjv(i+nb1+nb2,2)
 6230    continue
         do 6240 i=1,nb4
            chvba4(j,i    )= cjv(i+nb1+nb2+nb3,1)
            chvba4(j,i+nb4)= cjv(i+nb1+nb2+nb3,2)
            chvbb4(j,i    )= cjv(i+nb1+nb2+nb3,1)
            chvbb4(j,i+nb4)=-cjv(i+nb1+nb2+nb3,2)
 6240    continue
 6000 continue
      do 7000 i=1,mrb
         do 7110 j=1,nb1*2
            cevba1(i,j)=(0.0d0,0.0d0)
            cevbb1(i,j)=(0.0d0,0.0d0)
            do 7210 l=1,mrb
               cevba1(i,j)=cevba1(i,j)+cfvv(i,l)*chvba1(l,j)
               cevbb1(i,j)=cevbb1(i,j)+cfvv(i,l)*chvbb1(l,j)
 7210       continue
 7110    continue
         do 7120 j=1,nb2*2
            cevba2(i,j)=(0.0d0,0.0d0)
            cevbb2(i,j)=(0.0d0,0.0d0)
            do 7220 l=1,mrb
               cevba2(i,j)=cevba2(i,j)+cfvv(i,l)*chvba2(l,j)
               cevbb2(i,j)=cevbb2(i,j)+cfvv(i,l)*chvbb2(l,j)
 7220       continue
 7120    continue
         do 7130 j=1,nb3*2
            cevba3(i,j)=(0.0d0,0.0d0)
            cevbb3(i,j)=(0.0d0,0.0d0)
            do 7230 l=1,mrb
               cevba3(i,j)=cevba3(i,j)+cfvv(i,l)*chvba3(l,j)
               cevbb3(i,j)=cevbb3(i,j)+cfvv(i,l)*chvbb3(l,j)
 7230       continue
 7130    continue
         do 7140 j=1,nb4*2
            cevba4(i,j)=(0.0d0,0.0d0)
            cevbb4(i,j)=(0.0d0,0.0d0)
            do 7240 l=1,mrb
               cevba4(i,j)=cevba4(i,j)+cfvv(i,l)*chvba4(l,j)
               cevbb4(i,j)=cevbb4(i,j)+cfvv(i,l)*chvbb4(l,j)
 7240       continue
 7140    continue
 7000 continue
      do 8000 i=1,mrb
         cbin(i)=0.25d0*cr2(1,i)*exp(-ci*ckv(i)*dxs)
 8000 continue    
       do 8100 i=mrb+1,nfv
         cbin(i)=(0.0d0,0.0d0)
 8100 continue
      return
      end
      subroutine invmt(nf,mf,cf)
      implicit complex*16 (a-c)
      implicit real*8 (d-h,o-z)
      complex*16 cf(nf,nf)
           eps=1.0d-14
           call luinv(cf,nf,mf,eps,ier)
      return
      end
      subroutine luinv(a,n1,n,eps,ier)
      implicit real*8 (d-h,o-z)
      implicit complex*16 (a-c)
      complex*16 a(n1,n1)
      integer*4 ip(200)
      real*8 wk(200)
      complex*16 awk(200),awk2(200)
      if ((n1.lt.n).or.(n.le.1)) then
         write(*,*) '(subr. luinv) invalid argument.', n, n1
         ier=2
         return
      endif
      ier=0
      do 10 i=1,n
   10    wk(i)=0.0d0
      do 20 j=1,n
         do 20 i=1,n
            if (abs(a(i,j)).gt.wk(i)) wk(i)=abs(a(i,j))
   20 continue
      do 30 i=1,n
         if (wk(i).ne.0.0d0) wk(i)=1.0d0/wk(i)
   30 continue
      do 100 k=1,n
         km=k
         kp=km
         xamax=abs(a(km,k))*wk(km)
         if (km.ne.n) then
            do 40 i=k+1,n
               xaw=abs(a(i,k))*wk(i)
               if (xaw.gt.xamax) then
                  kp=i
                  xamax=xaw
               endif
   40       continue
         endif
         if (xamax.le.eps) then
            write(*,*) '(subr. luinv) singular at step = ', k
            ier = 1
            return
         endif
         ip(k)=kp
         if (kp.ne.km) then
            xaw=wk(kp)
            wk(kp)=wk(km)
            wk(km)=xaw
            do 50 j=1,n
               aw=a(kp,j)
               a(kp,j)=a(km,j)
   50          a(km,j)=aw
         endif
         a(km,k)=1.0d0/a(km,k)
         if (km.ne.n) then
            apivot=a(km,k)
            do 60 i=k+1,n
   60          a(i,k)=a(i,k)*apivot
            if (k.ne.n) then
               do 90 j=k+1,n
                  aw=-a(km,j)
                  do 80 i=k+1,n
   80                a(i,j)=a(i,j)+aw*a(i,k)
   90          continue
            endif
         endif
  100 continue
      do 200 k=n-1,1,-1
         do 120 j=k+1,n
  120       awk(j)=0.0d0
         do 140 i=k+1,n
            do 130 j=k+1,n
  130          awk(j)=awk(j)-a(i,k)*a(j,i)
  140       awk2(i)=a(k,i)
         do 150 j=k+1,n
  150       a(j,k)=awk(j)
         as=(0.0d0,0.0d0)
         do 160 i=k+1,n
  160       as=as+awk(i)*awk2(i)
         adiag=a(k,k)
         a(k,k)=(1.0d0-as)*adiag
         do 180 j=k+1,n
            as=(0.0d0,0.0d0)
            do 170 i=k+1,n
  170          as=as+awk2(i)*a(i,j)
  180       a(k,j)=-as*adiag
  200 continue
      do 250 k=n-1,1,-1
         if (ip(k).ne.k) then
            do 210 ii=1,n
  210          awk(ii)=a(ii,ip(k))
            do 220 ii=1,n
               a(ii,ip(k))=a(ii,k)
  220          a(ii,k)=awk(ii)
         endif
  250 continue
      return
      end
      subroutine mat(ne,nf,cw,h,cpm,cpl,cva,cvb,pb,cma,cmb)
      implicit complex*16 (a-c)
      implicit real*8 (d-h,o-z)
      parameter (ci=(0.0d0,1.0d0))
      real*8 h(ne),pb(ne)
      complex*16 cpm(ne),cpl(ne),cva(ne),cvb(ne)
      complex*16 cma(nf,nf),cmb(nf,nf)
      do 10 j=1,nf
         do 20 i=1,nf
            cma(i,j)=(0.0d0,0.0d0)
            cmb(i,j)=(0.0d0,0.0d0)
   20    continue
   10 continue
      do 30 i=1,ne
         cma((i-1)*2+1,(i-1)*2+1)
     &  =cma((i-1)*2+1,(i-1)*2+1)+cpm(i)/h(i)-cw*cw*pb(i)*h(i)/3.0d0
         cma((i-1)*2+1,(i-1)*2+2)
     &  =cma((i-1)*2+1,(i-1)*2+2)-0.5d0*(cpl(i)-cpm(i))
         cma((i-1)*2+1,(i-1)*2+3)
     &  =cma((i-1)*2+1,(i-1)*2+3)-cpm(i)/h(i)-cw*cw*pb(i)*h(i)/6.0d0
         cma((i-1)*2+1,(i-1)*2+4)
     &  =cma((i-1)*2+1,(i-1)*2+4)+0.5d0*(cpl(i)+cpm(i))
         cma((i-1)*2+2,(i-1)*2+1)
     &  =cma((i-1)*2+2,(i-1)*2+1)+(0.0d0,0.0d0)
         cma((i-1)*2+2,(i-1)*2+2)
     &  =cma((i-1)*2+2,(i-1)*2+2)+(cpl(i)+2.0d0*cpm(i))/h(i)
     &                           -cw*cw*pb(i)*h(i)/3.0d0
         cma((i-1)*2+2,(i-1)*2+3)
     &  =cma((i-1)*2+2,(i-1)*2+3)+(0.0d0,0.0d0)
         cma((i-1)*2+2,(i-1)*2+4)
     &  =cma((i-1)*2+2,(i-1)*2+4)-(cpl(i)+2.0d0*cpm(i))/h(i)
     &                           -cw*cw*pb(i)*h(i)/6.0d0
         cma((i-1)*2+3,(i-1)*2+1)
     &  =cma((i-1)*2+3,(i-1)*2+1)-cpm(i)/h(i)-cw*cw*pb(i)*h(i)/6.0d0
         cma((i-1)*2+3,(i-1)*2+2)
     &  =cma((i-1)*2+3,(i-1)*2+2)-0.5d0*(cpl(i)+cpm(i))
         cma((i-1)*2+3,(i-1)*2+3)
     &  =cma((i-1)*2+3,(i-1)*2+3)+cpm(i)/h(i)-cw*cw*pb(i)*h(i)/3.0d0
         cma((i-1)*2+3,(i-1)*2+4)
     &  =cma((i-1)*2+3,(i-1)*2+4)+0.5d0*(cpl(i)-cpm(i))
         cma((i-1)*2+4,(i-1)*2+1)
     &  =cma((i-1)*2+4,(i-1)*2+1)+(0.0d0,0.0d0)
         cma((i-1)*2+4,(i-1)*2+2)
     &  =cma((i-1)*2+4,(i-1)*2+2)-(cpl(i)+2.0d0*cpm(i))/h(i)
     &                           -cw*cw*pb(i)*h(i)/6.0d0
         cma((i-1)*2+4,(i-1)*2+3)
     &  =cma((i-1)*2+4,(i-1)*2+3)+(0.0d0,0.0d0)
         cma((i-1)*2+4,(i-1)*2+4)
     &  =cma((i-1)*2+4,(i-1)*2+4)+(cpl(i)+2.0d0*cpm(i))/h(i)
     &                           -cw*cw*pb(i)*h(i)/3.0d0
   30 continue
      cma(nf-1,nf-1)=cma(nf-1,nf-1)+ci*cpm(ne)*cw/cvb(ne)
      cma(nf  ,nf  )=cma(nf  ,nf  )+ci*cpm(ne)*cw*cva(ne)
     &                                /(cvb(ne)*cvb(ne))
      do 40 i=1,ne
         cmb((i-1)*2+1,(i-1)*2+1)
     &  =cmb((i-1)*2+1,(i-1)*2+1)-h(i)*(cpl(i)+2.0d0*cpm(i))/3.0d0
         cmb((i-1)*2+1,(i-1)*2+2)
     &  =cmb((i-1)*2+1,(i-1)*2+2)+(0.0d0,0.0d0)
         cmb((i-1)*2+1,(i-1)*2+3)
     &  =cmb((i-1)*2+1,(i-1)*2+3)-h(i)*(cpl(i)+2.0d0*cpm(i))/6.0d0
         cmb((i-1)*2+1,(i-1)*2+4)
     &  =cmb((i-1)*2+1,(i-1)*2+4)+(0.0d0,0.0d0)
         cmb((i-1)*2+2,(i-1)*2+1)
     &  =cmb((i-1)*2+2,(i-1)*2+1)+0.5d0*(cpl(i)-cpm(i))
         cmb((i-1)*2+2,(i-1)*2+2)
     &  =cmb((i-1)*2+2,(i-1)*2+2)-h(i)*cpm(i)/3.0d0
         cmb((i-1)*2+2,(i-1)*2+3)
     &  =cmb((i-1)*2+2,(i-1)*2+3)+0.5d0*(cpl(i)+cpm(i))
         cmb((i-1)*2+2,(i-1)*2+4)
     &  =cmb((i-1)*2+2,(i-1)*2+4)-h(i)*cpm(i)/6.0d0
         cmb((i-1)*2+3,(i-1)*2+1)
     &  =cmb((i-1)*2+3,(i-1)*2+1)-h(i)*(cpl(i)+2.0d0*cpm(i))/6.0d0
         cmb((i-1)*2+3,(i-1)*2+2)
     &  =cmb((i-1)*2+3,(i-1)*2+2)+(0.0d0,0.0d0)
         cmb((i-1)*2+3,(i-1)*2+3)
     &  =cmb((i-1)*2+3,(i-1)*2+3)-h(i)*(cpl(i)+2.0d0*cpm(i))/3.0d0
         cmb((i-1)*2+3,(i-1)*2+4)
     &  =cmb((i-1)*2+3,(i-1)*2+4)+(0.0d0,0.0d0)
         cmb((i-1)*2+4,(i-1)*2+1)
     &  =cmb((i-1)*2+4,(i-1)*2+1)-0.5d0*(cpl(i)+cpm(i))
         cmb((i-1)*2+4,(i-1)*2+2)
     &  =cmb((i-1)*2+4,(i-1)*2+2)-h(i)*cpm(i)/6.0d0
         cmb((i-1)*2+4,(i-1)*2+3)
     &  =cmb((i-1)*2+4,(i-1)*2+3)-0.5d0*(cpl(i)-cpm(i))
         cmb((i-1)*2+4,(i-1)*2+4)
     &  =cmb((i-1)*2+4,(i-1)*2+4)-h(i)*cpm(i)/3.0d0
   40 continue
      return
      end
      subroutine trfft(nt,ne,cu,cwt)
      implicit complex*16 (a-c)
      implicit real*8 (d-h,o-z)
      complex*16 cu(ne,nt),cwt(nt)
      do 50 i=1,ne
         cwt(1)=(0.0d0,0.0d0)
         do 60 istep=2,nt/2+1
            cwt(nt+2-istep)=conjg(cu(i,istep))
            cwt(istep)=cu(i,istep)
   60    continue
         call fft(nt,cwt,1)
         do 70 istep=1,nt
            cu(i,istep)=cwt(istep)
   70    continue
   50 continue
      return
      end
      subroutine fft(n,cx,ind)
      implicit complex*16 (a-c)
      implicit real*8 (d-h,o-z)
      complex*16 cx(n)
      j=1
      do 140 i=1,n
         if (i.ge.j) go to 110
         ctemp=cx(j)
         cx(j)=cx(i)
         cx(i)=ctemp
  110    m=n/2
  120    if (j.le.m) go to 130
         j=j-m
         m=m/2
         if (m.ge.2) go to 120
  130    j=j+m
  140 continue
      kmax=1
  150 if (kmax.ge.n) return
      istep=kmax*2
      do 170 k=1,kmax
         ctheta=cmplx(0.0d0
     &        ,3.14159265358979323d0*real(ind*(k-1))/real(kmax))
         do 160 i=k,n,istep
            j=i+kmax
            ctemp=cx(j)*exp(ctheta)
            cx(j)=cx(i)-ctemp
            cx(i)=cx(i)+ctemp
  160    continue
  170 continue
      kmax=istep
      go to 150
      end
      subroutine hank0(cx,csgx)
      implicit complex*16 (c)
      implicit real*8 (a-b,d-h,o-z)
      call cbessj0(cx,cbesj0)
      call cbessy0(cx,cbesj0,cbesy0)
      csgx=cbesj0-cbesy0*(0.0d0,1.0d0)
      return
      end
      subroutine hanka(cx,csgx)
      implicit complex*16 (c)
      implicit real*8 (a-b,d-h,o-z)
      call cbessj0(cx,cbesj0)
      call cbessya(cx,cbesj0,cbesya)
      csgx=cbesj0-cbesya*(0.0d0,1.0d0)
      return
      end
      subroutine cbessj0(cx,cbesj0)
      implicit complex*16 (c)
      implicit real*8 (a-b,d-h,o-z)
      p1=1.0d0
      p2=-0.1098628627d-2
      p3=0.2734510407d-4
      p4=-0.2073370639d-5
      p5=0.2093887211d-6
      q1=-0.1562499995d-1
      q2=0.1430488765d-3
      q3=-0.6911147651d-5
      q4=0.7621095161d-6
      q5=-0.934945152d-7
      r1=57568490574.d0
      r2=-13362590354.d0
      r3=651619640.7d0
      r4=-11214424.18d0
      r5=77392.33017d0
      r6=-184.9052456d0
      s1=57568490411.d0
      s2=1029532985.d0
      s3=9494680.718d0
      s4=59272.64853d0
      s5=267.8532712d0
      s6=1.0d0
      if (abs(cx).lt.8.0d0) then
          cy=cx*cx
          cbesj0=(r1+cy*(r2+cy*(r3+cy*(r4+cy*(r5+cy*r6)))))
     &          /(s1+cy*(s2+cy*(s3+cy*(s4+cy*(s5+cy*s6)))))
      else
          cz=8.0d0/cx
          cy=cz*cz
          cxx=cx-0.785398164d0
          cbesj0=sqrt(0.636619772d0/cx)
     &          *(cos(cxx)*(p1+cy*(p2+cy*(p3+cy*(p4+cy*p5))))
     &          -cz*sin(cxx)*(q1+cy*(q2+cy*(q3+cy*(q4+cy*q5)))))
      end if
      return
      end
      subroutine cbessy0(cx,cbesj0,cbesy0)
      implicit complex*16 (c)
      implicit real*8 (a-b,d-h,o-z)
      p1=1.d0
      p2=-0.1098628627d-2
      p3=0.2734510407d-4
      p4=-0.2073370639d-5
      p5=0.2093887211d-6
      q1=-0.1562499995d-1
      q2=0.1430488765d-3
      q3=-0.6911147651d-5
      q4=0.7621095161d-6
      q5=-0.934945152d-7
      r1=-2957821389.d0
      r2=7062834065.d0
      r3=-512359803.6d0
      r4=10879881.29d0
      r5=-86327.92757d0
      r6=228.4622733d0
      s1=40076544269.d0
      s2=745249964.8d0
      s3=7189466.438d0
      s4=47447.26470d0
      s5=226.1030244d0
      s6=1.d0
      if (abs(cx).lt.8.0d0) then
         cy=cx*cx
         cay0=r1+cy*(r2+cy*(r3+cy*(r4+cy*(r5+cy*r6))))
         cby0=s1+cy*(s2+cy*(s3+cy*(s4+cy*(s5+cy*s6))))
         cdy0=0.636619772d0*cbesj0*log(cx)
         cbesy0=cay0/cby0+cdy0
      else
         cz=8.0d0/cx
         cy=cz*cz
         cxx=cx-0.785398164d0
         cay0=sqrt(0.636619772d0/cx)
         cby0=sin(cxx)*(p1+cy*(p2+cy*(p3+cy*(p4+cy*p5))))
         cdy0=cz*cos(cxx)*(q1+cy*(q2+cy*(q3+cy*(q4+cy*q5))))
         cbesy0=cay0*(cby0+cdy0)
      end if
      return
      end
      subroutine cbessya(cx,cbesj0,cbesya)
      implicit complex*16 (c)
      implicit real*8 (a-b,d-h,o-z)
      p1=1.d0
      p2=-0.1098628627d-2
      p3=0.2734510407d-4
      p4=-0.2073370639d-5
      p5=0.2093887211d-6
      q1=-0.1562499995d-1
      q2=0.1430488765d-3
      q3=-0.6911147651d-5
      q4=0.7621095161d-6
      q5=-0.934945152d-7
      r1=-2957821389.d0
      r2=7062834065.d0
      r3=-512359803.6d0
      r4=10879881.29d0
      r5=-86327.92757d0
      r6=228.4622733d0
      s1=40076544269.d0
      s2=745249964.8d0
      s3=7189466.438d0
      s4=47447.26470d0
      s5=226.1030244d0
      s6=1.d0
      if (abs(cx).lt.8.0d0) then
         cy=cx*cx
         cay0=r1+cy*(r2+cy*(r3+cy*(r4+cy*(r5+cy*r6))))
         cby0=s1+cy*(s2+cy*(s3+cy*(s4+cy*(s5+cy*s6))))
         cdy0=0.636619772d0*(cbesj0-1.0d0)*log(cx)
         cbesya=cay0/cby0+cdy0
      else
         cz=8.0d0/cx
         cy=cz*cz
         cxx=cx-0.785398164d0
         cay0=sqrt(0.636619772d0/cx)
         cby0=sin(cxx)*(p1+cy*(p2+cy*(p3+cy*(p4+cy*p5))))
         cdy0=cz*cos(cxx)*(q1+cy*(q2+cy*(q3+cy*(q4+cy*q5))))
         cbesya=cay0*(cby0+cdy0)-0.636619772d0*log(cx)
      end if
      return
      end
      subroutine hank1(cx,csgx)
      implicit complex*16 (c)
      implicit real*8 (a-b,d-h,o-z)
      call cbessj1(cx,cbesj1)
      call cbessy1(cx,cbesj1,cbesy1)
      csgx=cbesj1-cbesy1*(0.0d0,1.0d0)
      return
      end
      subroutine cbessj1(cx,cbesj1)
      implicit complex*16 (c)
      implicit real*8 (a-b,d-h,o-z)
      r1=72362614232.d0
      r2=-7895059235.d0
      r3=242396853.1d0
      r4=-2972611.439d0
      r5=15704.48260d0
      r6=-30.16036606d0
      s1=144725228442.d0
      s2=2300535178.d0
      s3=18583304.74d0
      s4=99447.43394d0
      s5=376.9991397d0
      s6=1.d0
      p1=1.d0
      p2=0.183105d-2
      p3=-0.3516396496d-4
      p4=0.2457520174d-5
      p5=-0.240337019d-6
      q1=0.04687499995d0
      q2=-0.2002690873d-3
      q3=0.8449199096d-5
      q4=-0.88228987d-6
      q5=0.105787412d-6
      if (abs(cx).lt.8.0d0) then
          cy=cx*cx
          cbesj1=cx*(r1+cy*(r2+cy*(r3+cy*(r4+cy*(r5+cy*r6)))))
     &             /(s1+cy*(s2+cy*(s3+cy*(s4+cy*(s5+cy*s6)))))
      else
          cz=8.0d0/cx
          cy=cz*cz
          cxx=cx-2.356194491d0
          cbesj1=sqrt(0.636619772d0/cx)
     &           *(cos(cxx)*(p1+cy*(p2+cy*(p3+cy*(p4+cy*p5))))
     &         -cz*sin(cxx)*(q1+cy*(q2+cy*(q3+cy*(q4+cy*q5)))))
      end if
      return
      end
      subroutine cbessy1(cx,cbesj1,cbesy1)
      implicit complex*16 (c)
      implicit real*8 (a-b,d-h,o-z)
      p1=1.d0
      p2=0.183105d-2
      p3=-0.3516396496d-4
      p4=0.2457520174d-5
      p5=-0.240337019d-6
      q1=0.04687499995d0
      q2=-0.2002690873d-3
      q3=0.8449199096d-5
      q4=-0.88228987d-6
      q5=0.105787412d-6
      r1=-0.4900604943d13
      r2=0.1275274390d13
      r3=-0.5153438139d11
      r4=0.7349264551d9
      r5=-0.4237922726d7
      r6=0.8511937935d4
      s1=0.2499580570d14
      s2=0.4244419664d12
      s3=0.3733650367d10
      s4=0.2245904002d8
      s5=0.1020426050d6
      s6=0.3549632885d3
      s7=1.d0
      if (abs(cx).lt.8.0d0) then
         cy=cx*cx
         cay1=cx*(r1+cy*(r2+cy*(r3+cy*(r4+cy*(r5+cy*r6)))))
         cby1=s1+cy*(s2+cy*(s3+cy*(s4+cy*(s5+cy*(s6+cy*s7)))))
         cdy1=0.636619772d0*(cbesj1*log(cx)-1.0d0/cx)
         cbesy1=cay1/cby1+cdy1
      else
         cz=8.0d0/cx
         cy=cz*cz
         cxx=cx-2.356194491d0
         cay1=sqrt(0.636619772d0/cx)
         cby1=sin(cxx)*(p1+cy*(p2+cy*(p3+cy*(p4+cy*p5))))
         cdy1=cz*cos(cxx)*(q1+cy*(q2+cy*(q3+cy*(q4+cy*q5))))
         cbesy1=cay1*(cby1+cdy1)
      end if
      return
      end
      subroutine hank2(cx,chank2)
      implicit complex*16 (c)
      implicit real*8 (a-b,d-h,o-z)
      call hank0(cx,chank0)
      call hank1(cx,chank1)
      chank2=2.0d0*chank1/cx-chank0
      return
      end
      subroutine cqzhes(nm,n,ar,ai,br,bi,matz,zr,zi,eps)
      implicit complex*16 (c)
      implicit real*8 (a-b,d-h,o-z)
      real*8 ar(nm,n),ai(nm,n),br(nm,n),bi(nm,n),zr(nm,n),zi(nm,n)
      logical matz
      if (.not. matz) go to 10
      do 3 i=1,n
         do 2 j=1,n
            zr(i,j)=0.0d0
            zi(i,j)=0.0d0
    2    continue
         zr(i,i)=1.0d0
    3 continue
   10 if (n.le.1) go to 170
      nm1=n-1
      do 100 l=1,nm1
         l1=l+1
         s=0.0d0
         do 20 i=l,n
            s=s+abs(br(i,l))+abs(bi(i,l))
   20    continue
         if (abs(s).le.eps) go to 100
         rho=0.0d0
         do 25 i=l,n
            br(i,l)=br(i,l)/s
            bi(i,l)=bi(i,l)/s
            rho=rho+br(i,l)**2+bi(i,l)**2
   25    continue
         r=sqrt(rho)
         xr=abs(cmplx(br(l,l),bi(l,l)))
         if (abs(xr).lt.eps) go to 27
         rho=rho+xr*r
         u1=-br(l,l)/xr
         u1i=-bi(l,l)/xr
         yr=r/xr+1.0d0
         br(l,l)=yr*br(l,l)
         bi(l,l)=yr*bi(l,l)
         go to 28
   27    br(l,l)=r
         u1=-1.0d0
         u1i=0.0d0
   28    do 50 j=l1,n
            t=0.0d0
            ti=0.0d0
            do 30 i=l,n
               t=t+br(i,l)*br(i,j)+bi(i,l)*bi(i,j)
               ti=ti+br(i,l)*bi(i,j)-bi(i,l)*br(i,j)
   30       continue
            t=t/rho
            ti=ti/rho
            do 40 i=l,n
               br(i,j)=br(i,j)-t*br(i,l)+ti*bi(i,l)
               bi(i,j)=bi(i,j)-t*bi(i,l)-ti*br(i,l)
   40       continue
            xi=u1*bi(l,j)-u1i*br(l,j)
            br(l,j)=u1*br(l,j)+u1i*bi(l,j)
            bi(l,j)=xi
   50    continue
         do 80 j=1,n
            t=0.0d0
            ti=0.0d0
            do 60 i=l,n
               t=t+br(i,l)*ar(i,j)+bi(i,l)*ai(i,j)
               ti=ti+br(i,l)*ai(i,j)-bi(i,l)*ar(i,j)
   60       continue
            t=t/rho
            ti=ti/rho
            do 70 i=l,n
               ar(i,j)=ar(i,j)-t*br(i,l)+ti*bi(i,l)
               ai(i,j)=ai(i,j)-t*bi(i,l)-ti*br(i,l)
   70       continue
            xi=u1*ai(l,j)-u1i*ar(l,j)
            ar(l,j)=u1*ar(l,j)+u1i*ai(l,j)
            ai(l,j)=xi
   80    continue
         br(l,l)=r*s
         bi(l,l)=0.0d0
         do 90 i=l1,n
            br(i,l)=0.0d0
            bi(i,l)=0.0d0
   90    continue
  100 continue
      do 160 k=1,nm1
         k1=k+1
         if (abs(ai(n,k)).le.eps) go to 105
         r=abs(cmplx(ar(n,k),ai(n,k)))
         u1=ar(n,k)/r
         u1i=ai(n,k)/r
         ar(n,k)=r
         ai(n,k)=0.0d0
         do 103 j=k1,n
            xi=u1*ai(n,j)-u1i*ar(n,j)
            ar(n,j)=u1*ar(n,j)+u1i*ai(n,j)
            ai(n,j)=xi
  103    continue
         xi=u1*bi(n,n)-u1i*br(n,n)
         br(n,n)=u1*br(n,n)+u1i*bi(n,n)
         bi(n,n)=xi
  105    if (k.eq.nm1) go to 170
         nk1=nm1-k
         do 150 lb=1,nk1
            l=n-lb
            l1=l+1
            s=abs(ar(l,k))+abs(ai(l,k))+ar(l1,k)
            if (abs(s).le.eps) go to 150
            u1=ar(l,k)/s
            u1i=ai(l,k)/s
            u2=ar(l1,k)/s
            r=sqrt(u1*u1+u1i*u1i+u2*u2)
            u1=u1/r
            u1i=u1i/r
            u2=u2/r
            ar(l,k)=r*s
            ai(l,k)=0.0d0
            ar(l1,k)=0.0d0
            do 110 j=k1,n
               xr=ar(l,j)
               xi=ai(l,j)
               yr=ar(l1,j)
               yi=ai(l1,j)
               ar(l,j)=u1*xr+u1i*xi+u2*yr
               ai(l,j)=u1*xi-u1i*xr+u2*yi
               ar(l1,j)=u1*yr-u1i*yi-u2*xr
               ai(l1,j)=u1*yi+u1i*yr-u2*xi
  110       continue
            xr=br(l,l)
            br(l,l)=u1*xr
            bi(l,l)=-u1i*xr
            br(l1,l)=-u2*xr
            do 120 j=l1,n
               xr=br(l,j)
               xi=bi(l,j)
               yr=br(l1,j)
               yi=bi(l1,j)
               br(l,j)=u1*xr+u1i*xi+u2*yr
               bi(l,j)=u1*xi-u1i*xr+u2*yi
               br(l1,j)=u1*yr-u1i*yi-u2*xr
               bi(l1,j)=u1*yi+u1i*yr-u2*xi
  120       continue
            s=abs(br(l1,l1))+abs(bi(l1,l1))+abs(br(l1,l))
            if (abs(s).le.eps) go to 150
            u1=br(l1,l1)/s
            u1i=bi(l1,l1)/s
            u2=br(l1,l)/s
            r=sqrt(u1*u1+u1i*u1i+u2*u2)
            u1=u1/r
            u1i=u1i/r
            u2=u2/r
            br(l1,l1)=r*s
            bi(l1,l1)=0.0d0
            br(l1,l)=0.0d0
            do 130 i=1,l
               xr=br(i,l1)
               xi=bi(i,l1)
               yr=br(i,l)
               yi=bi(i,l)
               br(i,l1)=u1*xr+u1i*xi+u2*yr
               bi(i,l1)=u1*xi-u1i*xr+u2*yi
               br(i,l)=u1*yr-u1i*yi-u2*xr
               bi(i,l)=u1*yi+u1i*yr-u2*xi
  130       continue
            do 140 i=1,n
               xr=ar(i,l1)
               xi=ai(i,l1)
               yr=ar(i,l)
               yi=ai(i,l)
               ar(i,l1)=u1*xr+u1i*xi+u2*yr
               ai(i,l1)=u1*xi-u1i*xr+u2*yi
               ar(i,l)=u1*yr-u1i*yi-u2*xr
               ai(i,l)=u1*yi+u1i*yr-u2*xi
  140       continue
            if (.not. matz) go to 150
            do 145 i=1,n
               xr=zr(i,l1)
               xi=zi(i,l1)
               yr=zr(i,l)
               yi=zi(i,l)
               zr(i,l1)=u1*xr+u1i*xi+u2*yr
               zi(i,l1)=u1*xi-u1i*xr+u2*yi
               zr(i,l)=u1*yr-u1i*yi-u2*xr
               zi(i,l)=u1*yi+u1i*yr-u2*xi
  145       continue
  150    continue
  160 continue
  170 return
      end
      subroutine cqzval(nm,n,ar,ai,br,bi,eps1,alfr,alfi,beta
     &                 ,matz,zr,zi,ierr)
      integer i,j,k,l,n,en,k1,k2,ll,l1,na,nm,its,km1,lm1,
     &        enm2,ierr,lor1,enorn
      real*8 ar(nm,n),ai(nm,n),br(nm,n),bi(nm,n),alfr(n),alfi(n),
     &       beta(n),zr(nm,n),zi(nm,n)
      real*8 r,s,a1,a2,ep,sh,u1,u2,xi,xr,yi,yr,ani,a1i,a33,a34,a43,a44,
     &       bni,b11,b33,b44,shi,u1i,a33i,a34i,a43i,a44i,b33i,b44i,
     &       epsa,epsb,eps1,anorm,bnorm,b3344,b3344i
      logical matz
      complex*16 z3
      ierr=0
      anorm=0.0d0
      bnorm=0.0d0
      do 30 i=1,n
         ani=0.0d0
         if (i.ne.1) ani=abs(ar(i,i-1))
         bni=0.0d0
         do 20 j=i,n
            ani=ani+abs(ar(i,j))+abs(ai(i,j))
            bni=bni+abs(br(i,j))+abs(bi(i,j))
   20    continue
         if (ani.gt.anorm) anorm=ani
         if (bni.gt.bnorm) bnorm=bni
   30 continue
      if (anorm.eq.0.0d0) anorm=1.0d0
      if (bnorm.eq.0.0d0) bnorm=1.0d0
      ep=eps1
      if (ep.gt.0.0d0) go to 50
      ep=1.0d0
   40 ep=ep/2.0d0
      if (1.0d0+ep.gt.1.0d0) go to 40
   50 epsa=ep*anorm
      epsb=ep*bnorm
      lor1=1
      enorn=n
      en=n
   60 if (en.eq.0) go to 1001
      if (.not. matz) enorn=en
      its=0
      na=en-1
      enm2=na-1
   70 do 80 ll=1,en
         lm1=en-ll
         l=lm1+1
         if (l.eq.1) go to 95
         if (abs(ar(l,lm1)).le.epsa) go to 90
   80 continue
   90 ar(l,lm1)=0.0d0
   95 b11=abs(cmplx(br(l,l),bi(l,l)))
      if (b11.eq.0.0d0) go to 98
      u1=br(l,l)/b11
      u1i=bi(l,l)/b11
      do 97 j=l,enorn
         xi=u1*ai(l,j)-u1i*ar(l,j)
         ar(l,j)=u1*ar(l,j)+u1i*ai(l,j)
         ai(l,j)=xi
         xi=u1*bi(l,j)-u1i*br(l,j)
         br(l,j)=u1*br(l,j)+u1i*bi(l,j)
         bi(l,j)=xi
   97 continue
      bi(l,l)=0.0d0
   98 if (l.ne.en) go to 100
      alfr(en)=ar(en,en)
      alfi(en)=ai(en,en)
      beta(en)=b11
      en = na
      go to 60
  100 l1=l+1
      if (b11.gt.epsb) go to 120
      br(l,l)=0.0d0
      s=abs(ar(l,l))+abs(ai(l,l))+abs(ar(l1,l))
      u1=ar(l,l)/s
      u1i=ai(l,l)/s
      u2=ar(l1,l)/s
      r=sqrt(u1*u1+u1i*u1i+u2*u2)
      u1=u1/r
      u1i=u1i/r
      u2=u2/r
      ar(l,l)=r*s
      ai(l,l)=0.0d0
      do 110 j=l1,enorn
         xr=ar(l,j)
         xi=ai(l,j)
         yr=ar(l1,j)
         yi=ai(l1,j)
         ar(l,j)=u1*xr+u1i*xi+u2*yr
         ai(l,j)=u1*xi-u1i*xr+u2*yi
         ar(l1,j)=u1*yr-u1i*yi-u2*xr
         ai(l1,j)=u1*yi+u1i*yr-u2*xi
         xr=br(l,j)
         xi=bi(l,j)
         yr=br(l1,j)
         yi=bi(l1,j)
         br(l1,j)=u1*yr-u1i*yi-u2*xr
         br(l,j)=u1*xr+u1i*xi+u2*yr
         bi(l,j)=u1*xi-u1i*xr+u2*yi
         bi(l1,j)=u1*yi+u1i*yr-u2*xi
  110 continue
      lm1=l
      l=l1
      go to 90
  120 if (its.eq.50) go to 1000
      if (its.eq.10) go to 135
      b33=br(na,na)
      b33i=bi(na,na)
      if (abs(cmplx(b33,b33i)).ge.epsb) go to 122
      b33=epsb
      b33i=0.0d0
  122 b44=br(en,en)
      b44i=bi(en,en)
      if (abs(cmplx(b44,b44i)).ge.epsb) go to 124
      b44=epsb
      b44i=0.0d0
  124 b3344=b33*b44-b33i*b44i
      b3344i=b33*b44i+b33i*b44
      a33=ar(na,na)*b44-ai(na,na)*b44i
      a33i=ar(na,na)*b44i+ai(na,na)*b44
      a34=ar(na,en)*b33-ai(na,en)*b33i
     &    -ar(na,na)*br(na,en)+ai(na,na)*bi(na,en)
      a34i=ar(na,en)*b33i+ai(na,en)*b33
     &     -ar(na,na)*bi(na,en)-ai(na,na)*br(na,en)
      a43=ar(en,na)*b44
      a43i=ar(en,na)*b44i
      a44=ar(en,en)*b33-ai(en,en)*b33i-ar(en,na)*br(na,en)
      a44i=ar(en,en)*b33i+ai(en,en)*b33-ar(en,na)*bi(na,en)
      sh=a44
      shi=a44i
      xr=a34*a43-a34i*a43i
      xi=a34*a43i+a34i*a43
      if (xr.eq.0.0d0.and.xi.eq.0.0d0) go to 140
      yr=(a33-sh)/2.0d0
      yi=(a33i-shi)/2.0d0
      z3=sqrt(cmplx(yr**2-yi**2+xr,2.0d0*yr*yi+xi))
      u1=real(z3)
      u1i=imag(z3)
      if (yr*u1+yi*u1i.ge.0.0d0) go to 125
      u1=-u1
      u1i=-u1i
  125 z3=(cmplx(sh,shi)-cmplx(xr,xi)/cmplx(yr+u1,yi+u1i))
     &   /cmplx(b3344,b3344i)
      sh=real(z3)
      shi=imag(z3)
      go to 140
  135 sh=ar(en,na)+ar(na,enm2)
      shi=0.0d0
  140 a1=ar(l,l)/b11-sh
      a1i=ai(l,l)/b11-shi
      a2=ar(l1,l)/b11
      its=its+1
      if (.not. matz) lor1=l
      do 260 k=l,na
         k1=k+1
         k2=k+2
         km1=max0(k-1,l)
         if (k.eq.l) go to 170
         a1=ar(k,km1)
         a1i=ai(k,km1)
         a2=ar(k1,km1)
  170    s=abs(a1)+abs(a1i)+abs(a2)
         u1=a1/s
         u1i=a1i/s
         u2=a2/s
         r=sqrt(u1*u1+u1i*u1i+u2*u2)
         u1=u1/r
         u1i=u1i/r
         u2=u2/r
         do 180 j=km1,enorn
            xr=ar(k,j)
            xi=ai(k,j)
            yr=ar(k1,j)
            yi=ai(k1,j)
            ar(k,j)=u1*xr+u1i*xi+u2*yr
            ai(k,j)=u1*xi-u1i*xr+u2*yi
            ar(k1,j)=u1*yr-u1i*yi-u2*xr
            ai(k1,j)=u1*yi+u1i*yr-u2*xi
            xr=br(k,j)
            xi=bi(k,j)
            yr=br(k1,j)
            yi=bi(k1,j)
            br(k,j)=u1*xr+u1i*xi+u2*yr
            bi(k,j)=u1*xi-u1i*xr+u2*yi
            br(k1,j)=u1*yr-u1i*yi-u2*xr
            bi(k1,j)=u1*yi+u1i*yr-u2*xi
  180    continue
         if (k.eq.l) go to 240
         ai(k,km1)=0.0d0
         ar(k1,km1)=0.0d0
         ai(k1,km1)=0.0d0
  240    s=abs(br(k1,k1))+abs(bi(k1,k1))+abs(br(k1,k))
         u1=br(k1,k1)/s
         u1i=bi(k1,k1)/s
         u2=br(k1,k)/s
         r=sqrt(u1*u1+u1i*u1i+u2*u2)
         u1=u1/r
         u1i=u1i/r
         u2=u2/r
         if (k.eq.na) go to 245
         xr=ar(k2,k1)
         ar(k2,k1)=u1*xr
         ai(k2,k1)=-u1i*xr
         ar(k2,k)=-u2*xr
  245    do 250 i=lor1,k1
            xr=ar(i,k1)
            xi=ai(i,k1)
            yr=ar(i,k)
            yi=ai(i,k)
            ar(i,k1)=u1*xr+u1i*xi+u2*yr
            ai(i,k1)=u1*xi-u1i*xr+u2*yi
            ar(i,k)=u1*yr-u1i*yi-u2*xr
            ai(i,k)=u1*yi+u1i*yr-u2*xi
            xr=br(i,k1)
            xi=bi(i,k1)
            yr=br(i,k)
            yi=bi(i,k)
            br(i,k1)=u1*xr+u1i*xi+u2*yr
            bi(i,k1)=u1*xi-u1i*xr+u2*yi
            br(i,k)=u1*yr-u1i*yi-u2*xr
            bi(i,k)=u1*yi+u1i*yr-u2*xi
  250    continue
         bi(k1,k1)=0.0d0
         br(k1,k)=0.0d0
         bi(k1,k)=0.0d0
         if (.not. matz) go to 260
         do 255 i=1,n
            xr=zr(i,k1)
            xi=zi(i,k1)
            yr=zr(i,k)
            yi=zi(i,k)
            zr(i,k1)=u1*xr+u1i*xi+u2*yr
            zi(i,k1)=u1*xi-u1i*xr+u2*yi
            zr(i,k)=u1*yr-u1i*yi-u2*xr
            zi(i,k)=u1*yi+u1i*yr-u2*xi
  255    continue
  260 continue
      if (ai(en,na).eq.0.0d0) go to 70
      r=abs(cmplx(ar(en,na),ai(en,na)))
      u1=ar(en,na)/r
      u1i=ai(en,na)/r
      ar(en,na)=r
      ai(en,na)=0.0d0
      do 270 j=en,enorn
         xi=u1*ai(en,j)-u1i*ar(en,j)
         ar(en,j)=u1*ar(en,j)+u1i*ai(en,j)
         ai(en,j)=xi
         xi=u1*bi(en,j)-u1i*br(en,j)
         br(en,j)=u1*br(en,j)+u1i*bi(en,j)
         bi(en,j)=xi
  270 continue
      go to 70
 1000 ierr = en
 1001 if (n.gt.1) br(n,1)=epsb
      return
      end
      subroutine cqzvec(nm,n,ar,ai,br,bi,alfr,alfi,beta,zr,zi)
      integer i,j,k,m,n,en,ii,jj,na,nm,nn
      real*8 ar(nm,n),ai(nm,n),br(nm,n),bi(nm,n),alfr(n),alfi(n),
     &       beta(n),zr(nm,n),zi(nm,n)
      real*8 r,t,ri,ti,xi,almi,almr,betm,epsb
      complex*8 z3
      if (n.le.1) go to 1001
      epsb=br(n,1)
      do 800 nn=2,n
         en=n+2-nn
         na=en-1
         almr=alfr(en)
         almi=alfi(en)
         betm=beta(en)
         do 700 ii=1,na
            i=en-ii
            r=0.0d0
            ri=0.0d0
            m=i+1
            do 610 j=m,en
               t=betm*ar(i,j)-almr*br(i,j)+almi*bi(i,j)
               ti=betm*ai(i,j)-almr*bi(i,j)-almi*br(i,j)
               if (j.eq.en) go to 605
               xi=t*bi(j,en)+ti*br(j,en)
               t=t*br(j,en)-ti*bi(j,en)
               ti=xi
  605          r=r+t
               ri=ri+ti
  610       continue
            t=almr*beta(i)-betm*alfr(i)
            ti=almi*beta(i)-betm*alfi(i)
            if (t.eq.0.0d0.and.ti.eq.0.0d0) t=epsb
            z3=cmplx(r,ri)/cmplx(t,ti)
            br(i,en)=real(z3)
            bi(i,en)=imag(z3)
  700    continue
  800 continue
      do 880 jj=2,n
         j=n+2-jj
         m=j-1
         do 880 i=1,n
            do 860 k=1,m
               zr(i,j)=zr(i,j)+zr(i,k)*br(k,j)-zi(i,k)*bi(k,j)
               zi(i,j)=zi(i,j)+zr(i,k)*bi(k,j)+zi(i,k)*br(k,j)
  860       continue
  880 continue
      do 950 j=1,n
         t=0.0d0
         do 930 i=1,n
            r=abs(cmplx(zr(i,j),zi(i,j)))
            if (r.gt.t) t=r
  930    continue
         do 940 i=1,n
            zr(i,j)=zr(i,j)/t
            zi(i,j)=zi(i,j)/t
  940    continue
  950 continue
 1001 return
      end
      subroutine bem(el10,el13                    ,el1b
     &              ,el20,el23
     &              ,el30,el31,el32,el34,el36     ,el3b
     &              ,el40,el43,el45          ,el4a
     &              ,el54,el56               ,el5a
     &              ,el63,el65,el67          ,el6a,el6b
     &              ,el76                    ,el7a,el7b
     &              ,n10 ,n13                     ,nb1
     &              ,n20 ,n23
     &              ,n30 ,n31 ,n32 ,n34 ,n36      ,nb3
     &              ,n40 ,n43 ,n45           ,na4
     &              ,n54 ,n56                ,na5
     &              ,n63 ,n65 ,n67           ,na6 ,nb6
     &              ,n76                     ,na7 ,nb7)
      implicit complex*16 (a-c)
      implicit real*8 (d-h,o-z)
      parameter (pi=3.14159265358979323d0)
      real*8 el10(n10,2,2),el13(n13,2,2)              ,el1b(nb1,2,2)
      real*8 el20(n20,2,2),el23(n23,2,2)
      real*8 el30(n30,2,2),el31(n31,2,2)
      real*8 el32(n32,2,2),el34(n34,2,2)
      real*8 el36(n36,2,2)                            ,el3b(nb3,2,2)
      real*8 el40(n40,2,2),el43(n43,2,2)
      real*8 el45(n45,2,2)              ,el4a(na4,2,2)
      real*8 el54(n54,2,2),el56(n56,2,2),el5a(na5,2,2)
      real*8 el63(n63,2,2),el65(n65,2,2)
      real*8 el67(n67,2,2)              ,el6a(na6,2,2),el6b(nb6,2,2)
      real*8 el76(n76,2,2)              ,el7a(na7,2,2),el7b(nb7,2,2)
      do 10 i=1,20
         el10(i,1,1)=0.360d0+i*0.002d0
         el10(i,2,1)=0.360d0+(i-1)*0.002d0
         el10(i,1,2)=0.010d0-i*0.010d0/20
         el10(i,2,2)=0.010d0-(i-1)*0.010d0/20
   10 continue
      do 11 i=21,n10
         el10(i,1,1)=0.400d0+(i-20)*0.002d0
         el10(i,2,1)=0.400d0+(i-21)*0.002d0
         el10(i,1,2)=0.000d0
         el10(i,2,2)=0.000d0
   11 continue
      do 12 i=1,n13
         el13(i,1,1)=0.360d0+(i-1)*0.002d0
         el13(i,2,1)=0.360d0+i*0.002d0
         el13(i,1,2)=0.010d0
         el13(i,2,2)=0.010d0
   12 continue
      do 21 i=1,20
         el20(i,1,1)=0.200d0+i*0.002d0
         el20(i,2,1)=0.200d0+(i-1)*0.002d0
         el20(i,1,2)=0.025d0-i*0.015d0/20
         el20(i,2,2)=0.025d0-(i-1)*0.015d0/20
   21 continue
      do 22 i=21,n20
         el20(i,1,1)=0.240d0+(i-20)*0.002d0
         el20(i,2,1)=0.240d0+(i-21)*0.002d0
         el20(i,1,2)=0.010d0
         el20(i,2,2)=0.010d0
   22 continue
      do 23 i=1,40
         el23(i,1,1)=0.200d0+(i-1)*0.002d0
         el23(i,2,1)=0.200d0+i*0.002d0
         el23(i,1,2)=0.025d0
         el23(i,2,2)=0.025d0
   23 continue
      do 24 i=41,n23
         el23(i,1,1)=0.280d0+(i-41)*0.002d0
         el23(i,2,1)=0.280d0+(i-40)*0.002d0
         el23(i,1,2)=0.025d0-0.015d0*(i-41)/20
         el23(i,2,2)=0.025d0-0.015d0*(i-40)/20
   24 continue
      do 31 i=1,20
         el30(i,1,1)=0.160d0+i*0.002d0
         el30(i,2,1)=0.160d0+(i-1)*0.002d0
         el30(i,1,2)=0.040d0-i*0.015d0/20
         el30(i,2,2)=0.040d0-(i-1)*0.015d0/20
   31 continue
      do 32 i=21,n30
         el30(i,1,1)=0.320d0+(i-20)*0.002d0
         el30(i,2,1)=0.320d0+(i-21)*0.002d0
         el30(i,1,2)=0.010d0
         el30(i,2,2)=0.010d0
   32 continue
      do 33 i=1,n31
         el31(i,1,1)=0.360d0+i*0.002d0
         el31(i,2,1)=0.360d0+(i-1)*0.002d0
         el31(i,1,2)=0.010d0
         el31(i,2,2)=0.010d0
   33 continue
      do 34 i=1,40
         el32(i,1,1)=0.200d0+i*0.002d0
         el32(i,2,1)=0.200d0+(i-1)*0.002d0
         el32(i,1,2)=0.025d0
         el32(i,2,2)=0.025d0
   34 continue
      do 35 i=41,n32
         el32(i,1,1)=0.280d0+(i-40)*0.002d0
         el32(i,2,1)=0.280d0+(i-41)*0.002d0
         el32(i,1,2)=0.025d0-(i-40)*0.015d0/20
         el32(i,2,2)=0.025d0-(i-41)*0.015d0/20
   35 continue
      do 36 i=1,n34
         el34(i,1,1)=0.120d0+i*0.002d0
         el34(i,2,1)=0.120d0+(i-1)*0.002d0
         el34(i,1,2)=0.060d0-i*0.020d0/20
         el34(i,2,2)=0.060d0-(i-1)*0.020d0/20
   36 continue
      do 37 i=1,n36
         el36(i,1,1)=0.120d0+(i-1)*0.010d0
         el36(i,2,1)=0.120d0+i*0.010d0
         el36(i,1,2)=0.060d0-(i-1)*0.030d0/38
         el36(i,2,2)=0.060d0-i*0.030d0/38
   37 continue
      do 41 i=1,n40
         el40(i,1,1)=0.000d0+i*0.002d0
         el40(i,2,1)=0.000d0+(i-1)*0.002d0
         el40(i,1,2)=0.040d0
         el40(i,2,2)=0.040d0
   41 continue
      do 42 i=1,n43
         el43(i,1,1)=0.120d0+(i-1)*0.002d0
         el43(i,2,1)=0.120d0+i*0.002d0
         el43(i,1,2)=0.060d0-(i-1)*0.020d0/20
         el43(i,2,2)=0.060d0-i*0.020d0/20
   42 continue
      do 43 i=1,n45
         el45(i,1,1)=0.000d0+(i-1)*0.002d0
         el45(i,2,1)=0.000d0+i*0.002d0
         el45(i,1,2)=0.060d0
         el45(i,2,2)=0.060d0
   43 continue
      do 51 i=1,n54
         el54(i,1,1)=0.000d0+i*0.002d0
         el54(i,2,1)=0.000d0+(i-1)*0.002d0
         el54(i,1,2)=0.060d0
         el54(i,2,2)=0.060d0
   51 continue
      do 52 i=1,n56
         el56(i,1,1)=0.000d0+(i-1)*0.006d0
         el56(i,2,1)=0.000d0+i*0.006d0
         el56(i,1,2)=0.080d0-(i-1)*0.020d0/20
         el56(i,2,2)=0.080d0-i*0.020d0/20
   52 continue
      do 61 i=1,n63
         el63(i,1,1)=0.120d0+i*0.010d0
         el63(i,2,1)=0.120d0+(i-1)*0.010d0
         el63(i,1,2)=0.060d0-i*0.030d0/38
         el63(i,2,2)=0.060d0-(i-1)*0.030d0/38
   61 continue
      do 62 i=1,n65
         el65(i,1,1)=0.000d0+i*0.006d0
         el65(i,2,1)=0.000d0+(i-1)*0.006d0
         el65(i,1,2)=0.080d0-i*0.020d0/20
         el65(i,2,2)=0.080d0-(i-1)*0.020d0/20
   62 continue
      do 63 i=1,n67
         el67(i,1,1)=0.000d0+(i-1)*0.02d0
         el67(i,2,1)=0.000d0+i*0.02d0
         el67(i,1,2)=0.160d0-(i-1)*0.070d0/25
         el67(i,2,2)=0.160d0-i*0.070d0/25
   63 continue
      do 71 i=1,n76
         el76(i,1,1)=0.000d0+i*0.02d0
         el76(i,2,1)=0.000d0+(i-1)*0.02d0
         el76(i,1,2)=0.160d0-i*0.070d0/25
         el76(i,2,2)=0.160d0-(i-1)*0.070d0/25
   71 continue
      do 100 i=1,na4
         el4a(i,1,1)=0.000d0
         el4a(i,2,1)=0.000d0
         el4a(i,1,2)=0.040d0+(i-1)*0.005d0
         el4a(i,2,2)=0.040d0+i*0.005d0
  100 continue
      do 110 i=1,na5
         el5a(i,1,1)=0.000d0
         el5a(i,2,1)=0.000d0
         el5a(i,1,2)=0.060d0+(i-1)*0.005d0
         el5a(i,2,2)=0.060d0+i*0.005d0
  110 continue
      do 120 i=1,na6
         el6a(i,1,1)=0.000d0
         el6a(i,2,1)=0.000d0
         el6a(i,1,2)=0.080d0+(i-1)*0.02d0
         el6a(i,2,2)=0.080d0+i*0.02d0
  120 continue
      do 130 i=1,na7
         el7a(i,1,1)=0.000d0
         el7a(i,2,1)=0.000d0
         el7a(i,1,2)=0.160d0+(i-1)*0.04d0
         el7a(i,2,2)=0.160d0+i*0.04d0
  130 continue
      do 200 i=1,nb1
         el1b(i,1,1)=0.500d0
         el1b(i,2,1)=0.500d0
         el1b(i,1,2)=0.000d0+i*0.005d0
         el1b(i,2,2)=0.000d0+(i-1)*0.005d0
  200 continue
      do 210 i=1,nb3
         el3b(i,1,1)=0.500d0
         el3b(i,2,1)=0.500d0
         el3b(i,1,2)=0.010d0+i*0.005d0
         el3b(i,2,2)=0.010d0+(i-1)*0.005d0
  210 continue
      do 220 i=1,nb6
         el6b(i,1,1)=0.500d0
         el6b(i,2,1)=0.500d0
         el6b(i,1,2)=0.030d0+i*0.02d0
         el6b(i,2,2)=0.030d0+(i-1)*0.02d0
  220 continue
      do 230 i=1,nb7
         el7b(i,1,1)=0.500d0
         el7b(i,2,1)=0.500d0
         el7b(i,1,2)=0.090d0+i*0.04d0
         el7b(i,2,2)=0.090d0+(i-1)*0.04d0
  230 continue
      return
      end
      subroutine tlpa(ne,h,cpm,cpl,cva,cvb,pb)
      implicit complex*16 (a-c)
      implicit real*8 (d-h,o-z)
      parameter (pi=3.14159265358979323d0,ci=(0.0d0,1.0d0))
      real*8 h(ne),pb(ne)
      complex*16 cpm(ne),cpl(ne),cva(ne),cvb(ne)
      do 10 i=1,4
         h(i)=0.005d0
         pb(i)=1.65d0
         cpm(i)=1.65d0*0.19d0*0.19d0*(1.0d0+ci/20.0d0)
         cpl(i)=1.65d0*(0.34d0*0.34d0-2.0d0*0.19d0*0.19d0)
     &                *(1.0d0+ci/20.0d0)
         cva(i)=sqrt((cpl(i)+2.0d0*cpm(i))/pb(i))
         cvb(i)=sqrt(cpm(i)/pb(i))
   10 continue
      do 20 i=5,8
         h(i)=0.005d0
         pb(i)=1.8d0
         cpm(i)=1.8d0*0.22d0*0.22d0*(1.0d0+ci/25.0d0)
         cpl(i)=1.80d0*(0.45d0*0.45d0-2.0d0*0.22d0*0.22d0)
     &                *(1.0d0+ci/25.0d0)
         cva(i)=sqrt((cpl(i)+2.0d0*cpm(i))/pb(i))
         cvb(i)=sqrt(cpm(i)/pb(i))
   20 continue
      do 30 i=9,12
         h(i)=0.02d0
         pb(i)=1.9d0
         cpm(i)=1.9d0*0.63d0*0.63d0*(1.0d0+ci/35.0d0)
         cpl(i)=1.90d0*(2.70d0*2.70d0-2.0d0*0.63d0*0.63d0)
     &                *(1.0d0+ci/35.0d0)
         cva(i)=sqrt((cpl(i)+2.0d0*cpm(i))/pb(i))
         cvb(i)=sqrt(cpm(i)/pb(i))
   30 continue
      do 40 i=13,ne
         h(i)=0.04d0
         pb(i)=2.2d0
         cpm(i)=2.2d0*1.4d0*1.4d0*(1.0d0+ci/80.0d0)
         cpl(i)=2.20d0*(4.50d0*4.50d0-2.0d0*1.40d0*1.40d0)
     &                *(1.0d0+ci/80.0d0)
         cva(i)=sqrt((cpl(i)+2.0d0*cpm(i))/pb(i))
         cvb(i)=sqrt(cpm(i)/pb(i))
   40 continue
      return
      end
      subroutine tlpb(ne,h,cpm,cpl,cva,cvb,pb)
      implicit complex*16 (a-c)
      implicit real*8 (d-h,o-z)
      parameter (pi=3.14159265358979323d0,ci=(0.0d0,1.0d0))
      real*8 h(ne),pb(ne)
      complex*16 cpm(ne),cpl(ne),cva(ne),cvb(ne)
      do 10 i=1,2
         h(i)=0.005d0
         pb(i)=1.6d0
         cpm(i)=1.6d0*0.15d0*0.15d0*(1.0d0+ci/15.0d0)
         cpl(i)=1.60d0*(0.24d0*0.24d0-2.0d0*0.15d0*0.15d0)
     &                *(1.0d0+ci/15.0d0)
         cva(i)=sqrt((cpl(i)+2.0d0*cpm(i))/pb(i))
         cvb(i)=sqrt(cpm(i)/pb(i))
   10 continue
      do 20 i=3,6
         h(i)=0.005d0
         pb(i)=1.78d0
         cpm(i)=1.78d0*0.34d0*0.34d0*(1.0d0+ci/25.0d0)
         cpl(i)=1.78d0*(1.10d0*1.10d0-2.0d0*0.34d0*0.34d0)
     &                *(1.0d0+ci/25.0d0)
         cva(i)=sqrt((cpl(i)+2.0d0*cpm(i))/pb(i))
         cvb(i)=sqrt(cpm(i)/pb(i))
   20 continue
      do 30 i=7,9
         h(i)=0.02d0
         pb(i)=1.9d0
         cpm(i)=1.9d0*0.63d0*0.63d0*(1.0d0+ci/35.0d0)
         cpl(i)=1.90d0*(2.70d0*2.70d0-2.0d0*0.63d0*0.63d0)
     &                *(1.0d0+ci/35.0d0)
         cva(i)=sqrt((cpl(i)+2.0d0*cpm(i))/pb(i))
         cvb(i)=sqrt(cpm(i)/pb(i))
   30 continue
      do 40 i=10,ne
         h(i)=0.04d0
         pb(i)=2.2d0
         cpm(i)=2.2d0*1.4d0*1.4d0*(1.0d0+ci/80.0d0)
         cpl(i)=2.20d0*(4.50d0*4.50d0-2.0d0*1.40d0*1.40d0)
     &                *(1.0d0+ci/80.0d0)
         cva(i)=sqrt((cpl(i)+2.0d0*cpm(i))/pb(i))
         cvb(i)=sqrt(cpm(i)/pb(i))
   40 continue
      return
      end
      subroutine output(ne,nt,cu)
      implicit complex*16 (a-c)
      implicit real*8 (d-h,o-z)
      complex*16 cu(ne,nt)
       open(unit=10,file='mz7b1001.x',status='unknown')
       open(unit=11,file='mz7b1001.z',status='unknown')
       write(10,*) (((cu(i,j)),i=1,1),j=1,nt)
       write(11,*) (((cu(i,j)),i=71,71),j=1,nt)
       open(unit=12,file='mz7b1010.x',status='unknown')
       open(unit=13,file='mz7b1010.z',status='unknown')
       write(12,*) (((cu(i,j)),i=10,10),j=1,nt)
       write(13,*) (((cu(i,j)),i=80,80),j=1,nt)
       open(unit=14,file='mz7b1020.x',status='unknown')
       open(unit=15,file='mz7b1020.z',status='unknown')
       write(14,*) (((cu(i,j)),i=20,20),j=1,nt)
       write(15,*) (((cu(i,j)),i=90,90),j=1,nt)
       open(unit=16,file='mz7b1025.x',status='unknown')
       open(unit=17,file='mz7b1025.z',status='unknown')
       write(16,*) (((cu(i,j)),i=25,25),j=1,nt)
       write(17,*) (((cu(i,j)),i=95,95),j=1,nt)
       open(unit=18,file='mz7b1030.x',status='unknown')
       open(unit=19,file='mz7b1030.z',status='unknown')
       write(18,*) (((cu(i,j)),i=30,30),j=1,nt)
       write(19,*) (((cu(i,j)),i=100,100),j=1,nt)
       open(unit=20,file='mz7b1040.x',status='unknown')
       open(unit=21,file='mz7b1040.z',status='unknown')
       write(20,*) (((cu(i,j)),i=40,40),j=1,nt)
       write(21,*) (((cu(i,j)),i=110,110),j=1,nt)
       open(unit=22,file='mz7b1050.x',status='unknown')
       open(unit=23,file='mz7b1050.z',status='unknown')
       write(22,*) (((cu(i,j)),i=50,50),j=1,nt)
       write(23,*) (((cu(i,j)),i=120,120),j=1,nt)
       open(unit=24,file='mz7b1060.x',status='unknown')
       open(unit=25,file='mz7b1060.z',status='unknown')
       write(24,*) (((cu(i,j)),i=60,60),j=1,nt)
       write(25,*) (((cu(i,j)),i=130,130),j=1,nt)
       open(unit=26,file='mz7b1065.x',status='unknown')
       open(unit=27,file='mz7b1065.z',status='unknown')
       write(26,*) (((cu(i,j)),i=65,65),j=1,nt)
       write(27,*) (((cu(i,j)),i=135,135),j=1,nt)
       open(unit=28,file='mz7b2001.x',status='unknown')
       open(unit=29,file='mz7b2001.z',status='unknown')
       write(28,*) (((cu(i,j)),i=421,421),j=1,nt)
       write(29,*) (((cu(i,j)),i=481,481),j=1,nt)
       open(unit=30,file='mz7b2010.x',status='unknown')
       open(unit=31,file='mz7b2010.z',status='unknown')
       write(30,*) (((cu(i,j)),i=430,430),j=1,nt)
       write(31,*) (((cu(i,j)),i=490,490),j=1,nt)
       open(unit=32,file='mz7b2020.x',status='unknown')
       open(unit=33,file='mz7b2020.z',status='unknown')
       write(32,*) (((cu(i,j)),i=440,440),j=1,nt)
       write(33,*) (((cu(i,j)),i=500,500),j=1,nt)
       open(unit=34,file='mz7b2025.x',status='unknown')
       open(unit=35,file='mz7b2025.z',status='unknown')
       write(34,*) (((cu(i,j)),i=445,445),j=1,nt)
       write(35,*) (((cu(i,j)),i=505,505),j=1,nt)
       open(unit=36,file='mz7b2030.x',status='unknown')
       open(unit=37,file='mz7b2030.z',status='unknown')
       write(36,*) (((cu(i,j)),i=450,450),j=1,nt)
       write(37,*) (((cu(i,j)),i=510,510),j=1,nt)
       open(unit=38,file='mz7b2040.x',status='unknown')
       open(unit=39,file='mz7b2040.z',status='unknown')
       write(38,*) (((cu(i,j)),i=460,460),j=1,nt)
       write(39,*) (((cu(i,j)),i=520,520),j=1,nt)
       open(unit=40,file='mz7b2050.x',status='unknown')
       open(unit=41,file='mz7b2050.z',status='unknown')
       write(40,*) (((cu(i,j)),i=470,470),j=1,nt)
       write(41,*) (((cu(i,j)),i=530,530),j=1,nt)
       open(unit=42,file='mz7b3001.x',status='unknown')
       open(unit=43,file='mz7b3001.z',status='unknown')
       write(42,*) (((cu(i,j)),i=781,781),j=1,nt)
       write(43,*) (((cu(i,j)),i=821,821),j=1,nt)
       open(unit=44,file='mz7b3010.x',status='unknown')
       open(unit=45,file='mz7b3010.z',status='unknown')
       write(44,*) (((cu(i,j)),i=790,790),j=1,nt)
       write(45,*) (((cu(i,j)),i=830,830),j=1,nt)
       open(unit=46,file='mz7b3021.x',status='unknown')
       open(unit=47,file='mz7b3021.z',status='unknown')
       write(46,*) (((cu(i,j)),i=801,801),j=1,nt)
       write(47,*) (((cu(i,j)),i=841,841),j=1,nt)
       open(unit=48,file='mz7b3030.x',status='unknown')
       open(unit=49,file='mz7b3030.z',status='unknown')
       write(48,*) (((cu(i,j)),i=810,810),j=1,nt)
       write(49,*) (((cu(i,j)),i=850,850),j=1,nt)
       open(unit=50,file='mz7b4001.x',status='unknown')
       open(unit=51,file='mz7b4001.z',status='unknown')
       write(50,*) (((cu(i,j)),i=1093,1093),j=1,nt)
       write(51,*) (((cu(i,j)),i=1173,1173),j=1,nt)
       open(unit=52,file='mz7b4020.x',status='unknown')
       open(unit=53,file='mz7b4020.z',status='unknown')
       write(52,*) (((cu(i,j)),i=1112,1112),j=1,nt)
       write(53,*) (((cu(i,j)),i=1192,1192),j=1,nt)
       open(unit=54,file='mz7b4040.x',status='unknown')
       open(unit=55,file='mz7b4040.z',status='unknown')
       write(54,*) (((cu(i,j)),i=1132,1132),j=1,nt)
       write(55,*) (((cu(i,j)),i=1212,1212),j=1,nt)
       open(unit=56,file='mz7b4060.x',status='unknown')
       open(unit=57,file='mz7b4060.z',status='unknown')
       write(56,*) (((cu(i,j)),i=1152,1152),j=1,nt)
       write(57,*) (((cu(i,j)),i=1232,1232),j=1,nt)
       open(unit=58,file='mz7b.dat',status='unknown')
       write(58,*) (((cu(i,j)),i=1,ne),j=1,nt)
       close(10)
       close(11)
       close(12)
       close(13)
       close(14)
       close(15)
       close(16)
       close(17)
       close(18)
       close(19)
       close(20)
       close(21)
       close(22)
       close(23)
       close(24)
       close(25)
       close(26)
       close(27)
       close(28)
       close(29)
       close(30)
       close(31)
       close(32)
       close(33)
       close(34)
       close(35)
       close(36)
       close(37)
       close(38)
       close(39)
       close(40)
       close(41)
       close(42)
       close(43)
       close(44)
       close(45)
       close(46)
       close(47)
       close(48)
       close(49)
       close(51)
       close(52)
       close(53)
       close(54)
       close(55)
       close(56)
       close(57)
       close(58)
      return
      end
