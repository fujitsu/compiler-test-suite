extern int printf(const char * restrict, ...);


int               VarI    = 0;

struct ST {
  int m01;
  int m02:2;
  int * restrict p03;
};

void rFunc(
           int       air0 [restrict  ]    , 
           int       air35[restrict 3][5] , 
           struct ST aSr0 [restrict  ]    , 
           struct ST aSr35[restrict 3][5]   
                                            ) {

   VarI =   air0[2];
   VarI = *(air0+9);
   VarI = *(air0++);
     air0[2] = VarI;
   *(air0+9) = VarI;
   *(air0++) = VarI;
   VarI = (  air0[2])++;
   VarI = (*(air0+9))++;
   VarI = (*(air0++))++;
   VarI = --(  air0[2]);
   VarI = --(*(air0+9));
   VarI = --(*(air0++));

   VarI =    air35[2] [4];
   VarI =  *(air35[2] +4);
   VarI = (*(air35+9))[4];
   VarI = (*(air35++))[4];
      air35[2] [4] = VarI;
    *(air35[2] +4) = VarI;
   (*(air35+9))[4] = VarI;
   (*(air35++))[4] = VarI;
   VarI = (   air35[2] [4])++;
   VarI = ( *(air35[2] +4))++;
   VarI = ((*(air35+9))[4])++;
   VarI = ((*(air35++))[4])++;
   VarI = --(   air35[2] [4]);
   VarI = --( *(air35[2] +4));
   VarI = --((*(air35+9))[4]);
   VarI = --((*(air35++))[4]);

   VarI =  aSr0[2]. m01;
   VarI = (aSr0+9)->m01;
   VarI = (aSr0++)->m01;
   VarI =  aSr0[2]. m02;
   VarI = (aSr0+9)->m02;
   VarI = (aSr0++)->m02;
    aSr0[2]. m01 = VarI;
   (aSr0+9)->m01 = VarI;
   (aSr0++)->m01 = VarI;
    aSr0[2]. m02 = VarI;
   (aSr0+9)->m02 = VarI;
   (aSr0++)->m02 = VarI;
   VarI = ( aSr0[2]. m01)++;
   VarI = ((aSr0+9)->m01)++;
   VarI = ((aSr0++)->m01)++;
   VarI = ( aSr0[2]. m02)++;
   VarI = ((aSr0+9)->m02)++;
   VarI = ((aSr0++)->m02)++;
   VarI = --( aSr0[2]. m01);
   VarI = --((aSr0+9)->m01);
   VarI = --((aSr0++)->m01);
   VarI = --( aSr0[2]. m02);
   VarI = --((aSr0+9)->m02);
   VarI = --((aSr0++)->m02);

   VarI =    aSr35[2] [4]. m01;
   VarI =   (aSr35[2] +4)->m01;
   VarI = (*(aSr35+9))[4].m01;
   VarI = (*(aSr35++))[4].m01;
   VarI =    aSr35[2] [4]. m02;
   VarI =   (aSr35[2] +4)->m02;
   VarI = (*(aSr35+9))[4].m02;
   VarI = (*(aSr35++))[4].m02;
      aSr35[2] [4]. m01 = VarI;
     (aSr35[2] +4)->m01 = VarI;
   (*(aSr35+9))[4].m01 = VarI;
   (*(aSr35++))[4].m01 = VarI;
      aSr35[2] [4]. m02 = VarI;
     (aSr35[2] +4)->m02 = VarI;
   (*(aSr35+9))[4].m02 = VarI;
   (*(aSr35++))[4].m02 = VarI;
   VarI = (   aSr35[2] [4]. m01)++;
   VarI = (  (aSr35[2] +4)->m01)++;
   VarI = ((*(aSr35+9))[4]. m01)++;
   VarI = ((*(aSr35++))[4]. m01)++;
   VarI = (   aSr35[2] [4]. m02)++;
   VarI = (  (aSr35[2] +4)->m02)++;
   VarI = ((*(aSr35+9))[4]. m02)++;
   VarI = ((*(aSr35++))[4]. m02)++;
   VarI = --(   aSr35[2] [4]. m01);
   VarI = --(  (aSr35[2] +4)->m01);
   VarI = --((*(aSr35+9))[4]. m01);
   VarI = --((*(aSr35++))[4]. m01);
   VarI = --(   aSr35[2] [4]. m02);
   VarI = --(  (aSr35[2] +4)->m02);
   VarI = --((*(aSr35+9))[4]. m02);
   VarI = --((*(aSr35++))[4]. m02);

}
int main() {
  printf("ok\n");
}

