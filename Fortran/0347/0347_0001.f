      implicit real*4(a-h,m-z)
      parameter (lj=5,lk=3,li=3)
      dimension ro(lj,lk,li),m(lj,lk,li),n(lj,lk,li),o(lj,lk,li),
     *          bx(lj,lk,li),by(lj,lk,li),bz(lj,lk,li),p(lj,lk,li),
     *          u(lj,lk,li),ro1(lj,lk,li),m1(lj,lk,li),n1(lj,lk,li),
     *          o1(lj,lk,li),bx1(lj,lk,li),by1(lj,lk,li),
     *          bz1(lj,lk,li),u1(lj,lk,li),
     *          obmbr(lj,lk,li),obnbr(lj,lk,li),ufluxx(lj,lk,li),
     *          rbz(lj,lk,li),bxyz(lj,lk,li),bb(lj,lk,li),
     *          rbb(lj,lk,li),bx2(lj,lk,li),on(lj,lk,li),
     *          ufluxz(lj,lk,li),mn(lj,lk,li),om(lj,lk,li),
     *          ufluxy(lj,lk,li),or(lj,lk,li),by2(lj,lk,li),
     *                           rn(lj,lk,li),ror(lj,lk,li),
     *          rnb(lj,lk,li),mr(lj,lk,li),rmn(lj,lk,li),
     *          ron(lj,lk,li),rnr(lj,lk,li),rby(lj,lk,li),
     *          rno(lj,lk,li),
     *          bxy(lj,lk,li),bzy(lj,lk,li),rbzy(lj,lk,li),
     *          rbyz(lj,lk,li)
      dimension vtrno(lj,lk,li),vtror(lj,lk,li),vtrby(lj,lk,li),
     *          vtrbyz(lj,lk,li),
     *          vbxx(lj,lk,li),vbyy(lj,lk,li),vbzz(lj,lk,li),
     *          va1(lj,lk,li),va2(lj,lk,li),va3(lj,lk,li),
     *          vab(lj,lk,li)
      data ro /45*1.0/
      data m  /45*1/
      data n  /45*1/
      data o  /45*1.0/
      data bx /45*1.0/
      data by /45*1.0/
      data bz /45*1.0/
      data p  /45*1.0/
      data u  /45*1.0/
      data ro1/45*1.0/
      data m1 /45*1/
      data n1 /45*1/
      data o1 /45*1.0/
      data bx1/45*1.0/
      data by1/45*1.0/
      data bz1/45*1.0/
      data u1 /45*1.0/
      data obmbr/45*1.0/
      data obnbr/45*1.0/
      data ufluxx/45*1.0/
      data rbz/45*1.0/
      data bxyz/45*1.0/
      data bb /45*1.0/
      data rbb/45*1.0/
      data bx2/45*1.0/
      data on /45*1.0/
      data ufluxz/45*1.0/
      data mn /45*1/
      data om /45*1.0/
      data ufluxy/45*1.0/
      data or /45*1.0/
      data by2/45*1.0/
      data rn /45*1.0/
      data ror/45*1.0/
      data rnb/45*1.0/
      data mr /45*1/
      data rmn/45*1.0/
      data ron/45*1.0/
      data rnr/45*1.0/
      data rby/45*1.0/
      data rno/45*1.0/
      data bxy/45*1.0/
      data bzy/45*1.0/
      data rbzy/45*1.0/
      data rbyz/45*1.0/
      data vtrno/45*1.0/
      data vtror/45*1.0/
      data vtrby/45*1.0/
      data vtrbyz/45*1.0/
      data vbxx/45*1.0/
      data vbyy/45*1.0/
      data vbzz/45*1.0/
      data va1/45*1.0/
      data va2/45*1.0/
      data va3/45*1.0/
      data vab/45*1.0/
      asb = 1.0
      dt = 1.0
      dtdxr = 1.0
      dtdx2 = 1.0
      dtdyr = 1.0
      dtdzr = 1.0
      dtdz2 = 1.0
      fudge = 1.0
      iin = 1
      iip = 1
      jdn = 1
      jup = 2
      jdn = 4
      lln = 1
      llp = 1
      rhoadd = 1.
      l = 1
      do 1000 i=1,lj
        rno(i,1,1)= 1.0
        ror(i,1,1)= 2.0
        rby(i,1,1)= 3.0
        rbyz(i,1,1)= 4.0
        bx(i,1,1)= 1.0
        by(i,1,1)= 2.0
        bz(i,1,1)= 3.0
        by(i,1,1)= 4.0
        rbz(i,1,1)= 1.0
        bxyz(i,1,1)= 1.0
        rbz(i,1,1)= 1.0
        rbb(i,1,1)= 1.0
        rbzy(i,1,1)= 1.0
        bxyz(i,1,1)= 1.0
        vtrby(i,1,1)= 1.0
        bzy(i,1,1)= 1.0
        bx2(i,1,1)= 1.0
        bxy(i,1,1)= 1.0
        by2(i,1,1)= 1.0
        ro(i,1,1)= 1.0
        bb(i,1,1)= 1.0
        m(i,1,1)= 1.0
        n(i,1,1)= 1.0
        o(i,1,1)= 1.0
        rn(i,1,1)= 1.0
        mn(i,1,1)= 1.0
        mr(i,1,1)= 1.0
        rmn(i,1,1)= 1.0
        rnb(i,1,1)= 1.0
        rnr(i,1,1)= 1.0
        ron(i,1,1)= 1.0
        om(i,1,1)= 1.0
        on(i,1,1)= 1.0
        or(i,1,1)= 1.0
        p(i,1,1)= 1.0
        u(i,1,1)= 1.0
        obmbr(i,1,1)= 1.0
        obnbr(i,1,1)= 1.0
        ufluxx(i,1,1)= 1.0
        ufluxy(i,1,1)= 1.0
        ufluxz(i,1,1)= 1.0
 1000 continue
      i = 1
      do 5 j=jup,jdn,2
        vtrno(j,l,i)=(rno(j-1,l,i)+rno(j+1,l,i)
     *       +rno(j,l,iip)+rno(j,l,iin)
     *       +rno(j,llp,i)+rno(j,lln,i))/6.
        vtror(j,l,i)=(ror(j-1,l,i)+ror(j+1,l,i)
     *       +ror(j,l,iip)+ror(j,l,iin)
     *       +ror(j,llp,i)+ror(j,lln,i))/6.
        vtrby(j,l,i)=(rby(j-1,l,i)+rby(j+1,l,i)
     *       +rby(j,l,iip)+rby(j,l,iin)
     *       +rby(j,llp,i)+rby(j,lln,i))/6.
        vtrbyz(j,l,i)=(rbyz(j-1,l,i)+rbyz(j+1,l,i)
     *       +rbyz(j,l,iip)+rbyz(j,l,iin)
     *       +rbyz(j,llp,i)+rbyz(j,lln,i))/6.
      vbxx(j,l,i)=(bx(j-1,l,i)+bx(j+1,l,i)+bx(j,l,iip)+bx(j,l,iin)
     *    +bx(j,llp,i)+bx(j,lln,i))/6.
      vbyy(j,l,i)=(by(j-1,l,i)+by(j+1,l,i)+by(j,l,iip)+by(j,l,iin)
     *    +by(j,llp,i)+by(j,lln,i))/6.
      vbzz(j,l,i)=(bz(j-1,l,i)+bz(j+1,l,i)+bz(j,l,iip)+bz(j,l,iin)
     *    +bz(j,llp,i)+bz(j,lln,i))/6.
      va1(j,l,i)=(rbz(j,llp,i)-rbz(j,lln,i))*dtdzr
     1   -(bxyz(j,llp,i)-bxyz(j,lln,i))*dtdz2
     2   +(bb(j+1,l,i)-bb(j-1,l,i))*dtdx2
     3   -vtrby(j,l,i)*dt+(bzy(j,l,iip)-bzy(j,l,iin))*dtdyr
      va2(j,l,i)=(rbb(j,llp,i)-rbb(j,lln,i))*dtdzr
     1   -(bxyz(j+1,l,i)-bxyz(j-1,l,i))*dtdx2
     2   +(bx2(j+1,l,i)-bx2(j-1,l,i))*dtdx2
     3   +(bxy(j,l,iip)-bxy(j,l,iin))*dtdyr
      va3(j,l,i)=(rbzy(j,llp,i)-rbzy(j,lln,i))*dtdzr
     1   +vtrbyz(j,l,i)*dt+(by2(j,l,iip)-by2(j,l,iin)
     2   -(bxyz(j,l,iip)-bxyz(j,l,iin)))*dtdyr
     3   +(bxy(j+1,l,i)-bxy(j-1,l,i))*dtdx2
      vab(j,l,i)=(va1(j,l,i)*vbzz(j,l,i)+va2(j,l,i)
     *  *vbxx(j,l,i)+va3(j,l,i)*vbyy(j,l,i))
     *  /(vbxx(j,l,i)*vbxx(j,l,i)
     *  +vbzz(j,l,i)*vbzz(j,l,i)+vbyy(j,l,i)*vbyy(j,l,i))
      ro1(j,l,i)=(ro(j-1,l,i)+ro(j+1,l,i)
     *           +ro(j,l,iin)+ro(j,l,iip)
     *           +ro(j,llp,i)+ro(j,lln,i))/6.
     1 -(dtdx2*(m(j+1,l,i)-m(j-1,l,i))
     1 +dtdyr*(o(j,l,iip)-o(j,l,iin))
     2 +dtdzr*(rn(j,llp,i)-rn(j,lln,i)))*rhoadd
      m1(j,l,i)=(m(j-1,l,i)+m(j+1,l,i)
     1          +m(j,l,iin)+m(j,l,iip)
     *          +m(j,llp,i)+m(j,lln,i))/6.
     1 -(dtdx2*(p(j+1,l,i)-p(j-1,l,i)
     1  +mr(j+1,l,i)-mr(j-1,l,i))
     2  +dtdyr*(om(j,l,iip)-om(j,l,iin))
     3  +dtdzr*(rmn(j,llp,i)-rmn(j,lln,i))
     3  -va2(j,l,i)+va2(j,l,i)*vbxx(j,l,i))*fudge
      n1(j,l,i)=(n(j-1,l,i)+n(j+1,l,i)
     *          +n(j,l,iin)+n(j,l,iip)
     *          +n(j,llp,i)+n(j,lln,i))/6.
     1 -(dtdx2*(mn(j+1,l,i)-mn(j-1,l,i))
     1        +dtdz2*(p(j,llp,i)-p(j,lln,i))
     2        +dtdyr*(on(j,l,iip)-on(j,l,iin))
     3    +dtdzr*(rnr(j,llp,i)-rnr(j,lln,i))
     3    -dt*vtror(j,l,i)-va1(j,l,i)+vab(j,l,i)*vbzz(j,l,i))*fudge
      o1(j,l,i)=(o(j-1,l,i)+o(j+1,l,i)
     *          +o(j,l,iin)+o(j,l,iip)
     *          +o(j,llp,i)+o(j,lln,i))/6.
     1 -(dtdx2*(om(j+1,l,i)-om(j-1,l,i))
     1  +dtdzr*(ron(j,llp,i)
     2  -ron(j,lln,i))+dtdyr*
     2  (p(j,l,iip)-p(j,l,iin)
     3  +or(j,l,iip)-or(j,l,iin))
     3  +dt*vtrno(j,l,i)-va3(j,l,i)+vab(j,l,i)*vbyy(j,l,i))*fudge
      bx1(j,l,i) = vbxx(j,l,i)
     1  -dtdzr*(rnb(j,llp,i)-rnb(j,lln,i))
     2  -dtdyr*(obmbr(j,l,iip)-obmbr(j,l,iin))
      bz1(j,l,i) = vbzz(j,l,i)
     1  -dtdxr*(rnb(j+1,l,i)-rnb(j-1,l,i))
     2  -dtdyr*(obnbr(j,l,iip)-obnbr(j,l,iin))
      by1(j,l,i) = vbyy(j,l,i)
     1  -dtdx2*(obmbr(j+1,l,i)-obmbr(j-1,l,i))
     2  -dtdz2*(obnbr(j,llp,i)-obnbr(j,lln,i))
      u1 (j,l,i)=(u(j-1,l,i)+u(j+1,l,i)
     *    +u(j,l,iin)+u(j,l,iip)
     *    +u(j,llp,i)+u(j,lln,i))/6.
     1  -dtdx2*(ufluxx(j+1,l,i)-ufluxx(j-1,l,i))
     2  -dtdyr*(ufluxy(j,l,iip)-ufluxy(j,l,iin))
     3  -dtdzr*(ufluxz(j,llp,i)-ufluxz(j,lln,i))
   11 continue
    5     continue
      write(6,*) 'vtrno ',(vtrno(i,1,1),i=1,lj)
      write(6,*) 'vtror ',(vtror(i,1,1),i=1,lj)
      write(6,*) 'vtrby ',(vtrby(i,1,1),i=1,lj)
      write(6,*) 'vtrbyz ',(vtrbyz(i,1,1),i=1,lj)
      write(6,*) 'vbxx ',(vbxx(i,1,1),i=1,lj)
      write(6,*) 'vbyy ',(vbyy(i,1,1),i=1,lj)
      write(6,*) 'vbzz ',(vbzz(i,1,1),i=1,lj)
      write(6,*) 'va1 ',(va1(i,1,1),i=1,lj)
      write(6,*) 'va2 ',(va2(i,1,1),i=1,lj)
      write(6,*) 'va3 ',(va3(i,1,1),i=1,lj)
      write(6,*) 'vab ',(vab(i,1,1),i=1,lj)
      write(6,10000) (vab(i,1,1),i=1,lj)
10000 format(' vab ',5f10.5)
      write(6,*) 'ro1 ',(ro1(i,1,1),i=1,lj)
      write(6,*) 'm1 ',(m1(i,1,1),i=1,lj)
      write(6,10001) (vab(i,1,1),i=1,lj)
10001 format(' n1  ',5f10.5)
      write(6,10002) (o1(i,1,1),i=1,lj)
10002 format(' o1  ',5f10.5)
      write(6,*) 'bx1 ',(bx1(i,1,1),i=1,lj)
      write(6,*) 'bz1 ',(bz1(i,1,1),i=1,lj)
      write(6,*) 'by1 ',(by1(i,1,1),i=1,lj)
      write(6,*) 'u1 ',(u1(i,1,1),i=1,lj)
      stop
      end
