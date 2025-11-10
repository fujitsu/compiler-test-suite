#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "000.h"
int SUB2(long int gb[100],int N);
int SUB1(long int nb[100],int N);
#define G(i,j)    g[i-1][j-1]
#define L(i,j)    l[i-1][j-1]
#define S(i,j)    s[i-1][j-1]
#define BG1(i)    bg1[i-1]
#define BG2(i)    bg2[i-1]
#define BS(i,j,k) bs[i-1][j-1][k-1]
#define NB(i,j)   nb[i-1][j-1]
long int g[20][20];
float    l[20][20];
double   s[20][20];
long int bg1[20],bg2[20];
float    bs[20][20][5];
long int nb[10][10];
int main()
{
	long int N=20;
	long int J,I,I1,I2,I3,I4,K,i,j,k;
	for(j=0;j< 20;j++){
		for(i=0;i< 20;i++){
			g[i][j]=1;
			l[i][j]=2.0;
			s[i][j]=1.0;
		}
	}
	for(i=0;i< 20;i++){
		bg1[i]=500;
	}
	for(k=0;k< 5 ;k++){
		for(j=0;j< 10;j++){
			for(i=0;i< 20;i++){
				bs[i][j][k]=2.0;
			}
		}
	}
	for(j=0;j< 10;j++){
		for(i=0;i< 10;i++){
			nb[i][j]=1;
		}
	}
	for(J=1;J<=20;J+=2)
	{
		BG2(J)=1;
		BG2(J+1)=J;
		for(I=1;I<=N;I+=2)
		{
			G(I,J)=(0.5+pow(G(I,I),I))+G(I,I)/I;
LBL_10:
			;
		}
	}
	for(J=10;J<=20;J++)
	{
		I1=J*2;
		I2=J+2;
		I3=J-2;
		I4=J/2;
		for(I=1;I<=N;I+=I4)
		{
			S(I,J)=(0.5+pow(S(I,J),J))+I1+I2*I3-I4+(S(I,J)/I)+2+(I*3);
LBL_30:
			;
		}
	}
	for(I=1;I<=N;I+=3)
	{
		BG2(I)=(BG1(I)+I)+BG1(I)/I;
LBL_40:
		;
	}
	for(J=1;J<=5;J++)
	{
		if (J >  3)
		{
			K=(0.5+pow(J,2))-5;
		}
		else
		{
			K=J*2;
		}
		for(I=1;I<=N;I++)
		{
			BS(I,K,1)=BS(I,K,2)+BS(I,K,3)+BS(I,K,4)+BS(I,K,5);
LBL_50:
			;
		}
	}
	for(J=6;J<=10;J++)
	{
		for(I=1;I<=N-10;I+=2)
		{
			NB(I,J)=0;
LBL_60:
			;
		}
	}
	SUB1(nb,98);
	SUB2(g,51);
	printf(" **  **\n");
	for(j=1;j<=20;j++){
		for(i=1;i<=20;i++){
			printf(" %ld %g %g \n",G(i,j),L(i,j),S(i,j));
		}
	}
	for(i=1;i<=20;i++){
		printf(" %ld %ld \n",BG1(i),BG2(i));
	}
	for(k=1;k<= 5;k++){
		for(j=1;j<=20;j++){
			for(i=1;i<=20;i++){
				printf(" %g \n",BS(i,j,k));
			}
		}
	}
	for(j=1;j<=10;j++){
		for(i=1;i<=10;i++){
			printf(" %ld \n",NB(i,j));
		}
	}
	exit (0);
}
#define GB(i) gb[i-1]
#define XNB(i) nb[i-1]
#define A001(i) a001[i-1]
#define B001(i) b001[i-1]
#define A002(i) a002[i-1]
#define B002(i) b002[i-1]
#define A003(i) a003[i-1]
#define B003(i) b003[i-1]
#define A004(i) a004[i-1]
#define B004(i) b004[i-1]
#define A005(i) a005[i-1]
#define B005(i) b005[i-1]
#define A006(i) a006[i-1]
#define B006(i) b006[i-1]
#define A007(i) a007[i-1]
#define B007(i) b007[i-1]
#define A008(i) a008[i-1]
#define B008(i) b008[i-1]
#define A009(i) a009[i-1]
#define B009(i) b009[i-1]
#define A010(i) a010[i-1]
#define B010(i) b010[i-1]
#define A011(i) a011[i-1]
#define B011(i) b011[i-1]
#define A012(i) a012[i-1]
#define B012(i) b012[i-1]
#define A013(i) a013[i-1]
#define B013(i) b013[i-1]
#define A014(i) a014[i-1]
#define B014(i) b014[i-1]
#define A015(i) a015[i-1]
#define B015(i) b015[i-1]
#define A016(i) a016[i-1]
#define B016(i) b016[i-1]
#define A017(i) a017[i-1]
#define B017(i) b017[i-1]
#define A018(i) a018[i-1]
#define B018(i) b018[i-1]
#define A019(i) a019[i-1]
#define B019(i) b019[i-1]
#define A020(i) a020[i-1]
#define B020(i) b020[i-1]
#define A021(i) a021[i-1]
#define B021(i) b021[i-1]
#define A022(i) a022[i-1]
#define B022(i) b022[i-1]
#define A023(i) a023[i-1]
#define B023(i) b023[i-1]
#define A024(i) a024[i-1]
#define B024(i) b024[i-1]
#define A025(i) a025[i-1]
#define B025(i) b025[i-1]
#define A026(i) a026[i-1]
#define B026(i) b026[i-1]
#define A027(i) a027[i-1]
#define B027(i) b027[i-1]
#define A028(i) a028[i-1]
#define B028(i) b028[i-1]
#define A029(i) a029[i-1]
#define B029(i) b029[i-1]
#define A030(i) a030[i-1]
#define B030(i) b030[i-1]
#define A031(i) a031[i-1]
#define B031(i) b031[i-1]
#define A032(i) a032[i-1]
#define B032(i) b032[i-1]
#define A033(i) a033[i-1]
#define B033(i) b033[i-1]
#define A034(i) a034[i-1]
#define B034(i) b034[i-1]
#define A035(i) a035[i-1]
#define B035(i) b035[i-1]
#define A036(i) a036[i-1]
#define B036(i) b036[i-1]
#define A037(i) a037[i-1]
#define B037(i) b037[i-1]
#define A038(i) a038[i-1]
#define B038(i) b038[i-1]
#define A039(i) a039[i-1]
#define B039(i) b039[i-1]
#define A040(i) a040[i-1]
#define B040(i) b040[i-1]
#define A041(i) a041[i-1]
#define B041(i) b041[i-1]
#define A042(i) a042[i-1]
#define B042(i) b042[i-1]
#define A043(i) a043[i-1]
#define B043(i) b043[i-1]
#define A044(i) a044[i-1]
#define B044(i) b044[i-1]
#define A045(i) a045[i-1]
#define B045(i) b045[i-1]
#define A046(i) a046[i-1]
#define B046(i) b046[i-1]
#define A047(i) a047[i-1]
#define B047(i) b047[i-1]
#define A048(i) a048[i-1]
#define B048(i) b048[i-1]
#define A049(i) a049[i-1]
#define B049(i) b049[i-1]
#define A050(i) a050[i-1]
#define B050(i) b050[i-1]
#define A051(i) a051[i-1]
#define B051(i) b051[i-1]
#define A052(i) a052[i-1]
#define B052(i) b052[i-1]
#define A053(i) a053[i-1]
#define B053(i) b053[i-1]
#define A054(i) a054[i-1]
#define B054(i) b054[i-1]
#define A055(i) a055[i-1]
#define B055(i) b055[i-1]
#define A056(i) a056[i-1]
#define B056(i) b056[i-1]
#define A057(i) a057[i-1]
#define B057(i) b057[i-1]
#define A058(i) a058[i-1]
#define B058(i) b058[i-1]
#define A059(i) a059[i-1]
#define B059(i) b059[i-1]
#define A060(i) a060[i-1]
#define B060(i) b060[i-1]
#define A061(i) a061[i-1]
#define B061(i) b061[i-1]
#define A062(i) a062[i-1]
#define B062(i) b062[i-1]
#define A063(i) a063[i-1]
#define B063(i) b063[i-1]
#define A064(i) a064[i-1]
#define B064(i) b064[i-1]
#define A065(i) a065[i-1]
#define B065(i) b065[i-1]
#define A066(i) a066[i-1]
#define B066(i) b066[i-1]
#define A067(i) a067[i-1]
#define B067(i) b067[i-1]
#define A068(i) a068[i-1]
#define B068(i) b068[i-1]
#define A069(i) a069[i-1]
#define B069(i) b069[i-1]
#define A070(i) a070[i-1]
#define B070(i) b070[i-1]
#define A071(i) a071[i-1]
#define B071(i) b071[i-1]
#define A072(i) a072[i-1]
#define B072(i) b072[i-1]
#define A073(i) a073[i-1]
#define B073(i) b073[i-1]
#define A074(i) a074[i-1]
#define B074(i) b074[i-1]
#define A075(i) a075[i-1]
#define B075(i) b075[i-1]
#define A076(i) a076[i-1]
#define B076(i) b076[i-1]
#define A077(i) a077[i-1]
#define B077(i) b077[i-1]
#define A078(i) a078[i-1]
#define B078(i) b078[i-1]
#define A079(i) a079[i-1]
#define B079(i) b079[i-1]
#define A080(i) a080[i-1]
#define B080(i) b080[i-1]
#define A081(i) a081[i-1]
#define B081(i) b081[i-1]
#define A082(i) a082[i-1]
#define B082(i) b082[i-1]
#define A083(i) a083[i-1]
#define B083(i) b083[i-1]
#define A084(i) a084[i-1]
#define B084(i) b084[i-1]
#define A085(i) a085[i-1]
#define B085(i) b085[i-1]
#define A086(i) a086[i-1]
#define B086(i) b086[i-1]
#define A087(i) a087[i-1]
#define B087(i) b087[i-1]
#define A088(i) a088[i-1]
#define B088(i) b088[i-1]
#define A089(i) a089[i-1]
#define B089(i) b089[i-1]
#define A090(i) a090[i-1]
#define B090(i) b090[i-1]
#define A091(i) a091[i-1]
#define B091(i) b091[i-1]
#define A092(i) a092[i-1]
#define B092(i) b092[i-1]
#define A093(i) a093[i-1]
#define B093(i) b093[i-1]
#define A094(i) a094[i-1]
#define B094(i) b094[i-1]
#define A095(i) a095[i-1]
#define B095(i) b095[i-1]
#define A096(i) a096[i-1]
#define B096(i) b096[i-1]
#define A097(i) a097[i-1]
#define B097(i) b097[i-1]
#define A098(i) a098[i-1]
#define B098(i) b098[i-1]
#define A099(i) a099[i-1]
#define B099(i) b099[i-1]
#define A100(i) a100[i-1]
#define B100(i) b100[i-1]
int SUB1(long int nb[100],int N)
{
	static long int a001[100],b001[100];
	static long int a002[100],b002[100];
	static long int a003[100],b003[100];
	static long int a004[100],b004[100];
	static long int a005[100],b005[100];
	static long int a006[100],b006[100];
	static long int a007[100],b007[100];
	static long int a008[100],b008[100];
	static long int a009[100],b009[100];
	static long int a010[100],b010[100];
	static long int a011[100],b011[100];
	static long int a012[100],b012[100];
	static long int a013[100],b013[100];
	static long int a014[100],b014[100];
	static long int a015[100],b015[100];
	static long int a016[100],b016[100];
	static long int a017[100],b017[100];
	static long int a018[100],b018[100];
	static long int a019[100],b019[100];
	static long int a020[100],b020[100];
	static long int a021[100],b021[100];
	static long int a022[100],b022[100];
	static long int a023[100],b023[100];
	static long int a024[100],b024[100];
	static long int a025[100],b025[100];
	static long int a026[100],b026[100];
	static long int a027[100],b027[100];
	static long int a028[100],b028[100];
	static long int a029[100],b029[100];
	static long int a030[100],b030[100];
	static long int a031[100],b031[100];
	static long int a032[100],b032[100];
	static long int a033[100],b033[100];
	static long int a034[100],b034[100];
	static long int a035[100],b035[100];
	static long int a036[100],b036[100];
	static long int a037[100],b037[100];
	static long int a038[100],b038[100];
	static long int a039[100],b039[100];
	static long int a040[100],b040[100];
	static long int a041[100],b041[100];
	static long int a042[100],b042[100];
	static long int a043[100],b043[100];
	static long int a044[100],b044[100];
	static long int a045[100],b045[100];
	static long int a046[100],b046[100];
	static long int a047[100],b047[100];
	static long int a048[100],b048[100];
	static long int a049[100],b049[100];
	static long int a050[100],b050[100];
	static long int a051[100],b051[100];
	static long int a100[100],b100[100];
	long int J,I,i,j;
	for(i=0;i< 100;i++){
		a001[i]=100;
		b001[i]=100;
		a002[i]=100;
		b002[i]=100;
		a003[i]=100;
		b003[i]=100;
		a004[i]=100;
		b004[i]=100;
		a005[i]=100;
		b005[i]=100;
		a006[i]=100;
		b006[i]=100;
		a007[i]=100;
		b007[i]=100;
		a008[i]=100;
		b008[i]=100;
		a009[i]=100;
		b009[i]=100;
		a010[i]=100;
		b010[i]=100;
		a011[i]=100;
		b011[i]=100;
		a012[i]=100;
		b012[i]=100;
		a013[i]=100;
		b013[i]=100;
		a014[i]=100;
		b014[i]=100;
		a015[i]=100;
		b015[i]=100;
		a016[i]=100;
		b016[i]=100;
		a017[i]=100;
		b017[i]=100;
		a018[i]=100;
		b018[i]=100;
		a019[i]=100;
		b019[i]=100;
		a020[i]=100;
		b020[i]=100;
		a021[i]=100;
		b021[i]=100;
		a022[i]=100;
		b022[i]=100;
		a023[i]=100;
		b023[i]=100;
		a024[i]=100;
		b024[i]=100;
		a025[i]=100;
		b025[i]=100;
		a026[i]=100;
		b026[i]=100;
		a027[i]=100;
		b027[i]=100;
		a028[i]=100;
		b028[i]=100;
		a029[i]=100;
		b029[i]=100;
		a030[i]=100;
		b030[i]=100;
		a031[i]=100;
		b031[i]=100;
		a032[i]=100;
		b032[i]=100;
		a033[i]=100;
		b033[i]=100;
		a034[i]=100;
		b034[i]=100;
		a035[i]=100;
		b035[i]=100;
		a036[i]=100;
		b036[i]=100;
		a037[i]=100;
		b037[i]=100;
		a038[i]=100;
		b038[i]=100;
		a039[i]=100;
		b039[i]=100;
		a040[i]=100;
		b040[i]=100;
		a041[i]=100;
		b041[i]=100;
		a042[i]=100;
		b042[i]=100;
		a043[i]=100;
		b043[i]=100;
		a044[i]=100;
		b044[i]=100;
		a045[i]=100;
		b045[i]=100;
		a046[i]=100;
		b046[i]=100;
		a047[i]=100;
		b047[i]=100;
		a048[i]=100;
		b048[i]=100;
		a049[i]=100;
		b049[i]=100;
		a050[i]=100;
		b050[i]=100;
		a051[i]=100;
		b051[i]=100;
		a100[i]=100;
		b100[i]=100;
	}
	for(J=1;J<=2;J++)
	{
		for(I=1;I<=N;I++)
		{
			B001(I)=B001(I)/J+A001(I)/I;
			B050(I)=B050(I)/J+A050(I)/I;
			B100(I)=B100(I)/J+A100(I)/I;
			XNB(I)=B001(I)/J+
			    B001(I)/J+B001(I)/J+A001(I)/J+
			    B002(I)/J+B002(I)/J+A002(I)/J+
			    B015(I)/J+B015(I)/J+A015(I)/J+
			    B017(I)/J+B017(I)/J+A017(I)/J+
			    B018(I)/J+B018(I)/J+A018(I);
			XNB(I)=XNB(I)/J+B019(I)/J+B019(I)/J+A019(I)/J+
			    B020(I)/J+B020(I)/J+A020(I)/J+
			    B021(I)/J+B021(I)/J+A021(I)/J+
			    B034(I)/J+B034(I)/J+A034(I)/J+
			    B035(I)/J+B035(I)/J+A035(I);
			XNB(I)=XNB(I)/J+B036(I)/J+B036(I)/J+A036(I)/J+
			    B037(I)/J+B037(I)/J+A037(I)/J+
			    B050(I)/J+B050(I)/J+A050(I);
LBL_10:
			;
		}
	}
	return 0;
}
int SUB2(long int gb[100],int N)
{
	static long int a001[100],b001[100];
	static long int a002[100],b002[100];
	static long int a003[100],b003[100];
	static long int a004[100],b004[100];
	static long int a005[100],b005[100];
	static long int a006[100],b006[100];
	static long int a007[100],b007[100];
	static long int a008[100],b008[100];
	static long int a009[100],b009[100];
	static long int a010[100],b010[100];
	static long int a011[100],b011[100];
	static long int a012[100],b012[100];
	static long int a013[100],b013[100];
	static long int a014[100],b014[100];
	static long int a015[100],b015[100];
	static long int a016[100],b016[100];
	static long int a017[100],b017[100];
	static long int a018[100],b018[100];
	static long int a019[100],b019[100];
	static long int a020[100],b020[100];
	static long int a021[100],b021[100];
	static long int a022[100],b022[100];
	static long int a023[100],b023[100];
	static long int a024[100],b024[100];
	static long int a025[100],b025[100];
	static long int a026[100],b026[100];
	static long int a027[100],b027[100];
	static long int a028[100],b028[100];
	static long int a029[100],b029[100];
	static long int a030[100],b030[100];
	static long int a031[100],b031[100];
	static long int a032[100],b032[100];
	static long int a033[100],b033[100];
	static long int a034[100],b034[100];
	static long int a035[100],b035[100];
	static long int a036[100],b036[100];
	static long int a037[100],b037[100];
	static long int a038[100],b038[100];
	static long int a039[100],b039[100];
	static long int a040[100],b040[100];
	static long int a041[100],b041[100];
	static long int a042[100],b042[100];
	static long int a043[100],b043[100];
	static long int a044[100],b044[100];
	static long int a045[100],b045[100];
	static long int a046[100],b046[100];
	static long int a047[100],b047[100];
	static long int a048[100],b048[100];
	static long int a049[100],b049[100];
	static long int a050[100],b050[100];
	static long int a051[100],b051[100];
	static long int a052[100],b052[100];
	static long int a053[100],b053[100];
	static long int a054[100],b054[100];
	static long int a055[100],b055[100];
	static long int a056[100],b056[100];
	static long int a057[100],b057[100];
	static long int a058[100],b058[100];
	static long int a059[100],b059[100];
	static long int a060[100],b060[100];
	static long int a061[100],b061[100];
	static long int a062[100],b062[100];
	static long int a063[100],b063[100];
	static long int a064[100],b064[100];
	static long int a065[100],b065[100];
	static long int a066[100],b066[100];
	static long int a067[100],b067[100];
	static long int a068[100],b068[100];
	static long int a069[100],b069[100];
	static long int a070[100],b070[100];
	static long int a071[100],b071[100];
	static long int a072[100],b072[100];
	static long int a073[100],b073[100];
	static long int a074[100],b074[100];
	static long int a075[100],b075[100];
	static long int a076[100],b076[100];
	static long int a077[100],b077[100];
	static long int a078[100],b078[100];
	static long int a079[100],b079[100];
	static long int a080[100],b080[100];
	static long int a081[100],b081[100];
	static long int a082[100],b082[100];
	static long int a083[100],b083[100];
	static long int a084[100],b084[100];
	static long int a085[100],b085[100];
	static long int a086[100],b086[100];
	static long int a087[100],b087[100];
	static long int a088[100],b088[100];
	static long int a089[100],b089[100];
	static long int a090[100],b090[100];
	static long int a091[100],b091[100];
	static long int a092[100],b092[100];
	static long int a093[100],b093[100];
	static long int a094[100],b094[100];
	static long int a095[100],b095[100];
	static long int a096[100],b096[100];
	static long int a097[100],b097[100];
	static long int a098[100],b098[100];
	static long int a099[100],b099[100];
	static long int a100[100],b100[100];
	long int J,I,i,j;
	for(i=0;i< 100;i++){
		a001[i]=100;
		b001[i]=100;
		a002[i]=100;
		b002[i]=100;
		a003[i]=100;
		b003[i]=100;
		a004[i]=100;
		b004[i]=100;
		a005[i]=100;
		b005[i]=100;
		a006[i]=100;
		b006[i]=100;
		a007[i]=100;
		b007[i]=100;
		a008[i]=100;
		b008[i]=100;
		a009[i]=100;
		b009[i]=100;
		a010[i]=100;
		b010[i]=100;
		a011[i]=100;
		b011[i]=100;
		a012[i]=100;
		b012[i]=100;
		a013[i]=100;
		b013[i]=100;
		a014[i]=100;
		b014[i]=100;
		a015[i]=100;
		b015[i]=100;
		a016[i]=100;
		b016[i]=100;
		a017[i]=100;
		b017[i]=100;
		a018[i]=100;
		b018[i]=100;
		a019[i]=100;
		b019[i]=100;
		a020[i]=100;
		b020[i]=100;
		a021[i]=100;
		b021[i]=100;
		a022[i]=100;
		b022[i]=100;
		a023[i]=100;
		b023[i]=100;
		a024[i]=100;
		b024[i]=100;
		a025[i]=100;
		b025[i]=100;
		a026[i]=100;
		b026[i]=100;
		a027[i]=100;
		b027[i]=100;
		a028[i]=100;
		b028[i]=100;
		a029[i]=100;
		b029[i]=100;
		a030[i]=100;
		b030[i]=100;
		a031[i]=100;
		b031[i]=100;
		a032[i]=100;
		b032[i]=100;
		a033[i]=100;
		b033[i]=100;
		a034[i]=100;
		b034[i]=100;
		a035[i]=100;
		b035[i]=100;
		a036[i]=100;
		b036[i]=100;
		a037[i]=100;
		b037[i]=100;
		a038[i]=100;
		b038[i]=100;
		a039[i]=100;
		b039[i]=100;
		a040[i]=100;
		b040[i]=100;
		a041[i]=100;
		b041[i]=100;
		a042[i]=100;
		b042[i]=100;
		a043[i]=100;
		b043[i]=100;
		a044[i]=100;
		b044[i]=100;
		a045[i]=100;
		b045[i]=100;
		a046[i]=100;
		b046[i]=100;
		a047[i]=100;
		b047[i]=100;
		a048[i]=100;
		b048[i]=100;
		a049[i]=100;
		b049[i]=100;
		a050[i]=100;
		b050[i]=100;
		a051[i]=100;
		b051[i]=100;
		a052[i]=100;
		b052[i]=100;
		a053[i]=100;
		b053[i]=100;
		a054[i]=100;
		b054[i]=100;
		a055[i]=100;
		b055[i]=100;
		a056[i]=100;
		b056[i]=100;
		a057[i]=100;
		b057[i]=100;
		a058[i]=100;
		b058[i]=100;
		a059[i]=100;
		b059[i]=100;
		a060[i]=100;
		b060[i]=100;
		a061[i]=100;
		b061[i]=100;
		a062[i]=100;
		b062[i]=100;
		a063[i]=100;
		b063[i]=100;
		a064[i]=100;
		b064[i]=100;
		a065[i]=100;
		b065[i]=100;
		a066[i]=100;
		b066[i]=100;
		a067[i]=100;
		b067[i]=100;
		a068[i]=100;
		b068[i]=100;
		a069[i]=100;
		b069[i]=100;
		a070[i]=100;
		b070[i]=100;
		a071[i]=100;
		b071[i]=100;
		a072[i]=100;
		b072[i]=100;
		a073[i]=100;
		b073[i]=100;
		a074[i]=100;
		b074[i]=100;
		a075[i]=100;
		b075[i]=100;
		a076[i]=100;
		b076[i]=100;
		a077[i]=100;
		b077[i]=100;
		a078[i]=100;
		b078[i]=100;
		a079[i]=100;
		b079[i]=100;
		a080[i]=100;
		b080[i]=100;
		a081[i]=100;
		b081[i]=100;
		a082[i]=100;
		b082[i]=100;
		a083[i]=100;
		b083[i]=100;
		a084[i]=100;
		b084[i]=100;
		a085[i]=100;
		b085[i]=100;
		a086[i]=100;
		b086[i]=100;
		a087[i]=100;
		b087[i]=100;
		a088[i]=100;
		b088[i]=100;
		a089[i]=100;
		b089[i]=100;
		a090[i]=100;
		b090[i]=100;
		a091[i]=100;
		b091[i]=100;
		a092[i]=100;
		b092[i]=100;
		a093[i]=100;
		b093[i]=100;
		a094[i]=100;
		b094[i]=100;
		a095[i]=100;
		b095[i]=100;
		a096[i]=100;
		b096[i]=100;
		a097[i]=100;
		b097[i]=100;
		a098[i]=100;
		b098[i]=100;
		a099[i]=100;
		b099[i]=100;
		a100[i]=100;
		b100[i]=100;
	}
	for(J=1;J<=2;J++)
	{
		for(I=1;I<=N;I++)
		{
			B001(I)=B001(I)/J+A001(I)/I;
			if (J == 1)
			{
				printf(" %ld \n",B001(1));
			}
			B002(I)=B002(I)/J+A002(I)/I;
			if (J == 2)
			{
				printf(" %ld \n",B001(J));
			}
			B003(I)=B003(I)/J+A003(I)/I;
			if (I == J)
			{
				printf(" %ld \n",B003(J));
			}
			B004(I)=B004(I)/J+A004(I)/I;
			if (I >  J)
			{
				printf(" %ld %ld %ld %ld \n",N,I,J,B004(I));
			}
			if (I >  100)
			{
				for(i=1;i<=100;i++){
					printf(" %ld \n",B017(i));
				}
			}
			B018(I)=B018(I)/J+A018(I)/I;
			B019(I)=B019(I)/J+A019(I)/I;
			B020(I)=B020(I)/J+A020(I)/I;
			if (I >  100)
			{
				for(i=1;i<=100;i++){
					printf(" %ld \n",B031(i));
				}
			}
			B032(I)=B032(I)/J+A032(I)/I;
			B033(I)=B033(I)/J+A033(I)/I;
			SUB1(gb,1);
			B043(I)=B043(I)/J+A043(I)/I;
			B057(I)=B057(I)/J+A057(I)/I;
			B069(I)=B069(I)/J+A069(I)/I;
			printf(" TEST2\n");
			B070(I)=B070(I)/J+A070(I)/I;
			B081(I)=B081(I)/J+A081(I)/I;
			printf(" %ld ,1234567890123456789012345678901234567890\n",B097(I));
			B098(I)=B098(I)/J+A098(I)/I;
			B099(I)=B099(I)/J+A099(I)/I;
			B100(I)=B100(I)/J+A100(I)/I;
			GB(I)=B001(I)/J+
			    B001(I)/J+B001(I)/J+A001(I)/J+
			    B002(I)/J+B002(I)/J+A002(I)/J+
			    B018(I)/J+B018(I)/J+A018(I);
			printf(" %ld ,1234567890123456789012345678901234567890\n",B018(I));
			GB(I)=GB(I)/J+B019(I)/J+B019(I)/J+A019(I)/J+
			    B020(I)/J+B020(I)/J+A020(I)/J+
			    B034(I)/J+B034(I)/J+A034(I)/J+
			    B035(I)/J+B035(I)/J+A035(I);
			GB(I)=GB(I)/J+B036(I)/J+B036(I)/J+A036(I)/J+
			    B041(I)/J+B041(I)/J+A041(I)/J+
			    B050(I)/J+B050(I)/J+A050(I);
			printf(" %ld ,1234567890123456789012345678901234567890\n",GB(I));
			GB(I)=GB(I)/J+B051(I)/J+B051(I)/J+A051(I)/J+
			    B052(I)/J+B052(I)/J+A052(I)/J+
			    B059(I)/J+B059(I)/J+A059(I)/J+
			    B067(I)/J+B067(I)/J+A067(I);
			GB(I)=GB(I)/J+B068(I)/J+B068(I)/J+A068(I)/J+
			    B069(I)/J+B069(I)/J+A069(I)/J+
			    B078(I)/J+B078(I)/J+A078(I)/J+
			    B080(I)/J+B080(I)/J+A080(I);
			GB(I)=GB(I)/J+B081(I)/J+B081(I)/J+A081(I)/J+
			    B082(I)/J+B082(I)/J+A082(I)/J+
			    B089(I)/J+B089(I)/J+A089(I);
			GB(I)=GB(I)/J+B090(I)/J+B090(I)/J+A090(I)/J+
			    B099(I)/J+B099(I)/J+A099(I)/J+
			    B100(I)/J+B100(I)/J+A100(I);
LBL_10:
			;
		}
	}
	return 0;
}
