#include <stdlib.h>
#include <math.h>
#include <stdio.h>

struct st1{
        float tt[5][3][3];
} ro,m,n,o,bx,by,bz,p,u,ro1,m1,	n1,o1,bx1,
  by1,bz1,u1,obmbr,obnbr,ufluxx,rbz,bxyz,bb,
  rbb,bx2,on,ufluxz,mn,om,ufluxy,or,by2,
  rn,ror,rnb,mr,rmn,ron,rnr,rby,rno,
  bxy,bzy,rbzy,rbyz,vtrno,vtror,vtrby,vtrbyz,vbxx,
  vbyy,vbzz,va1,va2,va3,vab;
int main(){
	long int iin,iip,jdn,jup,lln,llp,l,i,j,k;
	float asb,dt,dtdxr,dtdx2,dtdyr,dtdzr,dtdz2,fudge,rhoadd;
	for(k=0;k<3;k++){
		for(j=0;j<3;j++){
			for(i=0;i<5;i++){
				ro.tt[i][j][k]=1.0;
				m.tt[i][j][k]=1.0;
				n.tt[i][j][k]=1.0;
				o.tt[i][j][k]=1.0;
				bx.tt[i][j][k]=1.0;
				by.tt[i][j][k]=1.0;
				bz.tt[i][j][k]=1.0;
				p.tt[i][j][k]=1.0;
				u.tt[i][j][k]=1.0;
				ro1.tt[i][j][k]=1.0;
				m1.tt[i][j][k]=1.0;
				n1.tt[i][j][k]=1.0;
				o1.tt[i][j][k]=1.0;
				bx1.tt[i][j][k]=1.0;
				by1.tt[i][j][k]=1.0;
				bz1.tt[i][j][k]=1.0;
				u1.tt[i][j][k]=1.0;
				obmbr.tt[i][j][k]=1.0;
				obnbr.tt[i][j][k]=1.0;
				ufluxx.tt[i][j][k]=1.0;
				rbz.tt[i][j][k]=1.0;
				bxyz.tt[i][j][k]=1.0;
				bb.tt[i][j][k]=1.0;
				rbb.tt[i][j][k]=1.0;
				bx2.tt[i][j][k]=1.0;
				on.tt[i][j][k]=1.0;
				ufluxz.tt[i][j][k]=1.0;
				mn.tt[i][j][k]=1.0;
				om.tt[i][j][k]=1.0;
				ufluxy.tt[i][j][k]=1.0;
				or.tt[i][j][k]=1.0;
				by2.tt[i][j][k]=1.0;
				rn.tt[i][j][k]=1.0;
				ror.tt[i][j][k]=1.0;
				rnb.tt[i][j][k]=1.0;
				mr.tt[i][j][k]=1.0;
				rmn.tt[i][j][k]=1.0;
				ron.tt[i][j][k]=1.0;
				rnr.tt[i][j][k]=1.0;
				rby.tt[i][j][k]=1.0;
				rno.tt[i][j][k]=1.0;
				bxy.tt[i][j][k]=1.0;
				bzy.tt[i][j][k]=1.0;
				rbzy.tt[i][j][k]=1.0;
				rbyz.tt[i][j][k]=1.0;
				vtrno.tt[i][j][k]=1.0;
				vtror.tt[i][j][k]=1.0;
				vtrby.tt[i][j][k]=1.0;
				vtrbyz.tt[i][j][k]=1.0;
				vbxx.tt[i][j][k]=1.0;
				vbyy.tt[i][j][k]=1.0;
				vbzz.tt[i][j][k]=1.0;
				va1.tt[i][j][k]=1.0;
				va2.tt[i][j][k]=1.0;
				va3.tt[i][j][k]=1.0;
				vab.tt[i][j][k]=1.0;
			}
		}
	}
	asb=1.0;
	dt=1.0;
	dtdxr=1.0;
	dtdx2=1.0;
	dtdyr=1.0;
	dtdzr=1.0;
	dtdz2=1.0;
	fudge=1.0;
	iin=0;
	iip=0;
	jdn=0;
	jup=1;
	jdn=3;
	lln=0;
	llp=0;
	rhoadd=1.0;
	l=0;
	for(i=0;i<5;i++){
		rno.tt[i][0][0]=1.0;
		ror.tt[i][0][0]=2.0;
		rby.tt[i][0][0]=3.0;
		rbyz.tt[i][0][0]=4.0;
		bx.tt[i][0][0]=1.0;
		by.tt[i][0][0]=2.0;
		bz.tt[i][0][0]=3.0;
		by.tt[i][0][0]=4.0;
		rbz.tt[i][0][0]=1.0;
		bxyz.tt[i][0][0]=1.0;
		rbz.tt[i][0][0]=1.0;
		rbb.tt[i][0][0]=1.0;
		rbzy.tt[i][0][0]=1.0;
		bxyz.tt[i][0][0]=1.0;
		vtrby.tt[i][0][0]=1.0;
		bzy.tt[i][0][0]=1.0;
		bx2.tt[i][0][0]=1.0;
		bxy.tt[i][0][0]=1.0;
		by2.tt[i][0][0]=1.0;
		ro.tt[i][0][0]=1.0;
		bb.tt[i][0][0]=1.0;
		m.tt[i][0][0]=1.0;
		n.tt[i][0][0]=1.0;
		o.tt[i][0][0]=1.0;
		rn.tt[i][0][0]=1.0;
		mn.tt[i][0][0]=1.0;
		mr.tt[i][0][0]=1.0;
		rmn.tt[i][0][0]=1.0;
		rnb.tt[i][0][0]=1.0;
		rnr.tt[i][0][0]=1.0;
		ron.tt[i][0][0]=1.0;
		om.tt[i][0][0]=1.0;
		on.tt[i][0][0]=1.0;
		or.tt[i][0][0]=1.0;
		p.tt[i][0][0]=1.0;
		u.tt[i][0][0]=1.0;
		obmbr.tt[i][0][0]=1.0;
		obnbr.tt[i][0][0]=1.0;
		ufluxx.tt[i][0][0]=1.0;
		ufluxy.tt[i][0][0]=1.0;
		ufluxz.tt[i][0][0]=1.0;
	}
	i=0;
	printf(" ****** INIT END *****\n");
	for(j=jup;j<=jdn;j+=2){
		vtrno.tt[j][l][i]=(rno.tt[j-1][l][i]+rno.tt[j+1][l][i]
		    +rno.tt[j][l][iip]+rno.tt[j][l][iin]
		    +rno.tt[j][llp][i]+rno.tt[j][lln][i])/6.0;
		vtror.tt[j][l][i]=(ror.tt[j-1][l][i]+ror.tt[j+1][l][i]
		    +ror.tt[j][l][iip]+ror.tt[j][l][iin]
		    +ror.tt[j][llp][i]+ror.tt[j][lln][i])/6.0;
		vtrby.tt[j][l][i]=(rby.tt[j-1][l][i]+rby.tt[j+1][l][i]
		    +rby.tt[j][l][iip]+rby.tt[j][l][iin]
		    +rby.tt[j][llp][i]+rby.tt[j][lln][i])/6.0;
		vtrbyz.tt[j][l][i]=(rbyz.tt[j-1][l][i]+rbyz.tt[j+1][l][i]
		    +rbyz.tt[j][l][iip]+rbyz.tt[j][l][iin]
		    +rbyz.tt[j][llp][i]+rbyz.tt[j][lln][i])/6.0;
		vbxx.tt[j][l][i]=(bx.tt[j-1][l][i]+bx.tt[j+1][l][i]
		    +bx.tt[j][l][iip]+bx.tt[j][l][iin]
		    +bx.tt[j][llp][i]+bx.tt[j][lln][i])/6.0;
		vbyy.tt[j][l][i]=(by.tt[j-1][l][i]+by.tt[j+1][l][i]
		    +by.tt[j][l][iip]+by.tt[j][l][iin]
		    +by.tt[j][llp][i]+by.tt[j][lln][i])/6.0;
		vbzz.tt[j][l][i]=(bz.tt[j-1][l][i]+bz.tt[j+1][l][i]
		    +bz.tt[j][l][iip]+bz.tt[j][l][iin]
		    +bz.tt[j][llp][i]+bz.tt[j][lln][i])/6.0;
		va1.tt[j][l][i]=(rbz.tt[j][llp][i]-rbz.tt[j][lln][i])*dtdzr
		    -(bxyz.tt[j][llp][i]-bxyz.tt[j][lln][i])*dtdz2
		    +(bb.tt[j+1][l][i]-bb.tt[j-1][l][i])*dtdx2
		    -vtrby.tt[j][l][i]*dt+(bzy.tt[j][l][iip]-bzy.tt[j][l][iin])*dtdyr;
		va2.tt[j][l][i]=(rbb.tt[j][llp][i]-rbb.tt[j][lln][i])*dtdzr
		    -(bxyz.tt[j+1][l][i]-bxyz.tt[j-1][l][i])*dtdx2
		    +(bx2.tt[j+1][l][i]-bx2.tt[j-1][l][i])*dtdx2
		    +(bxy.tt[j][l][iip]-bxy.tt[j][l][iin])*dtdyr;
		va3.tt[j][l][i]=(rbzy.tt[j][llp][i]-rbzy.tt[j][lln][i])*dtdzr
		    +vtrbyz.tt[j][l][i]*dt+(by2.tt[j][l][iip]-by2.tt[j][l][iin]
		    -(bxyz.tt[j][l][iip]-bxyz.tt[j][l][iin]))*dtdyr
		    +(bxy.tt[j+1][l][i]-bxy.tt[j-1][l][i])*dtdx2;
		vab.tt[j][l][i]=(va1.tt[j][l][i]*vbzz.tt[j][l][i]+va2.tt[j][l][i]
		    *vbxx.tt[j][l][i]+va3.tt[j][l][i]*vbyy.tt[j][l][i])
		    /(vbxx.tt[j][l][i]*vbxx.tt[j][l][i]
		    +vbzz.tt[j][l][i]*vbzz.tt[j][l][i]+vbyy.tt[j][l][i]*vbyy.tt[j][l][i]);
		ro1.tt[j][l][i]=(ro.tt[j-1][l][i]+ro.tt[j+1][l][i]
		    +ro.tt[j][l][iin]+ro.tt[j][l][iip]
		    +ro.tt[j][llp][i]+ro.tt[j][lln][i])/6.0
		    -(dtdx2*(m.tt[j+1][l][i]-m.tt[j-1][l][i])
		    +dtdyr*(o.tt[j][l][iip]-o.tt[j][l][iin])
		    +dtdzr*(rn.tt[j][llp][i]-rn.tt[j][lln][i]))*rhoadd;
		m1.tt[j][l][i]=(m.tt[j-1][l][i]+m.tt[j+1][l][i]
		    +m.tt[j][l][iin]+m.tt[j][l][iip]
		    +m.tt[j][llp][i]+m.tt[j][lln][i])/6.0
		    -(dtdx2*(p.tt[j+1][l][i]-p.tt[j-1][l][i]
		    +mr.tt[j+1][l][i]-mr.tt[j-1][l][i])
		    +dtdyr*(om.tt[j][l][iip]-om.tt[j][l][iin])
		    +dtdzr*(rmn.tt[j][llp][i]-rmn.tt[j][lln][i])
		    -va2.tt[j][l][i]+va2.tt[j][l][i]*vbxx.tt[j][l][i])*fudge;
		n1.tt[j][l][i]=(n.tt[j-1][l][i]+n.tt[j+1][l][i]
		    +n.tt[j][l][iin]+n.tt[j][l][iip]
		    +n.tt[j][llp][i]+n.tt[j][lln][i])/6.0
		    -(dtdx2*(m.tt[j+1][l][i]-mn.tt[j-1][l][i])
		    +dtdz2*(p.tt[j][llp][i]-p.tt[j][lln][i])
		    +dtdyr*(on.tt[j][l][iip]-on.tt[j][l][iin])
		    +dtdzr*(rnr.tt[j][llp][i]-rnr.tt[j][lln][i])
		    -dt*vtror.tt[j][l][i]-va1.tt[j][l][i]+vab.tt[j][l][i]
		    *vbzz.tt[j][l][i])*fudge;
		o1.tt[j][l][i]=(o.tt[j-1][l][i]+o.tt[j+1][l][i]
		    +o.tt[j][l][iin]+o.tt[j][l][iip]
		    +o.tt[j][llp][i]+o.tt[j][lln][i])/6.0
		    -(dtdx2*(om.tt[j+1][l][i]-om.tt[j-1][l][i])
		    +dtdzr*(ron.tt[j][llp][i]
		    -ron.tt[j][lln][i])+dtdyr*
		    (p.tt[j][l][iip]-p.tt[j][l][iin]
		    +or.tt[j][l][iip]-or.tt[j][l][iin])
		    +dt*vtrno.tt[j][l][i]-va3.tt[j][l][i]+vab.tt[j][l][i]
		    *vbyy.tt[j][l][i])*fudge;
		bx1.tt[j][l][i]=vbxx.tt[j][l][i]
		    -dtdzr*(rnb.tt[j][llp][i]-rnb.tt[j][lln][i])
		    -dtdyr*(obmbr.tt[j][l][iip]-obmbr.tt[j][l][iin]);
		bz1.tt[j][l][i]=vbzz.tt[j][l][i]
		    -dtdxr*(rnb.tt[j+1][l][i]-rnb.tt[j-1][l][i])
		    -dtdyr*(obnbr.tt[j][l][iip]-obnbr.tt[j][l][iin]);
		by1.tt[j][l][i]=vbyy.tt[j][l][i]
		    -dtdx2*(obmbr.tt[j+1][l][i]-obmbr.tt[j-1][l][i])
		    -dtdz2*(obnbr.tt[j][llp][i]-obnbr.tt[j][lln][i]);
		u1.tt[j][l][i]=(u.tt[j-1][l][i]+u.tt[j+1][l][i]
		    +u.tt[j][l][iin]+u.tt[j][l][iip]
		    +u.tt[j][llp][i]+u.tt[j][lln][i])/6.0
		    -dtdx2*(ufluxx.tt[j+1][l][i]-ufluxx.tt[j-1][l][i])
		    -dtdyr*(ufluxy.tt[j][l][iip]-ufluxy.tt[j][l][iin])
		    -dtdzr*(ufluxz.tt[j][llp][i]-ufluxz.tt[j][lln][i]);
	}
	printf("  *****  *****\n");
	for(i=0;i<5;i++){
		printf(" vtrno[%ld] => %10.5f",i,vtrno.tt[i][0][0]);
		printf(" vtror[%ld] => %10.5f",i,vtror.tt[i][0][0]);
		printf(" vtrby[%ld] => %10.5f\n",i,vtrby.tt[i][0][0]);
		printf(" vtrbyz[%ld] => %10.5f",i,vtrbyz.tt[i][0][0]);
		printf(" vbxx[%ld] => %10.5f",i,vbxx.tt[i][0][0]);
		printf(" vbyy[%ld] => %10.5f\n",i,vbyy.tt[i][0][0]);
		printf(" vbzz[%ld] => %10.5f",i,vbzz.tt[i][0][0]);
		printf(" va1[%ld] => %10.5f",i,va1.tt[i][0][0]);
		printf(" va2[%ld] => %10.5f\n",i,va2.tt[i][0][0]);
		printf(" va3[%ld] => %10.5f",i,va3.tt[i][0][0]);
		printf(" vab[%ld] => %10.5f",i,vab.tt[i][0][0]);
		printf(" ro1[%ld] => %10.5f\n",i,ro1.tt[i][0][0]);
		printf(" m1[%ld] => %10.5f",i,m1.tt[i][0][0]);
		printf(" n1[%ld] => %10.5f",i,n1.tt[i][0][0]);
		printf(" o1[%ld] => %10.5f\n",i,o1.tt[i][0][0]);
		printf(" bx1[%ld] => %10.5f",i,bx1.tt[i][0][0]);
		printf(" bz1[%ld] => %10.5f",i,bz1.tt[i][0][0]);
		printf(" by1[%ld] => %10.5f\n",i,by1.tt[i][0][0]);
		printf(" u1[%ld] => %10.5f\n",i,u1.tt[i][0][0]);
	}
	exit (0);
}
