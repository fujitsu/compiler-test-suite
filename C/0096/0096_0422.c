#include <stdio.h>
int    i00,i01,i02,i03,i04,i05,i06,i07,i08,i09;
int    i10,i11,i12,i13,i14,i15,i16,i17,i18,i19;
int    i20,i21,i22,i23,i24,i25,i26,i27,i28,i29;
int    *pi00,*pi01,*pi02,*pi03,*pi04,*pi05,*pi06,*pi07,*pi08,*pi09;
int    *pi10,*pi11,*pi12,*pi13,*pi14,*pi15,*pi16,*pi17,*pi18,*pi19;
int    *pi20,*pi21,*pi22,*pi23,*pi24,*pi25,*pi26,*pi27,*pi28,*pi29;
       
float  f00,f01,f02,f03,f04,f05,f06,f07,f08,f09;
float  f10,f11,f12,f13,f14,f15,f16,f17,f18,f19;
float  f20,f21,f22,f23,f24,f25,f26,f27,f28,f29;
float  *pf00,*pf01,*pf02,*pf03,*pf04,*pf05,*pf06,*pf07,*pf08,*pf09;
float  *pf10,*pf11,*pf12,*pf13,*pf14,*pf15,*pf16,*pf17,*pf18,*pf19;
float  *pf20,*pf21,*pf22,*pf23,*pf24,*pf25,*pf26,*pf27,*pf28,*pf29;
       
double d00,d01,d02,d03,d04,d05,d06,d07,d08,d09;
double d10,d11,d12,d13,d14,d15,d16,d17,d18,d19;
double d20,d21,d22,d23,d24,d25,d26,d27,d28,d29;
double *pd00,*pd01,*pd02,*pd03,*pd04,*pd05,*pd06,*pd07,*pd08,*pd09;
double *pd10,*pd11,*pd12,*pd13,*pd14,*pd15,*pd16,*pd17,*pd18,*pd19;
double *pd20,*pd21,*pd22,*pd23,*pd24,*pd25,*pd26,*pd27,*pd28,*pd29;

extern void init1(void)
{
  i00=i01=i02=i03=i04=i05=i06=i07=i08=i09 = 0;
  i10=i11=i12=i13=i14=i15=i16=i17=i18=i19 = 1;
  i20=i21=i22=i23=i24=i25=i26=i27=i28=i29 = 2;

  f00=f01=f02=f03=f04=f05=f06=f07=f08=f09 = 0.f;
  f10=f11=f12=f13=f14=f15=f16=f17=f18=f19 = 1.f;
  f20=f21=f22=f23=f24=f25=f26=f27=f28=f29 = 2.f;

  d00=d01=d02=d03=d04=d05=d06=d07=d08=d09 = 0.;
  d10=d11=d12=d13=d14=d15=d16=d17=d18=d19 = 1.;
  d20=d21=d22=d23=d24=d25=d26=d27=d28=d29 = 2.;
}

extern void init2(pii00,pii01,pii02,pii03,pii04,pii05,pii06,pii07,pii08,pii09,
		  pii10,pii11,pii12,pii13,pii14,pii15,pii16,pii17,pii18,pii19,
		  pii20,pii21,pii22,pii23,pii24,pii25,pii26,pii27,pii28,pii29,
		  pff00,pff01,pff02,pff03,pff04,pff05,pff06,pff07,pff08,pff09,
		  pff10,pff11,pff12,pff13,pff14,pff15,pff16,pff17,pff18,pff19,
		  pff20,pff21,pff22,pff23,pff24,pff25,pff26,pff27,pff28,pff29,
		  pdd00,pdd01,pdd02,pdd03,pdd04,pdd05,pdd06,pdd07,pdd08,pdd09,
		  pdd10,pdd11,pdd12,pdd13,pdd14,pdd15,pdd16,pdd17,pdd18,pdd19,
		  pdd20,pdd21,pdd22,pdd23,pdd24,pdd25,pdd26,pdd27,pdd28,pdd29)
     int    *pii00,*pii01,*pii02,*pii03,*pii04,*pii05,*pii06,*pii07,*pii08,*pii09;
     int    *pii10,*pii11,*pii12,*pii13,*pii14,*pii15,*pii16,*pii17,*pii18,*pii19;
     int    *pii20,*pii21,*pii22,*pii23,*pii24,*pii25,*pii26,*pii27,*pii28,*pii29;
     float  *pff00,*pff01,*pff02,*pff03,*pff04,*pff05,*pff06,*pff07,*pff08,*pff09;
     float  *pff10,*pff11,*pff12,*pff13,*pff14,*pff15,*pff16,*pff17,*pff18,*pff19;
     float  *pff20,*pff21,*pff22,*pff23,*pff24,*pff25,*pff26,*pff27,*pff28,*pff29;
     double *pdd00,*pdd01,*pdd02,*pdd03,*pdd04,*pdd05,*pdd06,*pdd07,*pdd08,*pdd09;
     double *pdd10,*pdd11,*pdd12,*pdd13,*pdd14,*pdd15,*pdd16,*pdd17,*pdd18,*pdd19;
     double *pdd20,*pdd21,*pdd22,*pdd23,*pdd24,*pdd25,*pdd26,*pdd27,*pdd28,*pdd29;
{
  *pii00=*pii01=*pii02=*pii03=*pii04=*pii05=*pii06=*pii07=*pii08=*pii09 = 0;
  *pii10=*pii11=*pii12=*pii13=*pii14=*pii15=*pii16=*pii17=*pii18=*pii19 = 1;
  *pii20=*pii21=*pii22=*pii23=*pii24=*pii25=*pii26=*pii27=*pii28=*pii29 = 2;

  *pff00=*pff01=*pff02=*pff03=*pff04=*pff05=*pff06=*pff07=*pff08=*pff09 = 0.f;
  *pff10=*pff11=*pff12=*pff13=*pff14=*pff15=*pff16=*pff17=*pff18=*pff19 = 1.f;
  *pff20=*pff21=*pff22=*pff23=*pff24=*pff25=*pff26=*pff27=*pff28=*pff29 = 2.f;

  *pdd00=*pdd01=*pdd02=*pdd03=*pdd04=*pdd05=*pdd06=*pdd07=*pdd08=*pdd09 = 0.0;
  *pdd10=*pdd11=*pdd12=*pdd13=*pdd14=*pdd15=*pdd16=*pdd17=*pdd18=*pdd19 = 1.0;
  *pdd20=*pdd21=*pdd22=*pdd23=*pdd24=*pdd25=*pdd26=*pdd27=*pdd28=*pdd29 = 2.0;
}
int main() {
  int    ii00,ii01,ii02,ii03,ii04,ii05,ii06,ii07,ii08,ii09;
  int    ii10,ii11,ii12,ii13,ii14,ii15,ii16,ii17,ii18,ii19;
  int    ii20,ii21,ii22,ii23,ii24,ii25,ii26,ii27,ii28,ii29;
  int    *pii00,*pii01,*pii02,*pii03,*pii04,*pii05,*pii06,*pii07,*pii08,*pii09;
  int    *pii10,*pii11,*pii12,*pii13,*pii14,*pii15,*pii16,*pii17,*pii18,*pii19;
  int    *pii20,*pii21,*pii22,*pii23,*pii24,*pii25,*pii26,*pii27,*pii28,*pii29;
  float  ff00,ff01,ff02,ff03,ff04,ff05,ff06,ff07,ff08,ff09;
  float  ff10,ff11,ff12,ff13,ff14,ff15,ff16,ff17,ff18,ff19;
  float  ff20,ff21,ff22,ff23,ff24,ff25,ff26,ff27,ff28,ff29;
  float  *pff00,*pff01,*pff02,*pff03,*pff04,*pff05,*pff06,*pff07,*pff08,*pff09;
  float  *pff10,*pff11,*pff12,*pff13,*pff14,*pff15,*pff16,*pff17,*pff18,*pff19;
  float  *pff20,*pff21,*pff22,*pff23,*pff24,*pff25,*pff26,*pff27,*pff28,*pff29;
  double dd00,dd01,dd02,dd03,dd04,dd05,dd06,dd07,dd08,dd09;
  double dd10,dd11,dd12,dd13,dd14,dd15,dd16,dd17,dd18,dd19;
  double dd20,dd21,dd22,dd23,dd24,dd25,dd26,dd27,dd28,dd29;
  double *pdd00,*pdd01,*pdd02,*pdd03,*pdd04,*pdd05,*pdd06,*pdd07,*pdd08,*pdd09;
  double *pdd10,*pdd11,*pdd12,*pdd13,*pdd14,*pdd15,*pdd16,*pdd17,*pdd18,*pdd19;
  double *pdd20,*pdd21,*pdd22,*pdd23,*pdd24,*pdd25,*pdd26,*pdd27,*pdd28,*pdd29;
  int k;

  pi00 = &i00;
  pi01 = &i01;
  pi02 = &i02;
  pi03 = &i03;
  pi04 = &i04;
  pi05 = &i05;
  pi06 = &i06;
  pi07 = &i07;
  pi08 = &i08;
  pi09 = &i09;
  pi10 = &i10;
  pi11 = &i11;
  pi12 = &i12;
  pi13 = &i13;
  pi14 = &i14;
  pi15 = &i15;
  pi16 = &i16;
  pi17 = &i17;
  pi18 = &i18;
  pi19 = &i19;
  pi20 = &i20;
  pi21 = &i21;
  pi22 = &i22;
  pi23 = &i23;
  pi24 = &i24;
  pi25 = &i25;
  pi26 = &i26;
  pi27 = &i27;
  pi28 = &i28;
  pi29 = &i29;
  pf00 = &f00;
  pf01 = &f01;
  pf02 = &f02;
  pf03 = &f03;
  pf04 = &f04;
  pf05 = &f05;
  pf06 = &f06;
  pf07 = &f07;
  pf08 = &f08;
  pf09 = &f09;
  pf10 = &f10;
  pf11 = &f11;
  pf12 = &f12;
  pf13 = &f13;
  pf14 = &f14;
  pf15 = &f15;
  pf16 = &f16;
  pf17 = &f17;
  pf18 = &f18;
  pf19 = &f19;
  pf20 = &f20;
  pf21 = &f21;
  pf22 = &f22;
  pf23 = &f23;
  pf24 = &f24;
  pf25 = &f25;
  pf26 = &f26;
  pf27 = &f27;
  pf28 = &f28;
  pf29 = &f29;
  pd00 = &d00;
  pd01 = &d01;
  pd02 = &d02;
  pd03 = &d03;
  pd04 = &d04;
  pd05 = &d05;
  pd06 = &d06;
  pd07 = &d07;
  pd08 = &d08;
  pd09 = &d09;
  pd10 = &d10;
  pd11 = &d11;
  pd12 = &d12;
  pd13 = &d13;
  pd14 = &d14;
  pd15 = &d15;
  pd16 = &d16;
  pd17 = &d17;
  pd18 = &d18;
  pd19 = &d19;
  pd20 = &d20;
  pd21 = &d21;
  pd22 = &d22;
  pd23 = &d23;
  pd24 = &d24;
  pd25 = &d25;
  pd26 = &d26;
  pd27 = &d27;
  pd28 = &d28;
  pd29 = &d29;

  init1();
  
  *pi00 = *pi00 + (int)(*pf00 * *pd00);
  *pi01 = *pi01 + (int)(*pf01 * *pd01);
  *pi02 = *pi02 + (int)(*pf02 * *pd02);
  *pi03 = *pi03 + (int)(*pf03 * *pd03);
  *pi04 = *pi04 + (int)(*pf04 * *pd04);
  *pi05 = *pi05 + (int)(*pf05 * *pd05);
  *pi06 = *pi06 + (int)(*pf06 * *pd06);
  *pi07 = *pi07 + (int)(*pf07 * *pd07);
  *pi08 = *pi08 + (int)(*pf08 * *pd08);
  *pi09 = *pi09 + (int)(*pf09 * *pd09);

  *pi10 = *pi10 + (int)(*pf10 * *pd10);
  *pi11 = *pi11 + (int)(*pf11 * *pd11);
  *pi12 = *pi12 + (int)(*pf12 * *pd12);
  *pi13 = *pi13 + (int)(*pf13 * *pd13);
  *pi14 = *pi14 + (int)(*pf14 * *pd14);
  *pi15 = *pi15 + (int)(*pf15 * *pd15);
  *pi16 = *pi16 + (int)(*pf16 * *pd16);
  *pi17 = *pi17 + (int)(*pf17 * *pd17);
  *pi18 = *pi18 + (int)(*pf18 * *pd18);
  *pi19 = *pi19 + (int)(*pf19 * *pd19);

  *pi20 = *pi20 + (int)(*pf20 * *pd20);
  *pi21 = *pi21 + (int)(*pf21 * *pd21);
  *pi22 = *pi22 + (int)(*pf22 * *pd22);
  *pi23 = *pi23 + (int)(*pf23 * *pd23);
  *pi24 = *pi24 + (int)(*pf24 * *pd24);
  *pi25 = *pi25 + (int)(*pf25 * *pd25);
  *pi26 = *pi26 + (int)(*pf26 * *pd26);
  *pi27 = *pi27 + (int)(*pf27 * *pd27);
  *pi28 = *pi28 + (int)(*pf28 * *pd28);
  *pi29 = *pi29 + (int)(*pf29 * *pd29);

  pii00 = &ii00;
  pii01 = &ii01;
  pii02 = &ii02;
  pii03 = &ii03;
  pii04 = &ii04;
  pii05 = &ii05;
  pii06 = &ii06;
  pii07 = &ii07;
  pii08 = &ii08;
  pii09 = &ii09;
  pii10 = &ii10;
  pii11 = &ii11;
  pii12 = &ii12;
  pii13 = &ii13;
  pii14 = &ii14;
  pii15 = &ii15;
  pii16 = &ii16;
  pii17 = &ii17;
  pii18 = &ii18;
  pii19 = &ii19;
  pii20 = &ii20;
  pii21 = &ii21;
  pii22 = &ii22;
  pii23 = &ii23;
  pii24 = &ii24;
  pii25 = &ii25;
  pii26 = &ii26;
  pii27 = &ii27;
  pii28 = &ii28;
  pii29 = &ii29;
  pff00 = &ff00;
  pff01 = &ff01;
  pff02 = &ff02;
  pff03 = &ff03;
  pff04 = &ff04;
  pff05 = &ff05;
  pff06 = &ff06;
  pff07 = &ff07;
  pff08 = &ff08;
  pff09 = &ff09;
  pff10 = &ff10;
  pff11 = &ff11;
  pff12 = &ff12;
  pff13 = &ff13;
  pff14 = &ff14;
  pff15 = &ff15;
  pff16 = &ff16;
  pff17 = &ff17;
  pff18 = &ff18;
  pff19 = &ff19;
  pff20 = &ff20;
  pff21 = &ff21;
  pff22 = &ff22;
  pff23 = &ff23;
  pff24 = &ff24;
  pff25 = &ff25;
  pff26 = &ff26;
  pff27 = &ff27;
  pff28 = &ff28;
  pff29 = &ff29;
  pdd00 = &dd00;
  pdd01 = &dd01;
  pdd02 = &dd02;
  pdd03 = &dd03;
  pdd04 = &dd04;
  pdd05 = &dd05;
  pdd06 = &dd06;
  pdd07 = &dd07;
  pdd08 = &dd08;
  pdd09 = &dd09;
  pdd10 = &dd10;
  pdd11 = &dd11;
  pdd12 = &dd12;
  pdd13 = &dd13;
  pdd14 = &dd14;
  pdd15 = &dd15;
  pdd16 = &dd16;
  pdd17 = &dd17;
  pdd18 = &dd18;
  pdd19 = &dd19;
  pdd20 = &dd20;
  pdd21 = &dd21;
  pdd22 = &dd22;
  pdd23 = &dd23;
  pdd24 = &dd24;
  pdd25 = &dd25;
  pdd26 = &dd26;
  pdd27 = &dd27;
  pdd28 = &dd28;
  pdd29 = &dd29;

  init2(pii00,pii01,pii02,pii03,pii04,pii05,pii06,pii07,pii08,pii09,
	pii10,pii11,pii12,pii13,pii14,pii15,pii16,pii17,pii18,pii19,
	pii20,pii21,pii22,pii23,pii24,pii25,pii26,pii27,pii28,pii29,
	pff00,pff01,pff02,pff03,pff04,pff05,pff06,pff07,pff08,pff09,
	pff10,pff11,pff12,pff13,pff14,pff15,pff16,pff17,pff18,pff19,
	pff20,pff21,pff22,pff23,pff24,pff25,pff26,pff27,pff28,pff29,
	pdd00,pdd01,pdd02,pdd03,pdd04,pdd05,pdd06,pdd07,pdd08,pdd09,
	pdd10,pdd11,pdd12,pdd13,pdd14,pdd15,pdd16,pdd17,pdd18,pdd19,
	pdd20,pdd21,pdd22,pdd23,pdd24,pdd25,pdd26,pdd27,pdd28,pdd29);

  *pii00 = *pii00 + (int)(*pff00 * *pdd00);
  *pii01 = *pii01 + (int)(*pff01 * *pdd01);
  *pii02 = *pii02 + (int)(*pff02 * *pdd02);
  *pii03 = *pii03 + (int)(*pff03 * *pdd03);
  *pii04 = *pii04 + (int)(*pff04 * *pdd04);
  *pii05 = *pii05 + (int)(*pff05 * *pdd05);
  *pii06 = *pii06 + (int)(*pff06 * *pdd06);
  *pii07 = *pii07 + (int)(*pff07 * *pdd07);
  *pii08 = *pii08 + (int)(*pff08 * *pdd08);
  *pii09 = *pii09 + (int)(*pff09 * *pdd09);

  *pii10 = *pii10 + (int)(*pff10 * *pdd10);
  *pii11 = *pii11 + (int)(*pff11 * *pdd11);
  *pii12 = *pii12 + (int)(*pff12 * *pdd12);
  *pii13 = *pii13 + (int)(*pff13 * *pdd13);
  *pii14 = *pii14 + (int)(*pff14 * *pdd14);
  *pii15 = *pii15 + (int)(*pff15 * *pdd15);
  *pii16 = *pii16 + (int)(*pff16 * *pdd16);
  *pii17 = *pii17 + (int)(*pff17 * *pdd17);
  *pii18 = *pii18 + (int)(*pff18 * *pdd18);
  *pii19 = *pii19 + (int)(*pff19 * *pdd19);

  *pii20 = *pii20 + (int)(*pff20 * *pdd20);
  *pii21 = *pii21 + (int)(*pff21 * *pdd21);
  *pii22 = *pii22 + (int)(*pff22 * *pdd22);
  *pii23 = *pii23 + (int)(*pff23 * *pdd23);
  *pii24 = *pii24 + (int)(*pff24 * *pdd24);
  *pii25 = *pii25 + (int)(*pff25 * *pdd25);
  *pii26 = *pii26 + (int)(*pff26 * *pdd26);
  *pii27 = *pii27 + (int)(*pff27 * *pdd27);
  *pii28 = *pii28 + (int)(*pff28 * *pdd28);
  *pii29 = *pii29 + (int)(*pff29 * *pdd29);

  k = i00+i01+i02+i03+i04+i05+i06+i07+i08+i09
    + i10+i11+i12+i13+i14+i15+i16+i17+i18+i19
    + i20+i21+i22+i23+i24+i25+i26+i27+i28+i29
    + ii00+ii01+ii02+ii03+ii04+ii05+ii06+ii07+ii08+ii09
    + ii10+ii11+ii12+ii13+ii14+ii15+ii16+ii17+ii18+ii19
    + ii20+ii21+ii22+ii23+ii24+ii25+ii26+ii27+ii28+ii29;

  printf("%d\n", k);
}
