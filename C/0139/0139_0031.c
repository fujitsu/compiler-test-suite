#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int scrlp24 (void);
int m3eva211 (void);
int m3eva210 (void);
int m3mpcm01 (void);
int mptest04 (void);
  
 
 
 
 
 
 

int main()  {

  mptest04();    
  m3mpcm01();    
  m3eva210();    
  m3eva211();    
  scrlp24();     

exit (0);
}

 
 
 

#include <string.h>
int mptest04 (void)
{
     int      ary1[5][5][5];
     int      ary2[5][5][5];
     int      d1,ngf,d01,rcd,i,j,k;
     int      funca(int i,int j,int k);
     int      edit(char[],int);
     int      stfunc(int,int);
     int      funcst(int d01,int d1);
     char     str[3];
     static char   msg[11] = "*** OK ***";

     printf("\n***** MPTEST04 START *****\n");

     ngf = 0;
     for(i=0 ; i<5 ; i++){
        for(j=0 ; j<5 ; j++){
           for(k=0 ; k<5 ; k++){
              ary1[i][j][k] = i+j+k;
              ary2[i][j][k] = j;
           }
        }
     }

     for(i=0 ; i<5 ; i++){
        for(j=0 ; j<5 ; j++){
           for(k=0 ; k<5 ; k++){
              d1=funca(i,j,k);
              d01 = ary1[i][j][k] * 3;
              edit(str,funcst(d01,d1));
              if( strncmp(str,"NG",3) == 0 ) {
                 strncpy(msg+4,str,2);
                 printf("*** ary1[%d][%d][%d] = %d  %s \n",
                                    i,j,k,ary1[i][j][k],msg);
                 ngf = 1;
                 goto l99;
              }
           }
           for(k=0;k<5;k++){
              rcd = 0;
              if(stfunc(ary2[i][j][k],rcd) == j){
                 edit(str,0);
              } else {
                 printf("  rcd = %d \n",rcd);
                 edit(str,1);
                 strncpy(msg+4,str,2);
                 printf("*** ary2[%d][%d][%d] = %d  %s \n",
                                    i,j,k,ary2[i][j][k],msg);
                 ngf = 1;
                 goto l99;
              }
           }
        }
     }
     if(ngf == 0){
        edit(msg+4,ngf);
     }
l99:
     printf("***** MPTEST04 %2s END *****\n",msg+4);
}

int 
funca (int pr1, int pr2, int pr3)
{
   int rtn;
   int ssfunc(int pr1,int pr2,int pr3);
     rtn = ssfunc(pr1,pr2,pr3);
     return(rtn);
}

int 
funcss (int i)
{
   return(i*3);
}

int 
ssfunc (int p1, int p2, int p3)
{
   return(funcss(p1)+funcss(p2)+funcss(p3));
}

int 
edit (char *s, int i)
{
     if(i==0)
        strcpy(s,"OK");
     else
        strcpy(s,"NG");
     return(1);
}

int 
funcb (int *a, int s)
{
   int i;

     for(i=0;i<s;i++)
       *(a+i)=i;
     return(0);
}

int 
fun (int arg1, int arg2)
{
     int ary[5],i;
     funcb(ary,5);
     for(i=0;i<5;i++){
        if(ary[i] == arg1)
           return(i);
     }
     return(-1);
}

int 
funcst (int i, int j)
{
     return(i-j);
}

int 
stfunc (int i, int j)
{
   int w;
     w=fun(i,j)+j;
     return(w);
}

 
 
 

  
 int   outi1,outi2;
 int 
m3mpcm01 (void)
 {
   int *pi;
   int ai,bi,ei,fi;
   ai=10;
   bi=20;
   ei=50;
   fi=60;
    
   pi=&ai;
   fi=*pi;
   *pi=15;
   ei=*pi;
   if(ei==fi)
   {
     printf("error of a-2 : ei = %d\n",ei);
   }
   else
   {
     if(ei!=15)
     {
       printf("error of a-2 : ei = %d\n",ei);
     }
     else
     {
       printf("ok of a-2\n");
     }
   }
   ai=10;

    
   pi=&ai;
   fi=ai+bi;
   *pi=15;
   ei=ai+bi;
   if(ei==fi)
   {
     printf("error of c-2 : ei = %d\n",ei);
   }
   else
   {
     if(ei!=35)
     {
       printf("error of c-2 : ei = %d\n",ei);
     }
     else
     {
       printf("ok of c-2\n");
     }
   }
   ai=10;

    
   pi=&ai;
   fi=bi+(*pi);
   ai=15;
   ei=bi+(*pi);
   if(ei==fi)
   {
     printf("error of b-2:ei = %d\n",ei);
   }
   else
   {
     if(ei!=35)
     {
       printf("error of b-2:ei = %d\n",ei);
     }
     else
     {
       printf("ok of b-2\n");
     }
   }
   ai=10;

    
   pi=&ai;
   fi=bi+(*pi);
   pi=&bi;
   ei=bi+(*pi);
   if(ei==fi)
   {
     printf("error of d-2:ei = %d\n",ei);
   }
   else
   {
     if(ei!=40)
     {
       printf("error of d-2:ei = %d\n",ei);
     }
     else
     {
       printf("ok of b-2\n");
     }
   }
   ai=10;
 }

 
 
 

int 
f (void)
{
  {
    static int a=10;
    if( a==10 )
        return 1;
      else
        return 0;
  }
}

extern int a;

int 
m3eva210 (void)
{
  if( a==0 && f() )
      printf("M3EVA210 TEST OK \n");
    else
      printf("M3EVA210 TEST NG = %d \n",a);
}
int a=0;

 
 
 

int 
f1 (void)
{
  {
    static int a=10;
    if( a==10 )
        return 1;
      else
        return 0;
  }
}

int 
m3eva211 (void)
{
  extern int a;
  a = 2;
  if( a==2 && f1() )
      printf("M3EVA211 TEST OK \n");
    else
      printf("M3EVA211 TEST NG = %d \n",a);
}
int a;

 
 
 

int 
scrlp24 (void)
{
       long int a0001;long int a0002;long int a0003;
       long int a0004;long int a0005;long int a0006;
       long int a0007;long int a0008;long int a0009;
       long int a0010;long int a0011;long int a0012;
       long int a0013;long int a0014;long int a0015;
       long int a0016;long int a0017;long int a0018;
       long int a0019;long int a0020;long int a0021;
       long int a0022;long int a0023;long int a0024;
       long int a0025;long int a0026;long int a0027;
       long int a0028;long int a0029;long int a0030;
       long int a0031;long int a0032;long int a0033;
       long int a0034;long int a0035;long int a0036;
       long int a0037;long int a0038;long int a0039;
       long int a0040;long int a0041;long int a0042;
       long int a0043;long int a0044;long int a0045;
       long int a0046;long int a0047;long int a0048;
       long int a0049;long int a0050;long int a0051;
       long int a0052;long int a0053;long int a0054;
       long int a0055;long int a0056;long int a0057;
       long int a0058;long int a0059;long int a0060;
       long int a0061;long int a0062;long int a0063;
       long int a0064;long int a0065;long int a0066;
       long int a0067;long int a0068;long int a0069;
       long int a0070;long int a0071;long int a0072;
       long int a0073;long int a0074;long int a0075;
       long int a0076;long int a0077;long int a0078;
       long int a0079;long int a0080;long int a0081;
       long int a0082;long int a0083;long int a0084;
       long int a0085;long int a0086;long int a0087;
       long int a0088;long int a0089;long int a0090;
       long int a0091;long int a0092;long int a0093;
       long int a0094;long int a0095;long int a0096;
       long int a0097;long int a0098;long int a0099;
       long int a0100;long int a0101;long int a0102;
       long int a0103;long int a0104;long int a0105;
       long int a0106;long int a0107;long int a0108;
       long int a0109;long int a0110;long int a0111;
       long int a0112;long int a0113;long int a0114;
       long int a0115;long int a0116;long int a0117;
       long int a0118;long int a0119;long int a0120;
       long int a0121;long int a0122;long int a0123;
       long int a0124;long int a0125;long int a0126;
       long int a0127;long int a0128;long int a0129;
       long int a0130;long int a0131;long int a0132;
       long int a0133;long int a0134;long int a0135;
       long int a0136;long int a0137;long int a0138;
       long int a0139;long int a0140;long int a0141;
       long int a0142;long int a0143;long int a0144;
       long int a0145;long int a0146;long int a0147;
       long int a0148;long int a0149;long int a0150;
       long int a0151;long int a0152;long int a0153;
       long int a0154;long int a0155;long int a0156;
       long int a0157;long int a0158;long int a0159;
       long int a0160;long int a0161;long int a0162;
       long int a0163;long int a0164;long int a0165;
       long int a0166;long int a0167;long int a0168;
       long int a0169;long int a0170;long int a0171;
       long int a0172;long int a0173;long int a0174;
       long int a0175;long int a0176;long int a0177;
       long int a0178;long int a0179;long int a0180;
       long int a0181;long int a0182;long int a0183;
       long int a0184;long int a0185;long int a0186;
       long int a0187;long int a0188;long int a0189;
       long int a0190;long int a0191;long int a0192;
       long int a0193;long int a0194;long int a0195;
       long int a0196;long int a0197;long int a0198;
       long int a0199;long int a0200;long int a0201;
       long int a0202;long int a0203;long int a0204;
       long int a0205;long int a0206;long int a0207;
       long int a0208;long int a0209;long int a0210;
       long int a0211;long int a0212;long int a0213;
       long int a0214;long int a0215;long int a0216;
       long int a0217;long int a0218;long int a0219;
       long int a0220;long int a0221;long int a0222;
       long int a0223;long int a0224;long int a0225;
       long int a0226;long int a0227;long int a0228;
       long int a0229;long int a0230;long int a0231;
       long int a0232;long int a0233;long int a0234;
       long int a0235;long int a0236;long int a0237;
       long int a0238;long int a0239;long int a0240;
       long int a0241;long int a0242;long int a0243;
       long int a0244;long int a0245;long int a0246;
       long int a0247;long int a0248;long int a0249;
       long int a0250;long int a0251;long int a0252;
       long int a0253;long int a0254;long int a0255;
       long int a0256;long int a0257;long int a0258;
       long int a0259;long int a0260;long int a0261;
       long int a0262;long int a0263;long int a0264;
       long int a0265;long int a0266;long int a0267;
       long int a0268;long int a0269;long int a0270;
       long int a0271;long int a0272;long int a0273;
       long int a0274;long int a0275;long int a0276;
       long int a0277;long int a0278;long int a0279;
       long int a0280;long int a0281;long int a0282;
       long int a0283;long int a0284;long int a0285;
       long int a0286;long int a0287;long int a0288;
       long int a0289;long int a0290;long int a0291;
       long int a0292;long int a0293;long int a0294;
       long int a0295;long int a0296;long int a0297;
       long int a0298;long int a0299;long int a0300;
       long int a0301;long int a0302;long int a0303;
       long int a0304;long int a0305;long int a0306;
       long int a0307;long int a0308;long int a0309;
       long int a0310;long int a0311;long int a0312;
       long int a0313;long int a0314;long int a0315;
       long int a0316;long int a0317;long int a0318;
       long int a0319;long int a0320;long int a0321;
       long int a0322;long int a0323;long int a0324;
       long int a0325;long int a0326;long int a0327;
       long int a0328;long int a0329;long int a0330;
       long int a0331;long int a0332;long int a0333;
       long int a0334;long int a0335;long int a0336;
       long int a0337;long int a0338;long int a0339;
       long int a0340;long int a0341;long int a0342;
       long int a0343;long int a0344;long int a0345;
       long int a0346;long int a0347;long int a0348;
       long int a0349;long int a0350;long int a0351;
       long int a0352;long int a0353;long int a0354;
       long int a0355;long int a0356;long int a0357;
       long int a0358;long int a0359;long int a0360;
       long int a0361;long int a0362;long int a0363;
       long int a0364;long int a0365;long int a0366;
       long int a0367;long int a0368;long int a0369;
       long int a0370;long int a0371;long int a0372;
       long int a0373;long int a0374;long int a0375;
       long int a0376;long int a0377;long int a0378;
       long int a0379;long int a0380;long int a0381;
       long int a0382;long int a0383;long int a0384;
       long int a0385;long int a0386;long int a0387;
       long int a0388;long int a0389;long int a0390;
       long int a0391;long int a0392;long int a0393;
       long int a0394;long int a0395;long int a0396;
       long int a0397;long int a0398;long int a0399;
       long int a0400;long int a0401;long int a0402;
       long int a0403;long int a0404;long int a0405;
       long int a0406;long int a0407;long int a0408;
       long int a0409;long int a0410;long int a0411;
       long int a0412;long int a0413;long int a0414;
       long int a0415;long int a0416;long int a0417;
       long int a0418;long int a0419;long int a0420;
       long int a0421;long int a0422;long int a0423;
       long int a0424;long int a0425;long int a0426;
       long int a0427;long int a0428;long int a0429;
       long int a0430;long int a0431;long int a0432;
       long int a0433;long int a0434;long int a0435;
       long int a0436;long int a0437;long int a0438;
       long int a0439;long int a0440;long int a0441;
       long int a0442;long int a0443;long int a0444;
       long int a0445;long int a0446;long int a0447;
       long int a0448;long int a0449;long int a0450;
       long int a0451;long int a0452;long int a0453;
       long int a0454;long int a0455;long int a0456;
       long int a0457;long int a0458;long int a0459;
       long int a0460;long int a0461;long int a0462;
       long int a0463;long int a0464;long int a0465;
       long int a0466;long int a0467;long int a0468;
       long int a0469;long int a0470;long int a0471;
       long int a0472;long int a0473;long int a0474;
       long int a0475;long int a0476;long int a0477;
       long int a0478;long int a0479;long int a0480;
       long int a0481;long int a0482;long int a0483;
       long int a0484;long int a0485;long int a0486;
       long int a0487;long int a0488;long int a0489;
       long int a0490;long int a0491;long int a0492;
       long int a0493;long int a0494;long int a0495;
       long int a0496;long int a0497;long int a0498;
       long int a0499;long int a0500;long int a0501;
       long int a0502;long int a0503;long int a0504;
       long int a0505;long int a0506;long int a0507;
       long int a0508;long int a0509;long int a0510;
       long int a0511;long int a0512;long int a0513;
       long int a0514;long int a0515;long int a0516;
       long int a0517;long int a0518;long int a0519;
       long int a0520;long int a0521;long int a0522;
       long int a0523;long int a0524;long int a0525;
       long int a0526;long int a0527;long int a0528;
       long int a0529;long int a0530;long int a0531;
       long int a0532;long int a0533;long int a0534;
       long int a0535;long int a0536;long int a0537;
       long int a0538;long int a0539;long int a0540;
       long int a0541;long int a0542;long int a0543;
       long int a0544;long int a0545;long int a0546;
       long int a0547;long int a0548;long int a0549;
       long int a0550;long int a0551;long int a0552;
       long int a0553;long int a0554;long int a0555;
       long int a0556;long int a0557;long int a0558;
       long int a0559;long int a0560;long int a0561;
       long int a0562;long int a0563;long int a0564;
       long int a0565;long int a0566;long int a0567;
       long int a0568;long int a0569;long int a0570;
       long int a0571;long int a0572;long int a0573;
       long int a0574;long int a0575;long int a0576;
       long int a0577;long int a0578;long int a0579;
       long int a0580;long int a0581;long int a0582;
       long int a0583;long int a0584;long int a0585;
       long int a0586;long int a0587;long int a0588;
       long int a0589;long int a0590;long int a0591;
       long int a0592;long int a0593;long int a0594;
       long int a0595;long int a0596;long int a0597;
       long int a0598;long int a0599;long int a0600;
       long int a0601;long int a0602;long int a0603;
       long int a0604;long int a0605;long int a0606;
       long int a0607;long int a0608;long int a0609;
       long int a0610;long int a0611;long int a0612;
       long int a0613;long int a0614;long int a0615;
       long int a0616;long int a0617;long int a0618;
       long int a0619;long int a0620;long int a0621;
       long int a0622;long int a0623;long int a0624;
       long int a0625;long int a0626;long int a0627;
       long int a0628;long int a0629;long int a0630;
       long int a0631;long int a0632;long int a0633;
       long int a0634;long int a0635;long int a0636;
       long int a0637;long int a0638;long int a0639;
       long int a0640;long int a0641;long int a0642;
       long int a0643;long int a0644;long int a0645;
       long int a0646;long int a0647;long int a0648;
       long int a0649;long int a0650;long int a0651;
       long int a0652;long int a0653;long int a0654;
       long int a0655;long int a0656;long int a0657;
       long int a0658;long int a0659;long int a0660;
       long int a0661;long int a0662;long int a0663;
       long int a0664;long int a0665;long int a0666;
       long int a0667;long int a0668;long int a0669;
       long int a0670;long int a0671;long int a0672;
       long int a0673;long int a0674;long int a0675;
       long int a0676;long int a0677;long int a0678;
       long int a0679;long int a0680;long int a0681;
       long int a0682;long int a0683;long int a0684;
       long int a0685;long int a0686;long int a0687;
       long int a0688;long int a0689;long int a0690;
       long int a0691;long int a0692;long int a0693;
       long int a0694;long int a0695;long int a0696;
       long int a0697;long int a0698;long int a0699;
       long int a0700;long int a0701;long int a0702;
       long int a0703;long int a0704;long int a0705;
       long int a0706;long int a0707;long int a0708;
       long int a0709;long int a0710;long int a0711;
       long int a0712;long int a0713;long int a0714;
       long int a0715;long int a0716;long int a0717;
       long int a0718;long int a0719;long int a0720;
       long int a0721;long int a0722;long int a0723;
       long int a0724;long int a0725;long int a0726;
       long int a0727;long int a0728;long int a0729;
       long int a0730;long int a0731;long int a0732;
       long int a0733;long int a0734;long int a0735;
       long int a0736;long int a0737;long int a0738;
       long int a0739;long int a0740;long int a0741;
       long int a0742;long int a0743;long int a0744;
       long int a0745;long int a0746;long int a0747;
       long int a0748;long int a0749;long int a0750;
       long int a0751;long int a0752;long int a0753;
       long int a0754;long int a0755;long int a0756;
       long int a0757;long int a0758;long int a0759;
       long int a0760;long int a0761;long int a0762;
       long int a0763;long int a0764;long int a0765;
       long int a0766;long int a0767;long int a0768;
       long int a0769;long int a0770;long int a0771;
       long int a0772;long int a0773;long int a0774;
       long int a0775;long int a0776;long int a0777;
       long int a0778;long int a0779;long int a0780;
       long int a0781;long int a0782;long int a0783;
       long int a0784;long int a0785;long int a0786;
       long int a0787;long int a0788;long int a0789;
       long int a0790;long int a0791;long int a0792;
       long int a0793;long int a0794;long int a0795;
       long int a0796;long int a0797;long int a0798;
       long int a0799;long int a0800;long int a0801;
       long int a0802;long int a0803;long int a0804;
       long int a0805;long int a0806;long int a0807;
       long int a0808;long int a0809;long int a0810;
       long int a0811;long int a0812;long int a0813;
       long int a0814;long int a0815;long int a0816;
       long int a0817;long int a0818;long int a0819;
       long int a0820;long int a0821;long int a0822;
       long int a0823;long int a0824;long int a0825;
       long int a0826;long int a0827;long int a0828;
       long int a0829;long int a0830;long int a0831;
       long int a0832;long int a0833;long int a0834;
       long int a0835;long int a0836;long int a0837;
       long int a0838;long int a0839;long int a0840;
       long int a0841;long int a0842;long int a0843;
       long int a0844;long int a0845;long int a0846;
       long int a0847;long int a0848;long int a0849;
       long int a0850;long int a0851;long int a0852;
       long int a0853;long int a0854;long int a0855;
       long int a0856;long int a0857;long int a0858;
       long int a0859;long int a0860;long int a0861;
       long int a0862;long int a0863;long int a0864;
       long int a0865;long int a0866;long int a0867;
       long int a0868;long int a0869;long int a0870;
       long int a0871;long int a0872;long int a0873;
       long int a0874;long int a0875;long int a0876;
       long int a0877;long int a0878;long int a0879;
       long int a0880;long int a0881;long int a0882;
       long int a0883;long int a0884;long int a0885;
       long int a0886;long int a0887;long int a0888;
       long int a0889;long int a0890;long int a0891;
       long int a0892;long int a0893;long int a0894;
       long int a0895;long int a0896;long int a0897;
       long int a0898;long int a0899;long int a0900;
       long int a0901;long int a0902;long int a0903;
       long int a0904;long int a0905;long int a0906;
       long int a0907;long int a0908;long int a0909;
       long int a0910;long int a0911;long int a0912;
       long int a0913;long int a0914;long int a0915;
       long int a0916;long int a0917;long int a0918;
       long int a0919;long int a0920;long int a0921;
       long int a0922;long int a0923;long int a0924;
       long int a0925;long int a0926;long int a0927;
       long int a0928;long int a0929;long int a0930;
       long int a0931;long int a0932;long int a0933;
       long int a0934;long int a0935;long int a0936;
       long int a0937;long int a0938;long int a0939;
       long int a0940;long int a0941;long int a0942;
       long int a0943;long int a0944;long int a0945;
       long int a0946;long int a0947;long int a0948;
       long int a0949;long int a0950;long int a0951;
       long int a0952;long int a0953;long int a0954;
       long int a0955;long int a0956;long int a0957;
       long int a0958;long int a0959;long int a0960;
       long int a0961;long int a0962;long int a0963;
       long int a0964;long int a0965;long int a0966;
       long int a0967;long int a0968;long int a0969;
       long int a0970;long int a0971;long int a0972;
       long int a0973;long int a0974;long int a0975;
       long int a0976;long int a0977;long int a0978;
       long int a0979;long int a0980;long int a0981;
       long int a0982;long int a0983;long int a0984;
       long int a0985;long int a0986;long int a0987;
       long int a0988;long int a0989;long int a0990;
       long int a0991;long int a0992;long int a0993;
       long int a0994;long int a0995;long int a0996;
       long int a0997;long int a0998;long int a0999;
       long int a1000;long int a1001;long int a1002;
       long int a1003;long int a1004;long int a1005;
       long int a1006;long int a1007;long int a1008;
       long int a1009;long int a1010;long int a1011;
       long int a1012;long int a1013;long int a1014;
       long int a1015;long int a1016;long int a1017;
       long int a1018;long int a1019;long int a1020;
       long int a1021;long int a1022;long int a1023;
       long int a1024;long int a1025;long int a1026;
       int i,sum=0;
       for(i=0;i<10;i++) sum = sum + i;
       a0001 = i;
       a0002 =  a0001 + 1 ;
       a0003 =  a0002 + 1 ;
       a0004 =  a0003 + 1 ;
       a0005 =  a0004 + 1 ;
       a0006 =  a0005 + 1 ;
       a0007 =  a0006 + 1 ;
       a0008 =  a0007 + 1 ;
       a0009 =  a0008 + 1 ;
       a0010 =  a0009 + 1 ;
       a0011 =  a0010 + 1 ;
       a0012 =  a0011 + 1 ;
       a0013 =  a0012 + 1 ;
       a0014 =  a0013 + 1 ;
       a0015 =  a0014 + 1 ;
       a0016 =  a0015 + 1 ;
       a0017 =  a0016 + 1 ;
       a0018 =  a0017 + 1 ;
       a0019 =  a0018 + 1 ;
       a0020 =  a0019 + 1 ;
       a0021 =  a0020 + 1 ;
       for(i=0;i<10;i++) sum = sum + i;
       a0022 =  a0021 + 1 ;
       a0023 =  a0022 + 1 ;
       a0024 =  a0023 + 1 ;
       a0025 =  a0024 + 1 ;
       a0026 =  a0025 + 1 ;
       a0027 =  a0026 + 1 ;
       a0028 =  a0027 + 1 ;
       a0029 =  a0028 + 1 ;
       a0030 =  a0029 + 1 ;
       a0031 =  a0030 + 1 ;
       a0032 =  a0031 + 1 ;
       a0033 =  a0032 + 1 ;
       a0034 =  a0033 + 1 ;
       a0035 =  a0034 + 1 ;
       a0036 =  a0035 + 1 ;
       a0037 =  a0036 + 1 ;
       a0038 =  a0037 + 1 ;
       a0039 =  a0038 + 1 ;
       a0040 =  a0039 + 1 ;
       a0041 =  a0040 + 1 ;
       a0042 =  a0041 + 1 ;
       for(i=0;i<10;i++) sum = sum + i;
       a0043 =  a0042 + 1 ;
       a0044 =  a0043 + 1 ;
       a0045 =  a0044 + 1 ;
       a0046 =  a0045 + 1 ;
       a0047 =  a0046 + 1 ;
       a0048 =  a0047 + 1 ;
       a0049 =  a0048 + 1 ;
       a0050 =  a0049 + 1 ;
       a0051 =  a0050 + 1 ;
       a0052 =  a0051 + 1 ;
       a0053 =  a0052 + 1 ;
       a0054 =  a0053 + 1 ;
       a0055 =  a0054 + 1 ;
       a0056 =  a0055 + 1 ;
       a0057 =  a0056 + 1 ;
       a0058 =  a0057 + 1 ;
       a0059 =  a0058 + 1 ;
       a0060 =  a0059 + 1 ;
       a0061 =  a0060 + 1 ;
       a0062 =  a0061 + 1 ;
       a0063 =  a0062 + 1 ;
       for(i=0;i<10;i++) sum = sum + i;
       a0064 =  a0063 + 1 ;
       a0065 =  a0064 + 1 ;
       a0066 =  a0065 + 1 ;
       a0067 =  a0066 + 1 ;
       a0068 =  a0067 + 1 ;
       a0069 =  a0068 + 1 ;
       a0070 =  a0069 + 1 ;
       a0071 =  a0070 + 1 ;
       a0072 =  a0071 + 1 ;
       a0073 =  a0072 + 1 ;
       a0074 =  a0073 + 1 ;
       a0075 =  a0074 + 1 ;
       a0076 =  a0075 + 1 ;
       a0077 =  a0076 + 1 ;
       a0078 =  a0077 + 1 ;
       a0079 =  a0078 + 1 ;
       a0080 =  a0079 + 1 ;
       a0081 =  a0080 + 1 ;
       a0082 =  a0081 + 1 ;
       a0083 =  a0082 + 1 ;
       a0084 =  a0083 + 1 ;
       for(i=0;i<10;i++) sum = sum + i;
       a0085 =  a0084 + 1 ;
       a0086 =  a0085 + 1 ;
       a0087 =  a0086 + 1 ;
       a0088 =  a0087 + 1 ;
       a0089 =  a0088 + 1 ;
       a0090 =  a0089 + 1 ;
       a0091 =  a0090 + 1 ;
       a0092 =  a0091 + 1 ;
       a0093 =  a0092 + 1 ;
       a0094 =  a0093 + 1 ;
       a0095 =  a0094 + 1 ;
       a0096 =  a0095 + 1 ;
       a0097 =  a0096 + 1 ;
       a0098 =  a0097 + 1 ;
       a0099 =  a0098 + 1 ;
       a0100 =  a0099 + 1 ;
       a0101 =  a0100 + 1 ;
       a0102 =  a0101 + 1 ;
       a0103 =  a0102 + 1 ;
       a0104 =  a0103 + 1 ;
       a0105 =  a0104 + 1 ;
       for(i=0;i<10;i++) sum = sum + i;
       a0106 =  a0105 + 1 ;
       a0107 =  a0106 + 1 ;
       a0108 =  a0107 + 1 ;
       a0109 =  a0108 + 1 ;
       a0110 =  a0109 + 1 ;
       a0111 =  a0110 + 1 ;
       a0112 =  a0111 + 1 ;
       a0113 =  a0112 + 1 ;
       a0114 =  a0113 + 1 ;
       a0115 =  a0114 + 1 ;
       a0116 =  a0115 + 1 ;
       a0117 =  a0116 + 1 ;
       a0118 =  a0117 + 1 ;
       a0119 =  a0118 + 1 ;
       a0120 =  a0119 + 1 ;
       a0121 =  a0120 + 1 ;
       a0122 =  a0121 + 1 ;
       a0123 =  a0122 + 1 ;
       a0124 =  a0123 + 1 ;
       a0125 =  a0124 + 1 ;
       a0126 =  a0125 + 1 ;
       for(i=0;i<10;i++) sum = sum + i;
       a0127 =  a0126 + 1 ;
       a0128 =  a0127 + 1 ;
       a0129 =  a0128 + 1 ;
       a0130 =  a0129 + 1 ;
       a0131 =  a0130 + 1 ;
       a0132 =  a0131 + 1 ;
       a0133 =  a0132 + 1 ;
       a0134 =  a0133 + 1 ;
       a0135 =  a0134 + 1 ;
       a0136 =  a0135 + 1 ;
       a0137 =  a0136 + 1 ;
       a0138 =  a0137 + 1 ;
       a0139 =  a0138 + 1 ;
       a0140 =  a0139 + 1 ;
       a0141 =  a0140 + 1 ;
       a0142 =  a0141 + 1 ;
       a0143 =  a0142 + 1 ;
       a0144 =  a0143 + 1 ;
       a0145 =  a0144 + 1 ;
       a0146 =  a0145 + 1 ;
       a0147 =  a0146 + 1 ;
       for(i=0;i<10;i++) sum = sum + i;
       a0148 =  a0147 + 1 ;
       a0149 =  a0148 + 1 ;
       a0150 =  a0149 + 1 ;
       a0151 =  a0150 + 1 ;
       a0152 =  a0151 + 1 ;
       a0153 =  a0152 + 1 ;
       a0154 =  a0153 + 1 ;
       a0155 =  a0154 + 1 ;
       a0156 =  a0155 + 1 ;
       a0157 =  a0156 + 1 ;
       a0158 =  a0157 + 1 ;
       a0159 =  a0158 + 1 ;
       a0160 =  a0159 + 1 ;
       a0161 =  a0160 + 1 ;
       a0162 =  a0161 + 1 ;
       a0163 =  a0162 + 1 ;
       a0164 =  a0163 + 1 ;
       a0165 =  a0164 + 1 ;
       a0166 =  a0165 + 1 ;
       a0167 =  a0166 + 1 ;
       a0168 =  a0167 + 1 ;
       for(i=0;i<10;i++) sum = sum + i;
       a0169 =  a0168 + 1 ;
       a0170 =  a0169 + 1 ;
       a0171 =  a0170 + 1 ;
       a0172 =  a0171 + 1 ;
       a0173 =  a0172 + 1 ;
       a0174 =  a0173 + 1 ;
       a0175 =  a0174 + 1 ;
       a0176 =  a0175 + 1 ;
       a0177 =  a0176 + 1 ;
       a0178 =  a0177 + 1 ;
       a0179 =  a0178 + 1 ;
       a0180 =  a0179 + 1 ;
       a0181 =  a0180 + 1 ;
       a0182 =  a0181 + 1 ;
       a0183 =  a0182 + 1 ;
       a0184 =  a0183 + 1 ;
       a0185 =  a0184 + 1 ;
       a0186 =  a0185 + 1 ;
       a0187 =  a0186 + 1 ;
       a0188 =  a0187 + 1 ;
       a0189 =  a0188 + 1 ;
       for(i=0;i<10;i++) sum = sum + i;
       a0190 =  a0189 + 1 ;
       a0191 =  a0190 + 1 ;
       a0192 =  a0191 + 1 ;
       a0193 =  a0192 + 1 ;
       a0194 =  a0193 + 1 ;
       a0195 =  a0194 + 1 ;
       a0196 =  a0195 + 1 ;
       a0197 =  a0196 + 1 ;
       a0198 =  a0197 + 1 ;
       a0199 =  a0198 + 1 ;
       a0200 =  a0199 + 1 ;
       a0201 =  a0200 + 1 ;
       a0202 =  a0201 + 1 ;
       a0203 =  a0202 + 1 ;
       a0204 =  a0203 + 1 ;
       a0205 =  a0204 + 1 ;
       a0206 =  a0205 + 1 ;
       a0207 =  a0206 + 1 ;
       a0208 =  a0207 + 1 ;
       a0209 =  a0208 + 1 ;
       a0210 =  a0209 + 1 ;
       for(i=0;i<10;i++) sum = sum + i;
       a0211 =  a0210 + 1 ;
       a0212 =  a0211 + 1 ;
       a0213 =  a0212 + 1 ;
       a0214 =  a0213 + 1 ;
       a0215 =  a0214 + 1 ;
       a0216 =  a0215 + 1 ;
       a0217 =  a0216 + 1 ;
       a0218 =  a0217 + 1 ;
       a0219 =  a0218 + 1 ;
       a0220 =  a0219 + 1 ;
       a0221 =  a0220 + 1 ;
       a0222 =  a0221 + 1 ;
       a0223 =  a0222 + 1 ;
       a0224 =  a0223 + 1 ;
       a0225 =  a0224 + 1 ;
       a0226 =  a0225 + 1 ;
       a0227 =  a0226 + 1 ;
       a0228 =  a0227 + 1 ;
       a0229 =  a0228 + 1 ;
       a0230 =  a0229 + 1 ;
       a0231 =  a0230 + 1 ;
       for(i=0;i<10;i++) sum = sum + i;
       a0232 =  a0231 + 1 ;
       a0233 =  a0232 + 1 ;
       a0234 =  a0233 + 1 ;
       a0235 =  a0234 + 1 ;
       a0236 =  a0235 + 1 ;
       a0237 =  a0236 + 1 ;
       a0238 =  a0237 + 1 ;
       a0239 =  a0238 + 1 ;
       a0240 =  a0239 + 1 ;
       a0241 =  a0240 + 1 ;
       a0242 =  a0241 + 1 ;
       a0243 =  a0242 + 1 ;
       a0244 =  a0243 + 1 ;
       a0245 =  a0244 + 1 ;
       a0246 =  a0245 + 1 ;
       a0247 =  a0246 + 1 ;
       a0248 =  a0247 + 1 ;
       a0249 =  a0248 + 1 ;
       a0250 =  a0249 + 1 ;
       a0251 =  a0250 + 1 ;
       a0252 =  a0251 + 1 ;
       for(i=0;i<10;i++) sum = sum + i;
       a0253 =  a0252 + 1 ;
       a0254 =  a0253 + 1 ;
       a0255 =  a0254 + 1 ;
       a0256 =  a0255 + 1 ;
       a0257 =  a0256 + 1 ;
       a0258 =  a0257 + 1 ;
       a0259 =  a0258 + 1 ;
       a0260 =  a0259 + 1 ;
       a0261 =  a0260 + 1 ;
       a0262 =  a0261 + 1 ;
       a0263 =  a0262 + 1 ;
       a0264 =  a0263 + 1 ;
       a0265 =  a0264 + 1 ;
       a0266 =  a0265 + 1 ;
       a0267 =  a0266 + 1 ;
       a0268 =  a0267 + 1 ;
       a0269 =  a0268 + 1 ;
       a0270 =  a0269 + 1 ;
       a0271 =  a0270 + 1 ;
       a0272 =  a0271 + 1 ;
       a0273 =  a0272 + 1 ;
       for(i=0;i<10;i++) sum = sum + i;
       a0274 =  a0273 + 1 ;
       a0275 =  a0274 + 1 ;
       a0276 =  a0275 + 1 ;
       a0277 =  a0276 + 1 ;
       a0278 =  a0277 + 1 ;
       a0279 =  a0278 + 1 ;
       a0280 =  a0279 + 1 ;
       a0281 =  a0280 + 1 ;
       a0282 =  a0281 + 1 ;
       a0283 =  a0282 + 1 ;
       a0284 =  a0283 + 1 ;
       a0285 =  a0284 + 1 ;
       a0286 =  a0285 + 1 ;
       a0287 =  a0286 + 1 ;
       a0288 =  a0287 + 1 ;
       a0289 =  a0288 + 1 ;
       a0290 =  a0289 + 1 ;
       a0291 =  a0290 + 1 ;
       a0292 =  a0291 + 1 ;
       a0293 =  a0292 + 1 ;
       a0294 =  a0293 + 1 ;
       for(i=0;i<10;i++) sum = sum + i;
       a0295 =  a0294 + 1 ;
       a0296 =  a0295 + 1 ;
       a0297 =  a0296 + 1 ;
       a0298 =  a0297 + 1 ;
       a0299 =  a0298 + 1 ;
       a0300 =  a0299 + 1 ;
       a0301 =  a0300 + 1 ;
       a0302 =  a0301 + 1 ;
       a0303 =  a0302 + 1 ;
       a0304 =  a0303 + 1 ;
       a0305 =  a0304 + 1 ;
       a0306 =  a0305 + 1 ;
       a0307 =  a0306 + 1 ;
       a0308 =  a0307 + 1 ;
       a0309 =  a0308 + 1 ;
       a0310 =  a0309 + 1 ;
       a0311 =  a0310 + 1 ;
       a0312 =  a0311 + 1 ;
       a0313 =  a0312 + 1 ;
       a0314 =  a0313 + 1 ;
       a0315 =  a0314 + 1 ;
       for(i=0;i<10;i++) sum = sum + i;
       a0316 =  a0315 + 1 ;
       a0317 =  a0316 + 1 ;
       a0318 =  a0317 + 1 ;
       a0319 =  a0318 + 1 ;
       a0320 =  a0319 + 1 ;
       a0321 =  a0320 + 1 ;
       a0322 =  a0321 + 1 ;
       a0323 =  a0322 + 1 ;
       a0324 =  a0323 + 1 ;
       a0325 =  a0324 + 1 ;
       a0326 =  a0325 + 1 ;
       a0327 =  a0326 + 1 ;
       a0328 =  a0327 + 1 ;
       a0329 =  a0328 + 1 ;
       a0330 =  a0329 + 1 ;
       a0331 =  a0330 + 1 ;
       a0332 =  a0331 + 1 ;
       a0333 =  a0332 + 1 ;
       a0334 =  a0333 + 1 ;
       a0335 =  a0334 + 1 ;
       a0336 =  a0335 + 1 ;
       for(i=0;i<10;i++) sum = sum + i;
       a0337 =  a0336 + 1 ;
       a0338 =  a0337 + 1 ;
       a0339 =  a0338 + 1 ;
       a0340 =  a0339 + 1 ;
       a0341 =  a0340 + 1 ;
       a0342 =  a0341 + 1 ;
       a0343 =  a0342 + 1 ;
       a0344 =  a0343 + 1 ;
       a0345 =  a0344 + 1 ;
       a0346 =  a0345 + 1 ;
       a0347 =  a0346 + 1 ;
       a0348 =  a0347 + 1 ;
       a0349 =  a0348 + 1 ;
       a0350 =  a0349 + 1 ;
       a0351 =  a0350 + 1 ;
       a0352 =  a0351 + 1 ;
       a0353 =  a0352 + 1 ;
       a0354 =  a0353 + 1 ;
       a0355 =  a0354 + 1 ;
       a0356 =  a0355 + 1 ;
       a0357 =  a0356 + 1 ;
       for(i=0;i<10;i++) sum = sum + i;
       a0358 =  a0357 + 1 ;
       a0359 =  a0358 + 1 ;
       a0360 =  a0359 + 1 ;
       a0361 =  a0360 + 1 ;
       a0362 =  a0361 + 1 ;
       a0363 =  a0362 + 1 ;
       a0364 =  a0363 + 1 ;
       a0365 =  a0364 + 1 ;
       a0366 =  a0365 + 1 ;
       a0367 =  a0366 + 1 ;
       a0368 =  a0367 + 1 ;
       a0369 =  a0368 + 1 ;
       a0370 =  a0369 + 1 ;
       a0371 =  a0370 + 1 ;
       a0372 =  a0371 + 1 ;
       a0373 =  a0372 + 1 ;
       a0374 =  a0373 + 1 ;
       a0375 =  a0374 + 1 ;
       a0376 =  a0375 + 1 ;
       a0377 =  a0376 + 1 ;
       a0378 =  a0377 + 1 ;
       for(i=0;i<10;i++) sum = sum + i;
       a0379 =  a0378 + 1 ;
       a0380 =  a0379 + 1 ;
       a0381 =  a0380 + 1 ;
       a0382 =  a0381 + 1 ;
       a0383 =  a0382 + 1 ;
       a0384 =  a0383 + 1 ;
       a0385 =  a0384 + 1 ;
       a0386 =  a0385 + 1 ;
       a0387 =  a0386 + 1 ;
       a0388 =  a0387 + 1 ;
       a0389 =  a0388 + 1 ;
       a0390 =  a0389 + 1 ;
       a0391 =  a0390 + 1 ;
       a0392 =  a0391 + 1 ;
       a0393 =  a0392 + 1 ;
       a0394 =  a0393 + 1 ;
       a0395 =  a0394 + 1 ;
       a0396 =  a0395 + 1 ;
       a0397 =  a0396 + 1 ;
       a0398 =  a0397 + 1 ;
       a0399 =  a0398 + 1 ;
       for(i=0;i<10;i++) sum = sum + i;
       a0400 =  a0399 + 1 ;
       a0401 =  a0400 + 1 ;
       a0402 =  a0401 + 1 ;
       a0403 =  a0402 + 1 ;
       a0404 =  a0403 + 1 ;
       a0405 =  a0404 + 1 ;
       a0406 =  a0405 + 1 ;
       a0407 =  a0406 + 1 ;
       a0408 =  a0407 + 1 ;
       a0409 =  a0408 + 1 ;
       a0410 =  a0409 + 1 ;
       a0411 =  a0410 + 1 ;
       a0412 =  a0411 + 1 ;
       a0413 =  a0412 + 1 ;
       a0414 =  a0413 + 1 ;
       a0415 =  a0414 + 1 ;
       a0416 =  a0415 + 1 ;
       a0417 =  a0416 + 1 ;
       a0418 =  a0417 + 1 ;
       a0419 =  a0418 + 1 ;
       a0420 =  a0419 + 1 ;
       for(i=0;i<10;i++) sum = sum + i;
       a0421 =  a0420 + 1 ;
       a0422 =  a0421 + 1 ;
       a0423 =  a0422 + 1 ;
       a0424 =  a0423 + 1 ;
       a0425 =  a0424 + 1 ;
       a0426 =  a0425 + 1 ;
       a0427 =  a0426 + 1 ;
       a0428 =  a0427 + 1 ;
       a0429 =  a0428 + 1 ;
       a0430 =  a0429 + 1 ;
       a0431 =  a0430 + 1 ;
       a0432 =  a0431 + 1 ;
       a0433 =  a0432 + 1 ;
       a0434 =  a0433 + 1 ;
       a0435 =  a0434 + 1 ;
       a0436 =  a0435 + 1 ;
       a0437 =  a0436 + 1 ;
       a0438 =  a0437 + 1 ;
       a0439 =  a0438 + 1 ;
       a0440 =  a0439 + 1 ;
       a0441 =  a0440 + 1 ;
       for(i=0;i<10;i++) sum = sum + i;
       a0442 =  a0441 + 1 ;
       a0443 =  a0442 + 1 ;
       a0444 =  a0443 + 1 ;
       a0445 =  a0444 + 1 ;
       a0446 =  a0445 + 1 ;
       a0447 =  a0446 + 1 ;
       a0448 =  a0447 + 1 ;
       a0449 =  a0448 + 1 ;
       a0450 =  a0449 + 1 ;
       a0451 =  a0450 + 1 ;
       a0452 =  a0451 + 1 ;
       a0453 =  a0452 + 1 ;
       a0454 =  a0453 + 1 ;
       a0455 =  a0454 + 1 ;
       a0456 =  a0455 + 1 ;
       a0457 =  a0456 + 1 ;
       a0458 =  a0457 + 1 ;
       a0459 =  a0458 + 1 ;
       a0460 =  a0459 + 1 ;
       a0461 =  a0460 + 1 ;
       a0462 =  a0461 + 1 ;
       for(i=0;i<10;i++) sum = sum + i;
       a0463 =  a0462 + 1 ;
       a0464 =  a0463 + 1 ;
       a0465 =  a0464 + 1 ;
       a0466 =  a0465 + 1 ;
       a0467 =  a0466 + 1 ;
       a0468 =  a0467 + 1 ;
       a0469 =  a0468 + 1 ;
       a0470 =  a0469 + 1 ;
       a0471 =  a0470 + 1 ;
       a0472 =  a0471 + 1 ;
       a0473 =  a0472 + 1 ;
       a0474 =  a0473 + 1 ;
       a0475 =  a0474 + 1 ;
       a0476 =  a0475 + 1 ;
       a0477 =  a0476 + 1 ;
       a0478 =  a0477 + 1 ;
       a0479 =  a0478 + 1 ;
       a0480 =  a0479 + 1 ;
       a0481 =  a0480 + 1 ;
       a0482 =  a0481 + 1 ;
       a0483 =  a0482 + 1 ;
       for(i=0;i<10;i++) sum = sum + i;
       a0484 =  a0483 + 1 ;
       a0485 =  a0484 + 1 ;
       a0486 =  a0485 + 1 ;
       a0487 =  a0486 + 1 ;
       a0488 =  a0487 + 1 ;
       a0489 =  a0488 + 1 ;
       a0490 =  a0489 + 1 ;
       a0491 =  a0490 + 1 ;
       a0492 =  a0491 + 1 ;
       a0493 =  a0492 + 1 ;
       a0494 =  a0493 + 1 ;
       a0495 =  a0494 + 1 ;
       a0496 =  a0495 + 1 ;
       a0497 =  a0496 + 1 ;
       a0498 =  a0497 + 1 ;
       a0499 =  a0498 + 1 ;
       a0500 =  a0499 + 1 ;
       a0501 =  a0500 + 1 ;
       a0502 =  a0501 + 1 ;
       a0503 =  a0502 + 1 ;
       a0504 =  a0503 + 1 ;
       for(i=0;i<10;i++) sum = sum + i;
       a0505 =  a0504 + 1 ;
       a0506 =  a0505 + 1 ;
       a0507 =  a0506 + 1 ;
       a0508 =  a0507 + 1 ;
       a0509 =  a0508 + 1 ;
       a0510 =  a0509 + 1 ;
       a0511 =  a0510 + 1 ;
       a0512 =  a0511 + 1 ;
       a0513 =  a0512 + 1 ;
       a0514 =  a0513 + 1 ;
       a0515 =  a0514 + 1 ;
       a0516 =  a0515 + 1 ;
       a0517 =  a0516 + 1 ;
       a0518 =  a0517 + 1 ;
       a0519 =  a0518 + 1 ;
       a0520 =  a0519 + 1 ;
       a0521 =  a0520 + 1 ;
       a0522 =  a0521 + 1 ;
       a0523 =  a0522 + 1 ;
       a0524 =  a0523 + 1 ;
       a0525 =  a0524 + 1 ;
       for(i=0;i<10;i++) sum = sum + i;
       a0526 =  a0525 + 1 ;
       a0527 =  a0526 + 1 ;
       a0528 =  a0527 + 1 ;
       a0529 =  a0528 + 1 ;
       a0530 =  a0529 + 1 ;
       a0531 =  a0530 + 1 ;
       a0532 =  a0531 + 1 ;
       a0533 =  a0532 + 1 ;
       a0534 =  a0533 + 1 ;
       a0535 =  a0534 + 1 ;
       a0536 =  a0535 + 1 ;
       a0537 =  a0536 + 1 ;
       a0538 =  a0537 + 1 ;
       a0539 =  a0538 + 1 ;
       a0540 =  a0539 + 1 ;
       a0541 =  a0540 + 1 ;
       a0542 =  a0541 + 1 ;
       a0543 =  a0542 + 1 ;
       a0544 =  a0543 + 1 ;
       a0545 =  a0544 + 1 ;
       a0546 =  a0545 + 1 ;
       for(i=0;i<10;i++) sum = sum + i;
       a0547 =  a0546 + 1 ;
       a0548 =  a0547 + 1 ;
       a0549 =  a0548 + 1 ;
       a0550 =  a0549 + 1 ;
       a0551 =  a0550 + 1 ;
       a0552 =  a0551 + 1 ;
       a0553 =  a0552 + 1 ;
       a0554 =  a0553 + 1 ;
       a0555 =  a0554 + 1 ;
       a0556 =  a0555 + 1 ;
       a0557 =  a0556 + 1 ;
       a0558 =  a0557 + 1 ;
       a0559 =  a0558 + 1 ;
       a0560 =  a0559 + 1 ;
       a0561 =  a0560 + 1 ;
       a0562 =  a0561 + 1 ;
       a0563 =  a0562 + 1 ;
       a0564 =  a0563 + 1 ;
       a0565 =  a0564 + 1 ;
       a0566 =  a0565 + 1 ;
       a0567 =  a0566 + 1 ;
       for(i=0;i<10;i++) sum = sum + i;
       a0568 =  a0567 + 1 ;
       a0569 =  a0568 + 1 ;
       a0570 =  a0569 + 1 ;
       a0571 =  a0570 + 1 ;
       a0572 =  a0571 + 1 ;
       a0573 =  a0572 + 1 ;
       a0574 =  a0573 + 1 ;
       a0575 =  a0574 + 1 ;
       a0576 =  a0575 + 1 ;
       a0577 =  a0576 + 1 ;
       a0578 =  a0577 + 1 ;
       a0579 =  a0578 + 1 ;
       a0580 =  a0579 + 1 ;
       a0581 =  a0580 + 1 ;
       a0582 =  a0581 + 1 ;
       a0583 =  a0582 + 1 ;
       a0584 =  a0583 + 1 ;
       a0585 =  a0584 + 1 ;
       a0586 =  a0585 + 1 ;
       a0587 =  a0586 + 1 ;
       a0588 =  a0587 + 1 ;
       for(i=0;i<10;i++) sum = sum + i;
       a0589 =  a0588 + 1 ;
       a0590 =  a0589 + 1 ;
       a0591 =  a0590 + 1 ;
       a0592 =  a0591 + 1 ;
       a0593 =  a0592 + 1 ;
       a0594 =  a0593 + 1 ;
       a0595 =  a0594 + 1 ;
       a0596 =  a0595 + 1 ;
       a0597 =  a0596 + 1 ;
       a0598 =  a0597 + 1 ;
       a0599 =  a0598 + 1 ;
       a0600 =  a0599 + 1 ;
       a0601 =  a0600 + 1 ;
       a0602 =  a0601 + 1 ;
       a0603 =  a0602 + 1 ;
       a0604 =  a0603 + 1 ;
       a0605 =  a0604 + 1 ;
       a0606 =  a0605 + 1 ;
       a0607 =  a0606 + 1 ;
       a0608 =  a0607 + 1 ;
       a0609 =  a0608 + 1 ;
       for(i=0;i<10;i++) sum = sum + i;
       a0610 =  a0609 + 1 ;
       a0611 =  a0610 + 1 ;
       a0612 =  a0611 + 1 ;
       a0613 =  a0612 + 1 ;
       a0614 =  a0613 + 1 ;
       a0615 =  a0614 + 1 ;
       a0616 =  a0615 + 1 ;
       a0617 =  a0616 + 1 ;
       a0618 =  a0617 + 1 ;
       a0619 =  a0618 + 1 ;
       a0620 =  a0619 + 1 ;
       a0621 =  a0620 + 1 ;
       a0622 =  a0621 + 1 ;
       a0623 =  a0622 + 1 ;
       a0624 =  a0623 + 1 ;
       a0625 =  a0624 + 1 ;
       a0626 =  a0625 + 1 ;
       a0627 =  a0626 + 1 ;
       a0628 =  a0627 + 1 ;
       a0629 =  a0628 + 1 ;
       a0630 =  a0629 + 1 ;
       for(i=0;i<10;i++) sum = sum + i;
       a0631 =  a0630 + 1 ;
       a0632 =  a0631 + 1 ;
       a0633 =  a0632 + 1 ;
       a0634 =  a0633 + 1 ;
       a0635 =  a0634 + 1 ;
       a0636 =  a0635 + 1 ;
       a0637 =  a0636 + 1 ;
       a0638 =  a0637 + 1 ;
       a0639 =  a0638 + 1 ;
       a0640 =  a0639 + 1 ;
       a0641 =  a0640 + 1 ;
       a0642 =  a0641 + 1 ;
       a0643 =  a0642 + 1 ;
       a0644 =  a0643 + 1 ;
       a0645 =  a0644 + 1 ;
       a0646 =  a0645 + 1 ;
       a0647 =  a0646 + 1 ;
       a0648 =  a0647 + 1 ;
       a0649 =  a0648 + 1 ;
       a0650 =  a0649 + 1 ;
       a0651 =  a0650 + 1 ;
       for(i=0;i<10;i++) sum = sum + i;
       a0652 =  a0651 + 1 ;
       a0653 =  a0652 + 1 ;
       a0654 =  a0653 + 1 ;
       a0655 =  a0654 + 1 ;
       a0656 =  a0655 + 1 ;
       a0657 =  a0656 + 1 ;
       a0658 =  a0657 + 1 ;
       a0659 =  a0658 + 1 ;
       a0660 =  a0659 + 1 ;
       a0661 =  a0660 + 1 ;
       a0662 =  a0661 + 1 ;
       a0663 =  a0662 + 1 ;
       a0664 =  a0663 + 1 ;
       a0665 =  a0664 + 1 ;
       a0666 =  a0665 + 1 ;
       a0667 =  a0666 + 1 ;
       a0668 =  a0667 + 1 ;
       a0669 =  a0668 + 1 ;
       a0670 =  a0669 + 1 ;
       a0671 =  a0670 + 1 ;
       a0672 =  a0671 + 1 ;
       for(i=0;i<10;i++) sum = sum + i;
       a0673 =  a0672 + 1 ;
       a0674 =  a0673 + 1 ;
       a0675 =  a0674 + 1 ;
       a0676 =  a0675 + 1 ;
       a0677 =  a0676 + 1 ;
       a0678 =  a0677 + 1 ;
       a0679 =  a0678 + 1 ;
       a0680 =  a0679 + 1 ;
       a0681 =  a0680 + 1 ;
       a0682 =  a0681 + 1 ;
       a0683 =  a0682 + 1 ;
       a0684 =  a0683 + 1 ;
       a0685 =  a0684 + 1 ;
       a0686 =  a0685 + 1 ;
       a0687 =  a0686 + 1 ;
       a0688 =  a0687 + 1 ;
       a0689 =  a0688 + 1 ;
       a0690 =  a0689 + 1 ;
       a0691 =  a0690 + 1 ;
       a0692 =  a0691 + 1 ;
       a0693 =  a0692 + 1 ;
       for(i=0;i<10;i++) sum = sum + i;
       a0694 =  a0693 + 1 ;
       a0695 =  a0694 + 1 ;
       a0696 =  a0695 + 1 ;
       a0697 =  a0696 + 1 ;
       a0698 =  a0697 + 1 ;
       a0699 =  a0698 + 1 ;
       a0700 =  a0699 + 1 ;
       a0701 =  a0700 + 1 ;
       a0702 =  a0701 + 1 ;
       a0703 =  a0702 + 1 ;
       a0704 =  a0703 + 1 ;
       a0705 =  a0704 + 1 ;
       a0706 =  a0705 + 1 ;
       a0707 =  a0706 + 1 ;
       a0708 =  a0707 + 1 ;
       a0709 =  a0708 + 1 ;
       a0710 =  a0709 + 1 ;
       a0711 =  a0710 + 1 ;
       a0712 =  a0711 + 1 ;
       a0713 =  a0712 + 1 ;
       a0714 =  a0713 + 1 ;
       for(i=0;i<10;i++) sum = sum + i;
       a0715 =  a0714 + 1 ;
       a0716 =  a0715 + 1 ;
       a0717 =  a0716 + 1 ;
       a0718 =  a0717 + 1 ;
       a0719 =  a0718 + 1 ;
       a0720 =  a0719 + 1 ;
       a0721 =  a0720 + 1 ;
       a0722 =  a0721 + 1 ;
       a0723 =  a0722 + 1 ;
       a0724 =  a0723 + 1 ;
       a0725 =  a0724 + 1 ;
       a0726 =  a0725 + 1 ;
       a0727 =  a0726 + 1 ;
       a0728 =  a0727 + 1 ;
       a0729 =  a0728 + 1 ;
       a0730 =  a0729 + 1 ;
       a0731 =  a0730 + 1 ;
       a0732 =  a0731 + 1 ;
       a0733 =  a0732 + 1 ;
       a0734 =  a0733 + 1 ;
       a0735 =  a0734 + 1 ;
       for(i=0;i<10;i++) sum = sum + i;
       a0736 =  a0735 + 1 ;
       a0737 =  a0736 + 1 ;
       a0738 =  a0737 + 1 ;
       a0739 =  a0738 + 1 ;
       a0740 =  a0739 + 1 ;
       a0741 =  a0740 + 1 ;
       a0742 =  a0741 + 1 ;
       a0743 =  a0742 + 1 ;
       a0744 =  a0743 + 1 ;
       a0745 =  a0744 + 1 ;
       a0746 =  a0745 + 1 ;
       a0747 =  a0746 + 1 ;
       a0748 =  a0747 + 1 ;
       a0749 =  a0748 + 1 ;
       a0750 =  a0749 + 1 ;
       a0751 =  a0750 + 1 ;
       a0752 =  a0751 + 1 ;
       a0753 =  a0752 + 1 ;
       a0754 =  a0753 + 1 ;
       a0755 =  a0754 + 1 ;
       a0756 =  a0755 + 1 ;
       for(i=0;i<10;i++) sum = sum + i;
       a0757 =  a0756 + 1 ;
       a0758 =  a0757 + 1 ;
       a0759 =  a0758 + 1 ;
       a0760 =  a0759 + 1 ;
       a0761 =  a0760 + 1 ;
       a0762 =  a0761 + 1 ;
       a0763 =  a0762 + 1 ;
       a0764 =  a0763 + 1 ;
       a0765 =  a0764 + 1 ;
       a0766 =  a0765 + 1 ;
       a0767 =  a0766 + 1 ;
       a0768 =  a0767 + 1 ;
       a0769 =  a0768 + 1 ;
       a0770 =  a0769 + 1 ;
       a0771 =  a0770 + 1 ;
       a0772 =  a0771 + 1 ;
       a0773 =  a0772 + 1 ;
       a0774 =  a0773 + 1 ;
       a0775 =  a0774 + 1 ;
       a0776 =  a0775 + 1 ;
       a0777 =  a0776 + 1 ;
       for(i=0;i<10;i++) sum = sum + i;
       a0778 =  a0777 + 1 ;
       a0779 =  a0778 + 1 ;
       a0780 =  a0779 + 1 ;
       a0781 =  a0780 + 1 ;
       a0782 =  a0781 + 1 ;
       a0783 =  a0782 + 1 ;
       a0784 =  a0783 + 1 ;
       a0785 =  a0784 + 1 ;
       a0786 =  a0785 + 1 ;
       a0787 =  a0786 + 1 ;
       a0788 =  a0787 + 1 ;
       a0789 =  a0788 + 1 ;
       a0790 =  a0789 + 1 ;
       a0791 =  a0790 + 1 ;
       a0792 =  a0791 + 1 ;
       a0793 =  a0792 + 1 ;
       a0794 =  a0793 + 1 ;
       a0795 =  a0794 + 1 ;
       a0796 =  a0795 + 1 ;
       a0797 =  a0796 + 1 ;
       a0798 =  a0797 + 1 ;
       for(i=0;i<10;i++) sum = sum + i;
       a0799 =  a0798 + 1 ;
       a0800 =  a0799 + 1 ;
       a0801 =  a0800 + 1 ;
       a0802 =  a0801 + 1 ;
       a0803 =  a0802 + 1 ;
       a0804 =  a0803 + 1 ;
       a0805 =  a0804 + 1 ;
       a0806 =  a0805 + 1 ;
       a0807 =  a0806 + 1 ;
       a0808 =  a0807 + 1 ;
       a0809 =  a0808 + 1 ;
       a0810 =  a0809 + 1 ;
       a0811 =  a0810 + 1 ;
       a0812 =  a0811 + 1 ;
       a0813 =  a0812 + 1 ;
       a0814 =  a0813 + 1 ;
       a0815 =  a0814 + 1 ;
       a0816 =  a0815 + 1 ;
       a0817 =  a0816 + 1 ;
       a0818 =  a0817 + 1 ;
       a0819 =  a0818 + 1 ;
       for(i=0;i<10;i++) sum = sum + i;
       a0820 =  a0819 + 1 ;
       a0821 =  a0820 + 1 ;
       a0822 =  a0821 + 1 ;
       a0823 =  a0822 + 1 ;
       a0824 =  a0823 + 1 ;
       a0825 =  a0824 + 1 ;
       a0826 =  a0825 + 1 ;
       a0827 =  a0826 + 1 ;
       a0828 =  a0827 + 1 ;
       a0829 =  a0828 + 1 ;
       a0830 =  a0829 + 1 ;
       a0831 =  a0830 + 1 ;
       a0832 =  a0831 + 1 ;
       a0833 =  a0832 + 1 ;
       a0834 =  a0833 + 1 ;
       a0835 =  a0834 + 1 ;
       a0836 =  a0835 + 1 ;
       a0837 =  a0836 + 1 ;
       a0838 =  a0837 + 1 ;
       a0839 =  a0838 + 1 ;
       a0840 =  a0839 + 1 ;
       for(i=0;i<10;i++) sum = sum + i;
       a0841 =  a0840 + 1 ;
       a0842 =  a0841 + 1 ;
       a0843 =  a0842 + 1 ;
       a0844 =  a0843 + 1 ;
       a0845 =  a0844 + 1 ;
       a0846 =  a0845 + 1 ;
       a0847 =  a0846 + 1 ;
       a0848 =  a0847 + 1 ;
       a0849 =  a0848 + 1 ;
       a0850 =  a0849 + 1 ;
       a0851 =  a0850 + 1 ;
       a0852 =  a0851 + 1 ;
       a0853 =  a0852 + 1 ;
       a0854 =  a0853 + 1 ;
       a0855 =  a0854 + 1 ;
       a0856 =  a0855 + 1 ;
       a0857 =  a0856 + 1 ;
       a0858 =  a0857 + 1 ;
       a0859 =  a0858 + 1 ;
       a0860 =  a0859 + 1 ;
       a0861 =  a0860 + 1 ;
       for(i=0;i<10;i++) sum = sum + i;
       a0862 =  a0861 + 1 ;
       a0863 =  a0862 + 1 ;
       a0864 =  a0863 + 1 ;
       a0865 =  a0864 + 1 ;
       a0866 =  a0865 + 1 ;
       a0867 =  a0866 + 1 ;
       a0868 =  a0867 + 1 ;
       a0869 =  a0868 + 1 ;
       a0870 =  a0869 + 1 ;
       a0871 =  a0870 + 1 ;
       a0872 =  a0871 + 1 ;
       a0873 =  a0872 + 1 ;
       a0874 =  a0873 + 1 ;
       a0875 =  a0874 + 1 ;
       a0876 =  a0875 + 1 ;
       a0877 =  a0876 + 1 ;
       a0878 =  a0877 + 1 ;
       a0879 =  a0878 + 1 ;
       a0880 =  a0879 + 1 ;
       a0881 =  a0880 + 1 ;
       a0882 =  a0881 + 1 ;
       for(i=0;i<10;i++) sum = sum + i;
       a0883 =  a0882 + 1 ;
       a0884 =  a0883 + 1 ;
       a0885 =  a0884 + 1 ;
       a0886 =  a0885 + 1 ;
       a0887 =  a0886 + 1 ;
       a0888 =  a0887 + 1 ;
       a0889 =  a0888 + 1 ;
       a0890 =  a0889 + 1 ;
       a0891 =  a0890 + 1 ;
       a0892 =  a0891 + 1 ;
       a0893 =  a0892 + 1 ;
       a0894 =  a0893 + 1 ;
       a0895 =  a0894 + 1 ;
       a0896 =  a0895 + 1 ;
       a0897 =  a0896 + 1 ;
       a0898 =  a0897 + 1 ;
       a0899 =  a0898 + 1 ;
       a0900 =  a0899 + 1 ;
       a0901 =  a0900 + 1 ;
       a0902 =  a0901 + 1 ;
       a0903 =  a0902 + 1 ;
       for(i=0;i<10;i++) sum = sum + i;
       a0904 =  a0903 + 1 ;
       a0905 =  a0904 + 1 ;
       a0906 =  a0905 + 1 ;
       a0907 =  a0906 + 1 ;
       a0908 =  a0907 + 1 ;
       a0909 =  a0908 + 1 ;
       a0910 =  a0909 + 1 ;
       a0911 =  a0910 + 1 ;
       a0912 =  a0911 + 1 ;
       a0913 =  a0912 + 1 ;
       a0914 =  a0913 + 1 ;
       a0915 =  a0914 + 1 ;
       a0916 =  a0915 + 1 ;
       a0917 =  a0916 + 1 ;
       a0918 =  a0917 + 1 ;
       a0919 =  a0918 + 1 ;
       a0920 =  a0919 + 1 ;
       a0921 =  a0920 + 1 ;
       a0922 =  a0921 + 1 ;
       a0923 =  a0922 + 1 ;
       a0924 =  a0923 + 1 ;
       for(i=0;i<10;i++) sum = sum + i;
       a0925 =  a0924 + 1 ;
       a0926 =  a0925 + 1 ;
       a0927 =  a0926 + 1 ;
       a0928 =  a0927 + 1 ;
       a0929 =  a0928 + 1 ;
       a0930 =  a0929 + 1 ;
       a0931 =  a0930 + 1 ;
       a0932 =  a0931 + 1 ;
       a0933 =  a0932 + 1 ;
       a0934 =  a0933 + 1 ;
       a0935 =  a0934 + 1 ;
       a0936 =  a0935 + 1 ;
       a0937 =  a0936 + 1 ;
       a0938 =  a0937 + 1 ;
       a0939 =  a0938 + 1 ;
       a0940 =  a0939 + 1 ;
       a0941 =  a0940 + 1 ;
       a0942 =  a0941 + 1 ;
       a0943 =  a0942 + 1 ;
       a0944 =  a0943 + 1 ;
       a0945 =  a0944 + 1 ;
       for(i=0;i<10;i++) sum = sum + i;
       a0946 =  a0945 + 1 ;
       a0947 =  a0946 + 1 ;
       a0948 =  a0947 + 1 ;
       a0949 =  a0948 + 1 ;
       a0950 =  a0949 + 1 ;
       a0951 =  a0950 + 1 ;
       a0952 =  a0951 + 1 ;
       a0953 =  a0952 + 1 ;
       a0954 =  a0953 + 1 ;
       a0955 =  a0954 + 1 ;
       a0956 =  a0955 + 1 ;
       a0957 =  a0956 + 1 ;
       a0958 =  a0957 + 1 ;
       a0959 =  a0958 + 1 ;
       a0960 =  a0959 + 1 ;
       a0961 =  a0960 + 1 ;
       a0962 =  a0961 + 1 ;
       a0963 =  a0962 + 1 ;
       a0964 =  a0963 + 1 ;
       a0965 =  a0964 + 1 ;
       a0966 =  a0965 + 1 ;
       for(i=0;i<10;i++) sum = sum + i;
       a0967 =  a0966 + 1 ;
       a0968 =  a0967 + 1 ;
       a0969 =  a0968 + 1 ;
       a0970 =  a0969 + 1 ;
       a0971 =  a0970 + 1 ;
       a0972 =  a0971 + 1 ;
       a0973 =  a0972 + 1 ;
       a0974 =  a0973 + 1 ;
       a0975 =  a0974 + 1 ;
       a0976 =  a0975 + 1 ;
       a0977 =  a0976 + 1 ;
       a0978 =  a0977 + 1 ;
       a0979 =  a0978 + 1 ;
       a0980 =  a0979 + 1 ;
       a0981 =  a0980 + 1 ;
       a0982 =  a0981 + 1 ;
       a0983 =  a0982 + 1 ;
       a0984 =  a0983 + 1 ;
       a0985 =  a0984 + 1 ;
       a0986 =  a0985 + 1 ;
       a0987 =  a0986 + 1 ;
       for(i=0;i<10;i++) sum = sum + i;
       a0988 =  a0987 + 1 ;
       a0989 =  a0988 + 1 ;
       a0990 =  a0989 + 1 ;
       a0991 =  a0990 + 1 ;
       a0992 =  a0991 + 1 ;
       a0993 =  a0992 + 1 ;
       a0994 =  a0993 + 1 ;
       a0995 =  a0994 + 1 ;
       a0996 =  a0995 + 1 ;
       a0997 =  a0996 + 1 ;
       a0998 =  a0997 + 1 ;
       a0999 =  a0998 + 1 ;
       a1000 =  a0999 + 1 ;
       a1001 =  a1000 + 1 ;
       a1002 =  a1001 + 1 ;
       a1003 =  a1002 + 1 ;
       a1004 =  a1003 + 1 ;
       a1005 =  a1004 + 1 ;
       a1006 =  a1005 + 1 ;
       a1007 =  a1006 + 1 ;
       a1008 =  a1007 + 1 ;
       for(i=0;i<10;i++) sum = sum + i;
       a1009 =  a1008 + 1 ;
       a1010 =  a1009 + 1 ;
       a1011 =  a1010 + 1 ;
       a1012 =  a1011 + 1 ;
       a1013 =  a1012 + 1 ;
       a1014 =  a1013 + 1 ;
       a1015 =  a1014 + 1 ;
       a1016 =  a1015 + 1 ;
       a1017 =  a1016 + 1 ;
       a1018 =  a1017 + 1 ;
       a1019 =  a1018 + 1 ;
       a1020 =  a1019 + 1 ;
       a1021 =  a1020 + 1 ;
       a1022 =  a1021 + 1 ;
       a1023 =  a1022 + 1 ;
       a1024 =  a1023 + 1 ;
       a1025 =  a1024 + 1 ;
       for(i=0;i<10;i++) sum = sum + i;
       printf(" %d %d\n",a1025,sum);
       if( a1025 == 1034 && sum == 2250 ) puts(" OK ");
       else                               puts(" NG ");
}