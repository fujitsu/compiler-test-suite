#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main()
{
	float a1[10][10],b1[10][10],c1[10][10];
	float a2[10][10],b2[10][10],c2[10][10];
	float a3[10][10],b3[10][10],c3[10][10];
	float a4[10][10],b4[10][10],c4[10][10];
	float a5[10][10],b5[10][10],c5[10][10];
	float a6[10][10],b6[10][10],c6[10][10];
	float a7[10][10],b7[10][10],c7[10][10];
	float a8[10][10],b8[10][10],c8[10][10];
	float a9[10][10],b9[10][10],c9[10][10];
	float aa[10][10],ba[10][10],ca[10][10];
	float ab[10][10],bb[10][10],cb[10][10];
	float ac[10][10],bc[10][10],cc[10][10];
	float ad[10][10],bd[10][10],cd[10][10];
	float ae[10][10],be[10][10],ce[10][10];
	float af[10][10],bf[10][10],cf[10][10];
	float ag[10][10],bg[10][10],cg[10][10];
	float ah[10][10],bh[10][10],ch[10][10];
	float ai[10][10],bi[10][10],ci[10][10];
	float aj[10][10],bj[10][10],cj[10][10];
	float ak[10][10],bk[10][10],ck[10][10];
	float al[10][10],bl[10][10],cl[10][10];
	float am[10][10],bm[10][10],cm[10][10];
	float an[10][10],bn[10][10],cn[10][10];
	float ao[10][10],bo[10][10],co[10][10];
	float ap[10][10],bp[10][10],cp[10][10];
	float aq[10][10],bq[10][10],cq[10][10];
	float ar[10][10],br[10][10],cr[10][10];
	float as[10][10],bs[10][10],cs[10][10];
	float at[10][10],bt[10][10],ct[10][10];
	long int i,j;
	for(j=0;j<10;j++)
	{
		for(i=0;i<10;i++)
		{
			a1[j][i]=b1[j][i]=2.4;
			c1[j][i]=1.0;
			a2[j][i]=b2[j][i]=2.4;
			c2[j][i]=1.0;
			a3[j][i]=b3[j][i]=2.4;
			c3[j][i]=1.0;
			a4[j][i]=b4[j][i]=2.4;
			c4[j][i]=1.0;
			a5[j][i]=b5[j][i]=2.4;
			c5[j][i]=1.0;
			a6[j][i]=b6[j][i]=2.4;
			c6[j][i]=1.0;
			a7[j][i]=b7[j][i]=2.4;
			c7[j][i]=1.0;
			a8[j][i]=b8[j][i]=2.4;
			c8[j][i]=1.0;
			a9[j][i]=b9[j][i]=2.4;
			c9[j][i]=1.0;
			aa[j][i]=ba[j][i]=2.4;
			ca[j][i]=1.0;
			ab[j][i]=bb[j][i]=2.4;
			cb[j][i]=1.0;
			ac[j][i]=bc[j][i]=2.4;
			cc[j][i]=1.0;
			ad[j][i]=bd[j][i]=2.4;
			cd[j][i]=1.0;
			ae[j][i]=be[j][i]=2.4;
			ce[j][i]=1.0;
			af[j][i]=bf[j][i]=2.4;
			cf[j][i]=1.0;
			ag[j][i]=bg[j][i]=2.4;
			cg[j][i]=1.0;
			ah[j][i]=bh[j][i]=2.4;
			ch[j][i]=1.0;
			ai[j][i]=bi[j][i]=2.4;
			ci[j][i]=1.0;
			aj[j][i]=bj[j][i]=2.4;
			cj[j][i]=1.0;
			ak[j][i]=bk[j][i]=2.4;
			ck[j][i]=1.0;
			al[j][i]=bl[j][i]=2.4;
			cl[j][i]=1.0;
			am[j][i]=bm[j][i]=2.4;
			cm[j][i]=1.0;
			an[j][i]=bn[j][i]=2.4;
			cn[j][i]=1.0;
			ao[j][i]=bo[j][i]=2.4;
			co[j][i]=1.0;
			ap[j][i]=bp[j][i]=2.4;
			cp[j][i]=1.0;
			aq[j][i]=bq[j][i]=2.4;
			cq[j][i]=1.0;
			ar[j][i]=br[j][i]=2.4;
			cr[j][i]=1.0;
			as[j][i]=bs[j][i]=2.4;
			cs[j][i]=1.0;
			at[j][i]=bt[j][i]=2.4;
			ct[j][i]=1.0;
		}
	}
	for(j=0;j<10;j++)
	{
		for(i=0;i<10;i++)
		{
			a1[j][i]=b1[j][i];
			b1[j][i]=c1[j][i];
			a2[j][i]=b2[j][i];
			b2[j][i]=c2[j][i];
			a3[j][i]=b3[j][i];
			b3[j][i]=c3[j][i];
			a4[j][i]=b4[j][i];
			b4[j][i]=c4[j][i];
			a5[j][i]=b5[j][i];
			b5[j][i]=c5[j][i];
			a6[j][i]=b6[j][i];
			b6[j][i]=c6[j][i];
			a7[j][i]=b7[j][i];
			b7[j][i]=c7[j][i];
			a8[j][i]=b8[j][i];
			b8[j][i]=c8[j][i];
			a9[j][i]=b9[j][i];
			b9[j][i]=c9[j][i];
			aa[j][i]=ba[j][i];
			ba[j][i]=ca[j][i];
			ab[j][i]=bb[j][i];
			bb[j][i]=cb[j][i];
			ac[j][i]=bc[j][i];
			bc[j][i]=cc[j][i];
			ad[j][i]=bd[j][i];
			bd[j][i]=cd[j][i];
			ae[j][i]=be[j][i];
			be[j][i]=ce[j][i];
			af[j][i]=bf[j][i];
			bf[j][i]=cf[j][i];
			ag[j][i]=bg[j][i];
			bg[j][i]=cg[j][i];
			ah[j][i]=bh[j][i];
			bh[j][i]=ch[j][i];
			ai[j][i]=bi[j][i];
			bi[j][i]=ci[j][i];
			aj[j][i]=bj[j][i];
			bj[j][i]=cj[j][i];
			ak[j][i]=bk[j][i];
			bk[j][i]=ck[j][i];
			al[j][i]=bl[j][i];
			bl[j][i]=cl[j][i];
			am[j][i]=bm[j][i];
			bm[j][i]=cm[j][i];
			an[j][i]=bn[j][i];
			bn[j][i]=cn[j][i];
			ao[j][i]=bo[j][i];
			bo[j][i]=co[j][i];
			ap[j][i]=bp[j][i];
			bp[j][i]=cp[j][i];
			aq[j][i]=bq[j][i];
			bq[j][i]=cq[j][i];
			ar[j][i]=br[j][i];
			br[j][i]=cr[j][i];
			as[j][i]=bs[j][i];
			bs[j][i]=cs[j][i];
			at[j][i]=bt[j][i];
			bt[j][i]=ct[j][i];
		}
	}
	printf("''\n");
	for(j=0;j<10;j++)
	{
		for(i=0;i<10;i++)
		{
			printf("a1[%ld][%ld]=%g , b1[%ld][%ld]=%g , c1[%ld][%ld]=%g\n"
			    ,j,i,a1[j][i],j,i,b1[j][i],j,i,c1[j][i]);
		}
	}
	exit (0);
}
