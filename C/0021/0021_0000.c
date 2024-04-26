int printf(const char*, ...);
int VarI;
int *  restrict   IPR ;
int ** restrict   IPPR;
int *  restrict * IPRP;

struct ST0 {
  int m01;
};

struct ST {
  int * restrict mr;
  int mi;
  int mb:2;
  int mary[3];
  struct ST0 mS0;
};

struct ST            STO ;
struct ST * restrict STPR;

void Func( int * restrict ParIPR          ,
           int       air0 [restrict  ]    ,
           int       air35[restrict 3][5] ,
           struct ST aSr0 [restrict  ]    ,
           struct ST aSr35[restrict 3][5]   )
{
  VarI = *  IPR ;
  VarI = ** IPPR;
  VarI = ** IPRP;

  *  IPR  = VarI;
  ** IPPR = VarI;
  ** IPRP = VarI;

  VarI = * STO  .mr      ;
  VarI =   STPR->mi      ;
  VarI =   STPR->mb      ;
  VarI =   STPR->mary[2] ;
  VarI =   STPR->mS0.m01 ;

  * STO  .mr      = VarI ;
    STPR->mi      = VarI ;
    STPR->mb      = VarI ;
    STPR->mary[2] = VarI ;
    STPR->mS0.m01 = VarI ;

    VarI   = * ParIPR ;
  * ParIPR =   VarI   ;

  VarI = air0 [2]              ;
  VarI = air35[2][4]           ;
  VarI = aSr0 [2]    . mi      ;
  VarI = aSr0 [2]    . mb      ;
  VarI = aSr0 [2]    . mary[2] ;
  VarI = aSr0 [2]    . mS0.m01 ;
  VarI = aSr35[2][4] . mi      ;
  VarI = aSr35[2][4] . mb      ;
  VarI = aSr35[2][4] . mary[2] ;
  VarI = aSr35[2][4] . mS0.m01 ;

  air0 [2]              = VarI ;
  air35[2][4]           = VarI ;
  aSr0 [2]    . mi      = VarI ;
  aSr0 [2]    . mb      = VarI ;
  aSr0 [2]    . mary[2] = VarI ;
  aSr0 [2]    . mS0.m01 = VarI ;
  aSr35[2][4] . mi      = VarI ;
  aSr35[2][4] . mb      = VarI ;
  aSr35[2][4] . mary[2] = VarI ;
  aSr35[2][4] . mS0.m01 = VarI ;

}
int main() {
  printf("ok\n");
}

