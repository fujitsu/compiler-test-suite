#include <stdio.h>
#include <string.h>

static __thread int a[60][10];
static __thread int b[10];

static __thread int tb;
static __thread int t000;
static __thread int t001,t002,t003,t004,t005,t006,t007,t008,t009,t010;
static __thread int t011,t012,t013,t014,t015,t016,t017,t018,t019,t020;
static __thread int t021,t022,t023,t024,t025,t026,t027,t028,t029,t030;
static __thread int t031,t032,t033,t034,t035,t036,t037,t038,t039,t040;
static __thread int t041,t042,t043,t044,t045,t046,t047,t048,t049,t050;
static __thread int t051,t052,t053,t054,t055,t056,t057,t058,t059;

static int integer_register(int a[][10], int *b, int n) {
  int i;
  for(i = 0; i < n; ++i) {
    tb = b[i];
    t000 = a[0][i];
    t001 = a[1][i];
    t002 = a[2][i];
    t003 = a[3][i];
    t004 = a[4][i];
    t005 = a[5][i];
    t006 = a[6][i];
    t007 = a[7][i];
    t008 = a[8][i];
    t009 = a[9][i];
    t010 = a[10][i];
    t011 = a[11][i];
    t012 = a[12][i];
    t013 = a[13][i];
    t014 = a[14][i];
    t015 = a[15][i];
    t016 = a[16][i];
    t017 = a[17][i];
    t018 = a[18][i];
    t019 = a[19][i];
    t020 = a[20][i];
    t021 = a[21][i];
    t022 = a[22][i];
    t023 = a[23][i];
    t024 = a[24][i];
    t025 = a[25][i];
    t026 = a[26][i];
    t027 = a[27][i];
    t028 = a[28][i];
    t029 = a[29][i];
    t030 = a[30][i]+ t000;
    t031 = a[31][i]+ t001;
    t032 = a[32][i]+ t002;
    t033 = a[33][i]+ t003;
    t034 = a[34][i]+ t004;
    t035 = a[35][i]+ t005;
    t036 = a[36][i]+ t006;
    t037 = a[37][i]+ t007;
    t038 = a[38][i]+ t008;
    t039 = a[39][i]+ t009;
    t040 = a[40][i]+ t010;
    t041 = a[41][i]+ t011;
    t042 = a[42][i]+ t012;
    t043 = a[43][i]+ t013;
    t044 = a[44][i]+ t014;
    t045 = a[45][i]+ t015;
    t046 = a[46][i]+ t016;
    t047 = a[47][i]+ t017;
    t048 = a[48][i]+ t018;
    t049 = a[49][i]+ t019;
    t050 = a[50][i]+ t020;
    t051 = a[51][i]+ t021;
    t052 = a[52][i]+ t022;
    t053 = a[53][i]+ t023;
    t054 = a[54][i]+ t024;
    t055 = a[55][i]+ t025;
    t056 = a[56][i]+ t026;
    t057 = a[57][i]+ t027;
    t058 = a[58][i]+ t028;
    t059 = a[59][i]+ t029;

    tb = tb + t000 + t001 + t002 + t003 + t004 + t005 + t006 + t007 + t008 + t009 + t010 + t011 + t012 + t013 + t014 + t015 + t016 + t017 + t018 + t019 + t020 + t021 + t022 + t023 + t024 + t025 + t026 + t027 + t028 + t029 + t030 + t031 + t032 + t033 + t034 + t035 + t036 + t037 + t038 + t039 + t040 + t041 + t042 + t043 + t044 + t045 + t046 + t047 + t048 + t049 + t050 + t051 + t052 + t053 + t054 + t055 + t056 + t057 + t058 + t059;

    b[i] = tb;
  }

  return tb;
}

int lto_sub_54() {
  int i, j;
  int n = 10;
  int ans;

  for (i = 0; i < 10; ++i) {
    b[i] = 0;
  }

  for (i = 0; i < 60; ++i) {
    for (j = 0; j < 10; ++j) {
      a[i][j] = 1;
    }
  }

  for(j=0;j<10;++j) {
    ans = integer_register(a, b, n);
  }

  if (ans != 900){
    printf("ans = %d NG\n", ans);
  }
  for(i=0;i<10;++i) {
    if (b[i] != 900){
      printf("b[%d] = %d NG\n",i,b[i]);
    }
  }

  printf("OK\n");
    
  return 0;
}
