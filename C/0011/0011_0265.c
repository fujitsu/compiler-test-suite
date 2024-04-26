#include  <stdio.h>
int ifdubl (double i);
int ifflat (float i);
int ifulli (unsigned long long int i);
#ifdef NO_LONG_DOUBLE
int iflgdl (double i);
#else
int iflgdl (long double i);
#endif
 int ifslli(signed long long int i );
 int ifulin(unsigned long  int i );
 int ifslin(signed long      int i );
 int ifusin(unsigned short int i );
 int ifssin(signed short int i );
 int ifunch(unsigned char i );
 int ifsich(signed char i );
               signed char                  a0;
               signed char                  a1;
               signed char                 *a2=&a1;
               unsigned char            a3;
               unsigned char            a4;
               unsigned char           *a5=&a4;
               signed short int             a6;
               signed short int             a7;
               signed short int            *a8=&a7;
               unsigned short int       a9;
               unsigned short int       a10;
               unsigned short int      *a11=&a10;
               signed long      int         a12;
               signed long      int         a13;
               signed long      int        *a14=&a13;
               unsigned long  int       a15;
               unsigned long  int       a16;
               unsigned long  int      *a17=&a16;
               signed long long int         a18;
               signed long long int         a19;
               signed long long int        *a20=&a19;
               unsigned long long int       a21;
               unsigned long long int       a22;
               unsigned long long int      *a23=&a22;
               float                    a24;
               float                    a25;
               float                   *a26=&a25;
               double                   a27;
               double                   a28;
               double                  *a29=&a28;
#ifdef NO_LONG_DOUBLE
               double                  a30;
               double                  a31;
               double                 *a32=&a31;
#else
               long double                  a30;
               long double                  a31;
               long double                 *a32=&a31;
#endif
 static   signed char                  a33;
 static   signed char                  a34;
 static   signed char                 *a35=&a34;
 static   unsigned char            a36;
 static   unsigned char            a37;
 static   unsigned char           *a38=&a37;
 static   signed short int             a39;
 static   signed short int             a40;
 static   signed short int            *a41=&a40;
 static   unsigned short int       a42;
 static   unsigned short int       a43;
 static   unsigned short int      *a44=&a43;
 static   signed long      int         a45;
 static   signed long      int         a46;
 static   signed long      int        *a47=&a46;
 static   unsigned long  int       a48;
 static   unsigned long  int       a49;
 static   unsigned long  int      *a50=&a49;
 static   signed long long int         a51;
 static   signed long long int         a52;
 static   signed long long int        *a53=&a52;
 static   unsigned long long int       a54;
 static   unsigned long long int       a55;
 static   unsigned long long int      *a56=&a55;
 static   float                    a57;
 static   float                    a58;
 static   float                   *a59=&a58;
 static   double                   a60;
 static   double                   a61;
 static   double                  *a62=&a61;
#ifdef NO_LONG_DOUBLE
 static   double                  a63;
 static   double                  a64;
 static   double                 *a65=&a64;
#else
 static   long double                  a63;
 static   long double                  a64;
 static   long double                 *a65=&a64;
#endif
 extern   signed char                  a66;
 extern   signed char                  a67;
 extern   signed char                 *a68;
 extern   unsigned char            a69;
 extern   unsigned char            a70;
 extern   unsigned char           *a71;
 extern   signed short int             a72;
 extern   signed short int             a73;
 extern   signed short int            *a74;
 extern   unsigned short int       a75;
 extern   unsigned short int       a76;
 extern   unsigned short int      *a77;
 extern   signed long      int         a78;
 extern   signed long      int         a79;
 extern   signed long      int        *a80;
 extern   unsigned long  int       a81;
 extern   unsigned long  int       a82;
 extern   unsigned long  int      *a83;
 extern   signed long long int         a84;
 extern   signed long long int         a85;
 extern   signed long long int        *a86;
 extern   unsigned long long int       a87;
 extern   unsigned long long int       a88;
 extern   unsigned long long int      *a89;
 extern   float                    a90;
 extern   float                    a91;
 extern   float                   *a92;
 extern   double                   a93;
 extern   double                   a94;
 extern   double                  *a95;
#ifdef NO_LONG_DOUBLE
 extern   double                  a96;
 extern   double                  a97;
 extern   double                 *a98;
#else
 extern   long double                  a96;
 extern   long double                  a97;
 extern   long double                 *a98;
#endif
int 
main (void)
 {
 auto     signed char                  a99;
 auto     signed char                  a100;
 auto     signed char                 *a101=&a100;
 auto     unsigned char            a102;
 auto     unsigned char            a103;
 auto     unsigned char           *a104=&a103;
 auto     signed short int             a105;
 auto     signed short int             a106;
 auto     signed short int            *a107=&a106;
 auto     unsigned short int       a108;
 auto     unsigned short int       a109;
 auto     unsigned short int      *a110=&a109;
 auto     signed long      int         a111;
 auto     signed long      int         a112;
 auto     signed long      int        *a113=&a112;
 auto     unsigned long  int       a114;
 auto     unsigned long  int       a115;
 auto     unsigned long  int      *a116=&a115;
 auto     signed long long int         a117;
 auto     signed long long int         a118;
 auto     signed long long int        *a119=&a118;
 auto     unsigned long long int       a120;
 auto     unsigned long long int       a121;
 auto     unsigned long long int      *a122=&a121;
 auto     float                    a123;
 auto     float                    a124;
 auto     float                   *a125=&a124;
 auto     double                   a126;
 auto     double                   a127;
 auto     double                  *a128=&a127;
#ifdef NO_LONG_DOUBLE
 auto     double                  a129;
 auto     double                  a130;
 auto     double                 *a131=&a130;
#else
 auto     long double                  a129;
 auto     long double                  a130;
 auto     long double                 *a131=&a130;
#endif
 static   signed char                  a132;
 static   signed char                  a133;
 static   signed char                 *a134=&a133;
 static   unsigned char            a135;
 static   unsigned char            a136;
 static   unsigned char           *a137=&a136;
 static   signed short int             a138;
 static   signed short int             a139;
 static   signed short int            *a140=&a139;
 static   unsigned short int       a141;
 static   unsigned short int       a142;
 static   unsigned short int      *a143=&a142;
 static   signed long      int         a144;
 static   signed long      int         a145;
 static   signed long      int        *a146=&a145;
 static   unsigned long  int       a147;
 static   unsigned long  int       a148;
 static   unsigned long  int      *a149=&a148;
 static   signed long long int         a150;
 static   signed long long int         a151;
 static   signed long long int        *a152=&a151;
 static   unsigned long long int       a153;
 static   unsigned long long int       a154;
 static   unsigned long long int      *a155=&a154;
 static   float                    a156;
 static   float                    a157;
 static   float                   *a158=&a157;
 static   double                   a159;
 static   double                   a160;
 static   double                  *a161=&a160;
#ifdef NO_LONG_DOUBLE
 static   double                  a162;
 static   double                  a163;
 static   double                 *a164=&a163;
#else
 static   long double                  a162;
 static   long double                  a163;
 static   long double                 *a164=&a163;
#endif
 extern   signed char                  a165;
 extern   signed char                  a166;
 extern   signed char                 *a167;
 extern   unsigned char            a168;
 extern   unsigned char            a169;
 extern   unsigned char           *a170;
 extern   signed short int             a171;
 extern   signed short int             a172;
 extern   signed short int            *a173;
 extern   unsigned short int       a174;
 extern   unsigned short int       a175;
 extern   unsigned short int      *a176;
 extern   signed long      int         a177;
 extern   signed long      int         a178;
 extern   signed long      int        *a179;
 extern   unsigned long  int       a180;
 extern   unsigned long  int       a181;
 extern   unsigned long  int      *a182;
 extern   signed long long int         a183;
 extern   signed long long int         a184;
 extern   signed long long int        *a185;
 extern   unsigned long long int       a186;
 extern   unsigned long long int       a187;
 extern   unsigned long long int      *a188;
 extern   float                    a189;
 extern   float                    a190;
 extern   float                   *a191;
 extern   double                   a192;
 extern   double                   a193;
 extern   double                  *a194;
#ifdef NO_LONG_DOUBLE
 extern   double                  a195;
 extern   double                  a196;
 extern   double                 *a197;
#else
 extern   long double                  a195;
 extern   long double                  a196;
 extern   long double                 *a197;
#endif
 register signed char                  a198;
               signed char                  a199;
 register signed char                 *a200=&a199;
 register unsigned char            a201;
               unsigned char            a202;
 register unsigned char           *a203=&a202;
 register signed short int             a204;
               signed short int             a205;
 register signed short int            *a206=&a205;
 register unsigned short int       a207;
               unsigned short int       a208;
 register unsigned short int      *a209=&a208;
 register signed long      int         a210;
               signed long      int         a211;
 register signed long      int        *a212=&a211;
 register unsigned long  int       a213;
               unsigned long  int       a214;
 register unsigned long  int      *a215=&a214;
 register signed long long int         a216;
               signed long long int         a217;
 register signed long long int        *a218=&a217;
 register unsigned long long int       a219;
               unsigned long long int       a220;
 register unsigned long long int      *a221=&a220;
 register float                    a222;
               float                    a223;
 register float                   *a224=&a223;
 register double                   a225;
               double                   a226;
 register double                  *a227=&a226;
#ifdef NO_LONG_DOUBLE
 register double                  a228;
               double                  a229;
 register double                 *a230=&a229;
#else
 register long double                  a228;
               long double                  a229;
 register long double                 *a230=&a229;
#endif
 register int sum=0;
 for(a0=0;a0<10;a0++ ) {
 sum=sum+ifsich(a0);
 }
 for(a1=0;a1<10;a1++ ) {
 sum=sum+ifsich(a1);
 }
 for(*a2=0;*a2<10;(*a2)++ ) {
 sum=sum+ifsich(*a2);
 }
 for(a3=0;a3<10;a3++ ) {
 sum=sum+ifunch(a3);
 }
 for(a4=0;a4<10;a4++ ) {
 sum=sum+ifunch(a4);
 }
 for(*a5=0;*a5<10;(*a5)++ ) {
 sum=sum+ifunch(*a5);
 }
 for(a6=0;a6<10;a6++ ) {
 sum=sum+ifssin(a6);
 }
 for(a7=0;a7<10;a7++ ) {
 sum=sum+ifssin(a7);
 }
 for(*a8=0;*a8<10;(*a8)++ ) {
 sum=sum+ifssin(*a8);
 }
 for(a9=0;a9<10;a9++ ) {
 sum=sum+ifusin(a9);
 }
 for(a10=0;a10<10;a10++ ) {
 sum=sum+ifusin(a10);
 }
 for(*a11=0;*a11<10;(*a11)++ ) {
 sum=sum+ifusin(*a11);
 }
 for(a12=0;a12<10;a12++ ) {
 sum=sum+ifslin(a12);
 }
 for(a13=0;a13<10;a13++ ) {
 sum=sum+ifslin(a13);
 }
 for(*a14=0;*a14<10;(*a14)++ ) {
 sum=sum+ifslin(*a14);
 }
 for(a15=0;a15<10;a15++ ) {
 sum=sum+ifulin(a15);
 }
 for(a16=0;a16<10;a16++ ) {
 sum=sum+ifulin(a16);
 }
 for(*a17=0;*a17<10;(*a17)++ ) {
 sum=sum+ifulin(*a17);
 }
 for(a18=0;a18<10;a18++ ) {
 sum=sum+ifslli(a18);
 }
 for(a19=0;a19<10;a19++ ) {
 sum=sum+ifslli(a19);
 }
 for(*a20=0;*a20<10;(*a20)++ ) {
 sum=sum+ifslli(*a20);
 }
 for(a21=0;a21<10;a21++ ) {
 sum=sum+ifulli(a21);
 }
 for(a22=0;a22<10;a22++ ) {
 sum=sum+ifulli(a22);
 }
 for(*a23=0;*a23<10;(*a23)++ ) {
 sum=sum+ifulli(*a23);
 }
 for(a24=0;a24<10;a24++ ) {
 sum=sum+ifflat(a24);
 }
 for(a25=0;a25<10;a25++ ) {
 sum=sum+ifflat(a25);
 }
 for(*a26=0;*a26<10;(*a26)++ ) {
 sum=sum+ifflat(*a26);
 }
 for(a27=0;a27<10;a27++ ) {
 sum=sum+ifdubl(a27);
 }
 for(a28=0;a28<10;a28++ ) {
 sum=sum+ifdubl(a28);
 }
 for(*a29=0;*a29<10;(*a29)++ ) {
 sum=sum+ifdubl(*a29);
 }
 for(a30=0;a30<10;a30++ ) {
 sum=sum+iflgdl(a30);
 }
 for(a31=0;a31<10;a31++ ) {
 sum=sum+iflgdl(a31);
 }
 for(*a32=0;*a32<10;(*a32)++ ) {
 sum=sum+iflgdl(*a32);
 }
 for(a33=0;a33<10;a33++ ) {
 sum=sum+ifsich(a33);
 }
 for(a34=0;a34<10;a34++ ) {
 sum=sum+ifsich(a34);
 }
 for(*a35=0;*a35<10;(*a35)++ ) {
 sum=sum+ifsich(*a35);
 }
 for(a36=0;a36<10;a36++ ) {
 sum=sum+ifunch(a36);
 }
 for(a37=0;a37<10;a37++ ) {
 sum=sum+ifunch(a37);
 }
 for(*a38=0;*a38<10;(*a38)++ ) {
 sum=sum+ifunch(*a38);
 }
 for(a39=0;a39<10;a39++ ) {
 sum=sum+ifssin(a39);
 }
 for(a40=0;a40<10;a40++ ) {
 sum=sum+ifssin(a40);
 }
 for(*a41=0;*a41<10;(*a41)++ ) {
 sum=sum+ifssin(*a41);
 }
 for(a42=0;a42<10;a42++ ) {
 sum=sum+ifusin(a42);
 }
 for(a43=0;a43<10;a43++ ) {
 sum=sum+ifusin(a43);
 }
 for(*a44=0;*a44<10;(*a44)++ ) {
 sum=sum+ifusin(*a44);
 }
 for(a45=0;a45<10;a45++ ) {
 sum=sum+ifslin(a45);
 }
 for(a46=0;a46<10;a46++ ) {
 sum=sum+ifslin(a46);
 }
 for(*a47=0;*a47<10;(*a47)++ ) {
 sum=sum+ifslin(*a47);
 }
 for(a48=0;a48<10;a48++ ) {
 sum=sum+ifulin(a48);
 }
 for(a49=0;a49<10;a49++ ) {
 sum=sum+ifulin(a49);
 }
 for(*a50=0;*a50<10;(*a50)++ ) {
 sum=sum+ifulin(*a50);
 }
 for(a51=0;a51<10;a51++ ) {
 sum=sum+ifslli(a51);
 }
 for(a52=0;a52<10;a52++ ) {
 sum=sum+ifslli(a52);
 }
 for(*a53=0;*a53<10;(*a53)++ ) {
 sum=sum+ifslli(*a53);
 }
 for(a54=0;a54<10;a54++ ) {
 sum=sum+ifulli(a54);
 }
 for(a55=0;a55<10;a55++ ) {
 sum=sum+ifulli(a55);
 }
 for(*a56=0;*a56<10;(*a56)++ ) {
 sum=sum+ifulli(*a56);
 }
 for(a57=0;a57<10;a57++ ) {
 sum=sum+ifflat(a57);
 }
 for(a58=0;a58<10;a58++ ) {
 sum=sum+ifflat(a58);
 }
 for(*a59=0;*a59<10;(*a59)++ ) {
 sum=sum+ifflat(*a59);
 }
 for(a60=0;a60<10;a60++ ) {
 sum=sum+ifdubl(a60);
 }
 for(a61=0;a61<10;a61++ ) {
 sum=sum+ifdubl(a61);
 }
 for(*a62=0;*a62<10;(*a62)++ ) {
 sum=sum+ifdubl(*a62);
 }
 for(a63=0;a63<10;a63++ ) {
 sum=sum+iflgdl(a63);
 }
 for(a64=0;a64<10;a64++ ) {
 sum=sum+iflgdl(a64);
 }
 for(*a65=0;*a65<10;(*a65)++ ) {
 sum=sum+iflgdl(*a65);
 }
 for(a99=0;a99<10;a99++ ) {
 sum=sum+ifsich(a99);
 }
 for(a100=0;a100<10;a100++ ) {
 sum=sum+ifsich(a100);
 }
 for(*a101=0;*a101<10;(*a101)++ ) {
 sum=sum+ifsich(*a101);
 }
 for(a102=0;a102<10;a102++ ) {
 sum=sum+ifunch(a102);
 }
 for(a103=0;a103<10;a103++ ) {
 sum=sum+ifunch(a103);
 }
 for(*a104=0;*a104<10;(*a104)++ ) {
 sum=sum+ifunch(*a104);
 }
 for(a105=0;a105<10;a105++ ) {
 sum=sum+ifssin(a105);
 }
 for(a106=0;a106<10;a106++ ) {
 sum=sum+ifssin(a106);
 }
 for(*a107=0;*a107<10;(*a107)++ ) {
 sum=sum+ifssin(*a107);
 }
 for(a108=0;a108<10;a108++ ) {
 sum=sum+ifusin(a108);
 }
 for(a109=0;a109<10;a109++ ) {
 sum=sum+ifusin(a109);
 }
 for(*a110=0;*a110<10;(*a110)++ ) {
 sum=sum+ifusin(*a110);
 }
 for(a111=0;a111<10;a111++ ) {
 sum=sum+ifslin(a111);
 }
 for(a112=0;a112<10;a112++ ) {
 sum=sum+ifslin(a112);
 }
 for(*a113=0;*a113<10;(*a113)++ ) {
 sum=sum+ifslin(*a113);
 }
 for(a114=0;a114<10;a114++ ) {
 sum=sum+ifulin(a114);
 }
 for(a115=0;a115<10;a115++ ) {
 sum=sum+ifulin(a115);
 }
 for(*a116=0;*a116<10;(*a116)++ ) {
 sum=sum+ifulin(*a116);
 }
 for(a117=0;a117<10;a117++ ) {
 sum=sum+ifslli(a117);
 }
 for(a118=0;a118<10;a118++ ) {
 sum=sum+ifslli(a118);
 }
 for(*a119=0;*a119<10;(*a119)++ ) {
 sum=sum+ifslli(*a119);
 }
 for(a120=0;a120<10;a120++ ) {
 sum=sum+ifulli(a120);
 }
 for(a121=0;a121<10;a121++ ) {
 sum=sum+ifulli(a121);
 }
 for(*a122=0;*a122<10;(*a122)++ ) {
 sum=sum+ifulli(*a122);
 }
 for(a123=0;a123<10;a123++ ) {
 sum=sum+ifflat(a123);
 }
 for(a124=0;a124<10;a124++ ) {
 sum=sum+ifflat(a124);
 }
 for(*a125=0;*a125<10;(*a125)++ ) {
 sum=sum+ifflat(*a125);
 }
 for(a126=0;a126<10;a126++ ) {
 sum=sum+ifdubl(a126);
 }
 for(a127=0;a127<10;a127++ ) {
 sum=sum+ifdubl(a127);
 }
 for(*a128=0;*a128<10;(*a128)++ ) {
 sum=sum+ifdubl(*a128);
 }
 for(a129=0;a129<10;a129++ ) {
 sum=sum+iflgdl(a129);
 }
 for(a130=0;a130<10;a130++ ) {
 sum=sum+iflgdl(a130);
 }
 for(*a131=0;*a131<10;(*a131)++ ) {
 sum=sum+iflgdl(*a131);
 }
 for(a132=0;a132<10;a132++ ) {
 sum=sum+ifsich(a132);
 }
 for(a133=0;a133<10;a133++ ) {
 sum=sum+ifsich(a133);
 }
 for(*a134=0;*a134<10;(*a134)++ ) {
 sum=sum+ifsich(*a134);
 }
 for(a135=0;a135<10;a135++ ) {
 sum=sum+ifunch(a135);
 }
 for(a136=0;a136<10;a136++ ) {
 sum=sum+ifunch(a136);
 }
 for(*a137=0;*a137<10;(*a137)++ ) {
 sum=sum+ifunch(*a137);
 }
 for(a138=0;a138<10;a138++ ) {
 sum=sum+ifssin(a138);
 }
 for(a139=0;a139<10;a139++ ) {
 sum=sum+ifssin(a139);
 }
 for(*a140=0;*a140<10;(*a140)++ ) {
 sum=sum+ifssin(*a140);
 }
 for(a141=0;a141<10;a141++ ) {
 sum=sum+ifusin(a141);
 }
 for(a142=0;a142<10;a142++ ) {
 sum=sum+ifusin(a142);
 }
 for(*a143=0;*a143<10;(*a143)++ ) {
 sum=sum+ifusin(*a143);
 }
 for(a144=0;a144<10;a144++ ) {
 sum=sum+ifslin(a144);
 }
 for(a145=0;a145<10;a145++ ) {
 sum=sum+ifslin(a145);
 }
 for(*a146=0;*a146<10;(*a146)++ ) {
 sum=sum+ifslin(*a146);
 }
 for(a147=0;a147<10;a147++ ) {
 sum=sum+ifulin(a147);
 }
 for(a148=0;a148<10;a148++ ) {
 sum=sum+ifulin(a148);
 }
 for(*a149=0;*a149<10;(*a149)++ ) {
 sum=sum+ifulin(*a149);
 }
 for(a150=0;a150<10;a150++ ) {
 sum=sum+ifslli(a150);
 }
 for(a151=0;a151<10;a151++ ) {
 sum=sum+ifslli(a151);
 }
 for(*a152=0;*a152<10;(*a152)++ ) {
 sum=sum+ifslli(*a152);
 }
 for(a153=0;a153<10;a153++ ) {
 sum=sum+ifulli(a153);
 }
 for(a154=0;a154<10;a154++ ) {
 sum=sum+ifulli(a154);
 }
 for(*a155=0;*a155<10;(*a155)++ ) {
 sum=sum+ifulli(*a155);
 }
 for(a156=0;a156<10;a156++ ) {
 sum=sum+ifflat(a156);
 }
 for(a157=0;a157<10;a157++ ) {
 sum=sum+ifflat(a157);
 }
 for(*a158=0;*a158<10;(*a158)++ ) {
 sum=sum+ifflat(*a158);
 }
 for(a159=0;a159<10;a159++ ) {
 sum=sum+ifdubl(a159);
 }
 for(a160=0;a160<10;a160++ ) {
 sum=sum+ifdubl(a160);
 }
 for(*a161=0;*a161<10;(*a161)++ ) {
 sum=sum+ifdubl(*a161);
 }
 for(a162=0;a162<10;a162++ ) {
 sum=sum+iflgdl(a162);
 }
 for(a163=0;a163<10;a163++ ) {
 sum=sum+iflgdl(a163);
 }
 for(*a164=0;*a164<10;(*a164)++ ) {
 sum=sum+iflgdl(*a164);
 }
 for(a198=0;a198<10;a198++ ) {
 sum=sum+ifsich(a198);
 }
 for(a199=0;a199<10;a199++ ) {
 sum=sum+ifsich(a199);
 }
 for(*a200=0;*a200<10;(*a200)++ ) {
 sum=sum+ifsich(*a200);
 }
 for(a201=0;a201<10;a201++ ) {
 sum=sum+ifunch(a201);
 }
 for(a202=0;a202<10;a202++ ) {
 sum=sum+ifunch(a202);
 }
 for(*a203=0;*a203<10;(*a203)++ ) {
 sum=sum+ifunch(*a203);
 }
 for(a204=0;a204<10;a204++ ) {
 sum=sum+ifssin(a204);
 }
 for(a205=0;a205<10;a205++ ) {
 sum=sum+ifssin(a205);
 }
 for(*a206=0;*a206<10;(*a206)++ ) {
 sum=sum+ifssin(*a206);
 }
 for(a207=0;a207<10;a207++ ) {
 sum=sum+ifusin(a207);
 }
 for(a208=0;a208<10;a208++ ) {
 sum=sum+ifusin(a208);
 }
 for(*a209=0;*a209<10;(*a209)++ ) {
 sum=sum+ifusin(*a209);
 }
 for(a210=0;a210<10;a210++ ) {
 sum=sum+ifslin(a210);
 }
 for(a211=0;a211<10;a211++ ) {
 sum=sum+ifslin(a211);
 }
 for(*a212=0;*a212<10;(*a212)++ ) {
 sum=sum+ifslin(*a212);
 }
 for(a213=0;a213<10;a213++ ) {
 sum=sum+ifulin(a213);
 }
 for(a214=0;a214<10;a214++ ) {
 sum=sum+ifulin(a214);
 }
 for(*a215=0;*a215<10;(*a215)++ ) {
 sum=sum+ifulin(*a215);
 }
 for(a216=0;a216<10;a216++ ) {
 sum=sum+ifslli(a216);
 }
 for(a217=0;a217<10;a217++ ) {
 sum=sum+ifslli(a217);
 }
 for(*a218=0;*a218<10;(*a218)++ ) {
 sum=sum+ifslli(*a218);
 }
 for(a219=0;a219<10;a219++ ) {
 sum=sum+ifulli(a219);
 }
 for(a220=0;a220<10;a220++ ) {
 sum=sum+ifulli(a220);
 }
 for(*a221=0;*a221<10;(*a221)++ ) {
 sum=sum+ifulli(*a221);
 }
 for(a222=0;a222<10;a222++ ) {
 sum=sum+ifflat(a222);
 }
 for(a223=0;a223<10;a223++ ) {
 sum=sum+ifflat(a223);
 }
 for(*a224=0;*a224<10;(*a224)++ ) {
 sum=sum+ifflat(*a224);
 }
 for(a225=0;a225<10;a225++ ) {
 sum=sum+ifdubl(a225);
 }
 for(a226=0;a226<10;a226++ ) {
 sum=sum+ifdubl(a226);
 }
 for(*a227=0;*a227<10;(*a227)++ ) {
 sum=sum+ifdubl(*a227);
 }
 for(a228=0;a228<10;a228++ ) {
 sum=sum+iflgdl(a228);
 }
 for(a229=0;a229<10;a229++ ) {
 sum=sum+iflgdl(a229);
 }
 for(*a230=0;*a230<10;(*a230)++ ) {
 sum=sum+iflgdl(*a230);
 }
   printf(" sum = %d \n",sum);
   if( sum == 45 * 165 ) puts(" OK ");
   else                  puts(" NG ");
 }
 int 
ifsich (signed char i)
 {
  int k; k = i; return k;
 }
 int 
ifunch (unsigned char i)
 {
  int k; k = i; return k;
 }
 int 
ifssin (signed short int i)
 {
  int k; k = i; return k;
 }
 int 
ifusin (unsigned short int i)
 {
  int k; k = i; return k;
 }
 int 
ifslin (signed long int i)
 {
  int k; k = i; return k;
 }
 int 
ifulin (unsigned long int i)
 {
  int k; k = i; return k;
 }
 int 
ifslli (signed long long int i)
 {
  int k; k = i; return k;
 }
 int 
ifulli (unsigned long long int i)
 {
  int k; k = i; return k;
 }
 int 
ifflat (float i)
 {
  int k; k = i; return k;
 }
 int 
ifdubl (double i)
 {
  int k; k = i; return k;
 }
 int 
#ifdef NO_LONG_DOUBLE
iflgdl (double i)
#else
iflgdl (long double i)
#endif
 {
  int k; k = i; return k;
 }
