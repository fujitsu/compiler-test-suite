#include <stdlib.h>
#include <math.h>
#include <stdio.h>











int main(){
	float ro[5][3][3],m[5][3][3],n[5][3][3],
	o[5][3][3],bx[5][3][3],by[5][3][3],bz[5][3][3],
	p[5][3][3],u[5][3][3],ro1[5][3][3],m1[5][3][3],
	n1[5][3][3],o1[5][3][3],bx1[5][3][3],
	by1[5][3][3],bz1[5][3][3],u1[5][3][3],
	obmbr[5][3][3],obnbr[5][3][3],ufluxx[5][3][3],
	rbz[5][3][3],bxyz[5][3][3],bb[5][3][3],
	rbb[5][3][3],bx2[5][3][3],on[5][3][3],
	ufluxz[5][3][3],mn[5][3][3],om[5][3][3],
	ufluxy[5][3][3],or[5][3][3],by2[5][3][3],
	rn[5][3][3],ror[5][3][3],rnb[5][3][3],
	mr[5][3][3],rmn[5][3][3],ron[5][3][3],
	rnr[5][3][3],rby[5][3][3],rno[5][3][3],
	bxy[5][3][3],bzy[5][3][3],rbzy[5][3][3],
	rbyz[5][3][3],vtrno[5][3][3],vtror[5][3][3],
	vtrby[5][3][3],vtrbyz[5][3][3],vbxx[5][3][3],
	vbyy[5][3][3],vbzz[5][3][3],va1[5][3][3],
	va2[5][3][3],va3[5][3][3],vab[5][3][3];
	long int iin,iip,jdn,jup,lln,llp,l,i,j,k;
	float asb,dt,dtdxr,dtdx2,dtdyr,dtdzr,dtdz2,fudge,rhoadd;
	for(k=0;k<3;k++){
		for(j=0;j<3;j++){
			for(i=0;i<5;i++){
				ro[i][j][k]=1.0;
				m[i][j][k]=1.0;
				n[i][j][k]=1.0;
				o[i][j][k]=1.0;
				bx[i][j][k]=1.0;
				by[i][j][k]=1.0;
				bz[i][j][k]=1.0;
				p[i][j][k]=1.0;
				u[i][j][k]=1.0;
				ro1[i][j][k]=1.0;
				m1[i][j][k]=1.0;
				n1[i][j][k]=1.0;
				o1[i][j][k]=1.0;
				bx1[i][j][k]=1.0;
				by1[i][j][k]=1.0;
				bz1[i][j][k]=1.0;
				u1[i][j][k]=1.0;
				obmbr[i][j][k]=1.0;
				obnbr[i][j][k]=1.0;
				ufluxx[i][j][k]=1.0;
				rbz[i][j][k]=1.0;
				bxyz[i][j][k]=1.0;
				bb[i][j][k]=1.0;
				rbb[i][j][k]=1.0;
				bx2[i][j][k]=1.0;
				on[i][j][k]=1.0;
				ufluxz[i][j][k]=1.0;
				mn[i][j][k]=1.0;
				om[i][j][k]=1.0;
				ufluxy[i][j][k]=1.0;
				or[i][j][k]=1.0;
				by2[i][j][k]=1.0;
				rn[i][j][k]=1.0;
				ror[i][j][k]=1.0;
				rnb[i][j][k]=1.0;
				mr[i][j][k]=1.0;
				rmn[i][j][k]=1.0;
				ron[i][j][k]=1.0;
				rnr[i][j][k]=1.0;
				rby[i][j][k]=1.0;
				rno[i][j][k]=1.0;
				bxy[i][j][k]=1.0;
				bzy[i][j][k]=1.0;
				rbzy[i][j][k]=1.0;
				rbyz[i][j][k]=1.0;
				vtrno[i][j][k]=1.0;
				vtror[i][j][k]=1.0;
				vtrby[i][j][k]=1.0;
				vtrbyz[i][j][k]=1.0;
				vbxx[i][j][k]=1.0;
				vbyy[i][j][k]=1.0;
				vbzz[i][j][k]=1.0;
				va1[i][j][k]=1.0;
				va2[i][j][k]=1.0;
				va3[i][j][k]=1.0;
				vab[i][j][k]=1.0;
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
		rno[i][0][0]=1.0;
		ror[i][0][0]=2.0;
		rby[i][0][0]=3.0;
		rbyz[i][0][0]=4.0;
		bx[i][0][0]=1.0;
		by[i][0][0]=2.0;
		bz[i][0][0]=3.0;
		by[i][0][0]=4.0;
		rbz[i][0][0]=1.0;
		bxyz[i][0][0]=1.0;
		rbz[i][0][0]=1.0;
		rbb[i][0][0]=1.0;
		rbzy[i][0][0]=1.0;
		bxyz[i][0][0]=1.0;
		vtrby[i][0][0]=1.0;
		bzy[i][0][0]=1.0;
		bx2[i][0][0]=1.0;
		bxy[i][0][0]=1.0;
		by2[i][0][0]=1.0;
		ro[i][0][0]=1.0;
		bb[i][0][0]=1.0;
		m[i][0][0]=1.0;
		n[i][0][0]=1.0;
		o[i][0][0]=1.0;
		rn[i][0][0]=1.0;
		mn[i][0][0]=1.0;
		mr[i][0][0]=1.0;
		rmn[i][0][0]=1.0;
		rnb[i][0][0]=1.0;
		rnr[i][0][0]=1.0;
		ron[i][0][0]=1.0;
		om[i][0][0]=1.0;
		on[i][0][0]=1.0;
		or[i][0][0]=1.0;
		p[i][0][0]=1.0;
		u[i][0][0]=1.0;
		obmbr[i][0][0]=1.0;
		obnbr[i][0][0]=1.0;
		ufluxx[i][0][0]=1.0;
		ufluxy[i][0][0]=1.0;
		ufluxz[i][0][0]=1.0;
	}
	i=0;
	printf(" ****** INIT END *****\n");
	for(j=jup;j<=jdn;j+=2){
		vtrno[j][l][i]=(rno[j-1][l][i]+rno[j+1][l][i]
		    +rno[j][l][iip]+rno[j][l][iin]
		    +rno[j][llp][i]+rno[j][lln][i])/6.0;
		vtror[j][l][i]=(ror[j-1][l][i]+ror[j+1][l][i]
		    +ror[j][l][iip]+ror[j][l][iin]
		    +ror[j][llp][i]+ror[j][lln][i])/6.0;
		vtrby[j][l][i]=(rby[j-1][l][i]+rby[j+1][l][i]
		    +rby[j][l][iip]+rby[j][l][iin]
		    +rby[j][llp][i]+rby[j][lln][i])/6.0;
		vtrbyz[j][l][i]=(rbyz[j-1][l][i]+rbyz[j+1][l][i]
		    +rbyz[j][l][iip]+rbyz[j][l][iin]
		    +rbyz[j][llp][i]+rbyz[j][lln][i])/6.0;
		vbxx[j][l][i]=(bx[j-1][l][i]+bx[j+1][l][i]
		    +bx[j][l][iip]+bx[j][l][iin]
		    +bx[j][llp][i]+bx[j][lln][i])/6.0;
		vbyy[j][l][i]=(by[j-1][l][i]+by[j+1][l][i]
		    +by[j][l][iip]+by[j][l][iin]
		    +by[j][llp][i]+by[j][lln][i])/6.0;
		vbzz[j][l][i]=(bz[j-1][l][i]+bz[j+1][l][i]
		    +bz[j][l][iip]+bz[j][l][iin]
		    +bz[j][llp][i]+bz[j][lln][i])/6.0;
		va1[j][l][i]=(rbz[j][llp][i]-rbz[j][lln][i])*dtdzr
		    -(bxyz[j][llp][i]-bxyz[j][lln][i])*dtdz2
		    +(bb[j+1][l][i]-bb[j-1][l][i])*dtdx2
		    -vtrby[j][l][i]*dt+(bzy[j][l][iip]-bzy[j][l][iin])*dtdyr;
		va2[j][l][i]=(rbb[j][llp][i]-rbb[j][lln][i])*dtdzr
		    -(bxyz[j+1][l][i]-bxyz[j-1][l][i])*dtdx2
		    +(bx2[j+1][l][i]-bx2[j-1][l][i])*dtdx2
		    +(bxy[j][l][iip]-bxy[j][l][iin])*dtdyr;
		va3[j][l][i]=(rbzy[j][llp][i]-rbzy[j][lln][i])*dtdzr
		    +vtrbyz[j][l][i]*dt+(by2[j][l][iip]-by2[j][l][iin]
		    -(bxyz[j][l][iip]-bxyz[j][l][iin]))*dtdyr
		    +(bxy[j+1][l][i]-bxy[j-1][l][i])*dtdx2;
		vab[j][l][i]=(va1[j][l][i]*vbzz[j][l][i]+va2[j][l][i]
		    *vbxx[j][l][i]+va3[j][l][i]*vbyy[j][l][i])
		    /(vbxx[j][l][i]*vbxx[j][l][i]
		    +vbzz[j][l][i]*vbzz[j][l][i]+vbyy[j][l][i]*vbyy[j][l][i]);
		ro1[j][l][i]=(ro[j-1][l][i]+ro[j+1][l][i]
		    +ro[j][l][iin]+ro[j][l][iip]
		    +ro[j][llp][i]+ro[j][lln][i])/6.0
		    -(dtdx2*(m[j+1][l][i]-m[j-1][l][i])
		    +dtdyr*(o[j][l][iip]-o[j][l][iin])
		    +dtdzr*(rn[j][llp][i]-rn[j][lln][i]))*rhoadd;
		m1[j][l][i]=(m[j-1][l][i]+m[j+1][l][i]
		    +m[j][l][iin]+m[j][l][iip]
		    +m[j][llp][i]+m[j][lln][i])/6.0
		    -(dtdx2*(p[j+1][l][i]-p[j-1][l][i]
		    +mr[j+1][l][i]-mr[j-1][l][i])
		    +dtdyr*(om[j][l][iip]-om[j][l][iin])
		    +dtdzr*(rmn[j][llp][i]-rmn[j][lln][i])
		    -va2[j][l][i]+va2[j][l][i]*vbxx[j][l][i])*fudge;
		n1[j][l][i]=(n[j-1][l][i]+n[j+1][l][i]
		    +n[j][l][iin]+n[j][l][iip]
		    +n[j][llp][i]+n[j][lln][i])/6.0
		    -(dtdx2*(mn[j+1][l][i]-mn[j-1][l][i])
		    +dtdz2*(p[j][llp][i]-p[j][lln][i])
		    +dtdyr*(on[j][l][iip]-on[j][l][iin])
		    +dtdzr*(rnr[j][llp][i]-rnr[j][lln][i])
		    -dt*vtror[j][l][i]-va1[j][l][i]+vab[j][l][i]
		    *vbzz[j][l][i])*fudge;
		o1[j][l][i]=(o[j-1][l][i]+o[j+1][l][i]
		    +o[j][l][iin]+o[j][l][iip]
		    +o[j][llp][i]+o[j][lln][i])/6.0
		    -(dtdx2*(om[j+1][l][i]-om[j-1][l][i])
		    +dtdzr*(ron[j][llp][i]
		    -ron[j][lln][i])+dtdyr*
		    (p[j][l][iip]-p[j][l][iin]
		    +or[j][l][iip]-or[j][l][iin])
		    +dt*vtrno[j][l][i]-va3[j][l][i]+vab[j][l][i]
		    *vbyy[j][l][i])*fudge;
		bx1[j][l][i]=vbxx[j][l][i]
		    -dtdzr*(rnb[j][llp][i]-rnb[j][lln][i])
		    -dtdyr*(obmbr[j][l][iip]-obmbr[j][l][iin]);
		bz1[j][l][i]=vbzz[j][l][i]
		    -dtdxr*(rnb[j+1][l][i]-rnb[j-1][l][i])
		    -dtdyr*(obnbr[j][l][iip]-obnbr[j][l][iin]);
		by1[j][l][i]=vbyy[j][l][i]
		    -dtdx2*(obmbr[j+1][l][i]-obmbr[j-1][l][i])
		    -dtdz2*(obnbr[j][llp][i]-obnbr[j][lln][i]);
		u1[j][l][i]=(u[j-1][l][i]+u[j+1][l][i]
		    +u[j][l][iin]+u[j][l][iip]
		    +u[j][llp][i]+u[j][lln][i])/6.0
		    -dtdx2*(ufluxx[j+1][l][i]-ufluxx[j-1][l][i])
		    -dtdyr*(ufluxy[j][l][iip]-ufluxy[j][l][iin])
		    -dtdzr*(ufluxz[j][llp][i]-ufluxz[j][lln][i]);
	}
	printf("  ***** 0003 *****\n");
	for(i=0;i<5;i++){
		printf(" vtrno[%ld] => %10.5f",i,vtrno[i][0][0]);
		printf(" vtror[%ld] => %10.5f",i,vtror[i][0][0]);
		printf(" vtrby[%ld] => %10.5f\n",i,vtrby[i][0][0]);
		printf(" vtrbyz[%ld] => %10.5f",i,vtrbyz[i][0][0]);
		printf(" vbxx[%ld] => %10.5f",i,vbxx[i][0][0]);
		printf(" vbyy[%ld] => %10.5f\n",i,vbyy[i][0][0]);
		printf(" vbzz[%ld] => %10.5f",i,vbzz[i][0][0]);
		printf(" va1[%ld] => %10.5f",i,va1[i][0][0]);
		printf(" va2[%ld] => %10.5f\n",i,va2[i][0][0]);
		printf(" va3[%ld] => %10.5f",i,va3[i][0][0]);
		printf(" vab[%ld] => %10.5f",i,vab[i][0][0]);
		printf(" ro1[%ld] => %10.5f\n",i,ro1[i][0][0]);
		printf(" m1[%ld] => %10.5f",i,m1[i][0][0]);
		printf(" n1[%ld] => %10.5f",i,n1[i][0][0]);
		printf(" o1[%ld] => %10.5f\n",i,o1[i][0][0]);
		printf(" bx1[%ld] => %10.5f",i,bx1[i][0][0]);
		printf(" bz1[%ld] => %10.5f",i,bz1[i][0][0]);
		printf(" by1[%ld] => %10.5f\n",i,by1[i][0][0]);
		printf(" u1[%ld] => %10.5f\n",i,u1[i][0][0]);
	}
	exit (0);
}
