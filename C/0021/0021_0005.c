extern int printf(const char * restrict, ...);

union UN {
  int u01;
  int u02:2;
  int ary30[3];
  int ary34[3][4];
};

struct ST {
  int ary30[3];
  int ary34[3][4];
  union UN un05;
  union UN uary60[6];
  union UN uary67[6][7];
};
struct ST Obj = { 0 };
struct ST * restrict STPR = 0;

struct ST * restrict SprFunc() { return 0; }


void Func() {

     int VarI;

     VarI =   STPR->ary30[2];
     VarI =  (STPR+9)->ary30[2];
     VarI =  (STPR++)->ary30[2];
     VarI =   STPR[8]. ary30[2];
     VarI =   STPR->ary34[2][3];
     VarI =  (STPR+9)->ary34[2][3];
     VarI =  (STPR++)->ary34[2][3];
     VarI =   STPR[8]. ary34[2][3];
       STPR->ary30[2] = VarI;
      (STPR+9)->ary30[2] = VarI;
      (STPR++)->ary30[2] = VarI;
       STPR[8]. ary30[2] = VarI;
       STPR->ary34[2][3] = VarI;
      (STPR+9)->ary34[2][3] = VarI;
      (STPR++)->ary34[2][3] = VarI;
       STPR[8]. ary34[2][3] = VarI;
     VarI = (  STPR->ary30[2])++;
     VarI = ( (STPR+9)->ary30[2])++;
     VarI = (  STPR[8].ary30[2])++;
     VarI = (  STPR->ary34[2][3])++;
     VarI = ( (STPR+9)->ary34[2][3])++;
     VarI = (  STPR[8].ary34[2][3])++;
     VarI = --(  STPR->ary30[2]);
     VarI = --( (STPR+9)->ary30[2]);
     VarI = --(  STPR[8].ary30[2]);
     VarI = --(  STPR->ary34[2][3]);
     VarI = --( (STPR+9)->ary34[2][3]);
     VarI = --(  STPR[8].ary34[2][3]);

     VarI =   SprFunc()->ary30[2];
     VarI =  (SprFunc()+9)->ary30[2];
     VarI =   SprFunc()[8].ary30[2];
     VarI =   SprFunc()->ary34[2][3];
     VarI =  (SprFunc()+9)->ary34[2][3];
     VarI =   SprFunc()[8].ary34[2][3];
       SprFunc()->ary30[2] = VarI;
      (SprFunc()+9)->ary30[2] = VarI;
       SprFunc()[8].ary30[2] = VarI;
       SprFunc()->ary34[2][3] = VarI;
      (SprFunc()+9)->ary34[2][3] = VarI;
       SprFunc()[8].ary34[2][3] = VarI;
     VarI = (  SprFunc()->ary30[2])++;
     VarI = ( (SprFunc()+9)->ary30[2])++;
     VarI = (  SprFunc()[8].ary30[2])++;
     VarI = (  SprFunc()->ary34[2][3])++;
     VarI = ( (SprFunc()+9)->ary34[2][3])++;
     VarI = (  SprFunc()[8].ary34[2][3])++;
     VarI = --(  SprFunc()->ary30[2]);
     VarI = --( (SprFunc()+9)->ary30[2]);
     VarI = --(  SprFunc()[8].ary30[2]);
     VarI = --(  SprFunc()->ary34[2][3]);
     VarI = --( (SprFunc()+9)->ary34[2][3]);
     VarI = --(  SprFunc()[8].ary34[2][3]);

}
int main() {
  printf("ok\n");
}

