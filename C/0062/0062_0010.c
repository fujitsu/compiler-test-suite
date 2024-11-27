
#include <stdio.h>

void init_a(double * restrict a00,
	    double * restrict a01,
	    double * restrict a02,
	    double * restrict a03,
	    double * restrict a04,
	    double * restrict a05,
	    double * restrict a06,
	    double * restrict a07,
	    double * restrict a08,
	    double * restrict a09,
	    int n)
{
  int i;

  for (i=0; i<n; ++i) {
    a00[i] = 0;
    a01[i] = 0;
    a02[i] = 0;
    a03[i] = 0;
    a04[i] = 0;
    a05[i] = 0;
    a06[i] = 0;
    a07[i] = 0;
    a08[i] = 0;
    a09[i] = 0;
  }
}

#define N 10
#define M 1
#define NNN 10

double dasum(double * restrict a00,
	     double * restrict a01,
	     double * restrict a02,
	     double * restrict a03,
	     double * restrict a04,
	     double * restrict a05,
	     double * restrict a06,
	     double * restrict a07,
	     double * restrict a08,
	     double * restrict a09,
	     int n)
{
  int i;
  double k;

  k = 0.0;
  for (i=0; i<n; ++i) {
    k += a00[i]+a01[i]+a02[i]+a03[i]+a04[i]+a05[i]+a06[i]+a07[i]+a08[i]+a09[i];
  }
  return k;
}

void connect_ouds(double * restrict a00,
		  double * restrict a01,
		  double * restrict a02,
		  double * restrict a03,
		  double * restrict a04,
		  double * restrict a05,
		  double * restrict a06,
		  double * restrict a07,
		  double * restrict a08,
		  double * restrict a09,
		  double * restrict a10,
		  double * restrict a11,
		  double * restrict a12,
		  double * restrict a13,
		  double * restrict a14,
		  double * restrict a15,
		  double * restrict a16,
		  double * restrict a17,
		  double * restrict a18,
		  double * restrict a19,
		  double * restrict a20,
		  double * restrict a21,
		  double * restrict a22,
		  double * restrict a23,
		  double * restrict a24,
		  double * restrict a25,
		  double * restrict a26,
		  double * restrict a27,
		  double * restrict a28,
		  double * restrict a29,
		  double * restrict a30,
		  double * restrict a31,
		  double * restrict a32,
		  double * restrict a33,
		  double * restrict a34,
		  double * restrict a35,
		  double * restrict a36,
		  double * restrict a37,
		  double * restrict a38,
		  double * restrict a39,
		  double * restrict a40,
		  double * restrict a41,
		  double * restrict a42,
		  double * restrict a43,
		  double * restrict a44,
		  double * restrict a45,
		  double * restrict a46,
		  double * restrict a47,
		  double * restrict a48,
		  double * restrict a49,
		  double * restrict a50,
		  double * restrict a51,
		  double * restrict a52,
		  double * restrict a53,
		  double * restrict a54,
		  double * restrict a55,
		  double * restrict a56,
		  double * restrict a57,
		  double * restrict a58,
		  double * restrict a59,
		  double * restrict a60,
		  double * restrict a61,
		  double * restrict a62,
		  double * restrict a63,
		  double * restrict a64,
		  double * restrict a65,
		  double * restrict a66,
		  double * restrict a67,
		  double * restrict a68,
		  double * restrict a69,
		  double * restrict a70,
		  double * restrict a71,
		  double * restrict a72,
		  double * restrict a73,
		  double * restrict a74,
		  double * restrict a75,
		  double * restrict a76,
		  double * restrict a77,
		  double * restrict a78,
		  double * restrict a79,
		  double * restrict a80,
		  double * restrict a81,
		  double * restrict a82,
		  double * restrict a83,
		  double * restrict a84,
		  double * restrict a85,
		  double * restrict a86,
		  double * restrict a87,
		  double * restrict a88,
		  double * restrict a89,
		  double * restrict a90,
		  double * restrict a91,
		  double * restrict a92,
		  double * restrict a93,
		  double * restrict a94,
		  double * restrict a95,
		  double * restrict a96,
		  double * restrict a97,
		  double * restrict a98,
		  double * restrict a99,
		  double * restrict d00,
		  double * restrict d01,
		  double * restrict d02,
		  double * restrict d03,
		  double * restrict d04,
		  double * restrict d05,
		  double * restrict d06,
		  double * restrict d07,
		  double * restrict d08,
		  double * restrict d09,
		  double * restrict d10,
		  double * restrict d11,
		  double * restrict d12,
		  double * restrict d13,
		  double * restrict d14,
		  double * restrict d15,
		  double * restrict d16,
		  double * restrict d17,
		  double * restrict d18,
		  double * restrict d19,
		  double * restrict d20,
		  double * restrict d21,
		  double * restrict d22,
		  double * restrict d23,
		  double * restrict d24,
		  double * restrict d25,
		  double * restrict d26,
		  double * restrict d27,
		  double * restrict d28,
		  double * restrict d29,
		  double * restrict d30,
		  double * restrict d31,
		  double * restrict d32,
		  double * restrict d33,
		  double * restrict d34,
		  double * restrict d35,
		  double * restrict d36,
		  double * restrict d37,
		  double * restrict d38,
		  double * restrict d39,
		  double * restrict d40,
		  double * restrict d41,
		  double * restrict d42,
		  double * restrict d43,
		  double * restrict d44,
		  double * restrict d45,
		  double * restrict d46,
		  double * restrict d47,
		  double * restrict d48,
		  double * restrict d49,
		  double * restrict d50,
		  double * restrict d51,
		  double * restrict d52,
		  double * restrict d53,
		  double * restrict d54,
		  double * restrict d55,
		  double * restrict d56,
		  double * restrict d57,
		  double * restrict d58,
		  double * restrict d59,
		  double * restrict d60,
		  double * restrict d61,
		  double * restrict d62,
		  double * restrict d63,
		  double * restrict d64,
		  double * restrict d65,
		  double * restrict d66,
		  double * restrict d67,
		  double * restrict d68,
		  double * restrict d69,
		  double * restrict d70,
		  double * restrict d71,
		  double * restrict d72,
		  double * restrict d73,
		  double * restrict d74,
		  double * restrict d75,
		  double * restrict d76,
		  double * restrict d77,
		  double * restrict d78,
		  double * restrict d79,
		  double * restrict d80,
		  double * restrict d81,
		  double * restrict d82,
		  double * restrict d83,
		  double * restrict d84,
		  double * restrict d85,
		  double * restrict d86,
		  double * restrict d87,
		  double * restrict d88,
		  double * restrict d89,
		  double * restrict d90,
		  double * restrict d91,
		  double * restrict d92,
		  double * restrict d93,
		  double * restrict d94,
		  double * restrict d95,
		  double * restrict d96,
		  double * restrict d97,
		  double * restrict d98,
		  double * restrict d99,
		  long long int * restrict l00,
		  long long int * restrict l01,
		  long long int * restrict l02,
		  long long int * restrict l03,
		  long long int * restrict l04,
		  long long int * restrict l05,
		  long long int * restrict l06,
		  long long int * restrict l07,
		  long long int * restrict l08,
		  long long int * restrict l09,
		  long long int * restrict l10,
		  long long int * restrict l11,
		  long long int * restrict l12,
		  long long int * restrict l13,
		  long long int * restrict l14,
		  long long int * restrict l15,
		  long long int * restrict l16,
		  long long int * restrict l17,
		  long long int * restrict l18,
		  long long int * restrict l19)
{
  int i, j;

  init_a(a00,a01,a02,a03,a04,a05,a06,a07,a08,a09,N);
  init_a(a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,N);
  init_a(a20,a21,a22,a23,a24,a25,a26,a27,a28,a29,N);
  init_a(a30,a31,a32,a33,a34,a35,a36,a37,a38,a39,N);
  init_a(a40,a41,a42,a43,a44,a45,a46,a47,a48,a49,N);
  init_a(a50,a51,a52,a53,a54,a55,a56,a57,a58,a59,N);
  init_a(a60,a61,a62,a63,a64,a65,a66,a67,a68,a69,N);
  init_a(a70,a71,a72,a73,a74,a75,a76,a77,a78,a79,N);
  init_a(a80,a81,a82,a83,a84,a85,a86,a87,a88,a89,N);
  init_a(a90,a91,a92,a93,a94,a95,a96,a97,a98,a99,N);
  init_a(d00,d01,d02,d03,d04,d05,d06,d07,d08,d09,NNN);
  init_a(d10,d11,d12,d13,d14,d15,d16,d17,d18,d19,NNN);
  init_a(d20,d21,d22,d23,d24,d25,d26,d27,d28,d29,NNN);
  init_a(d30,d31,d32,d33,d34,d35,d36,d37,d38,d39,NNN);
  init_a(d40,d41,d42,d43,d44,d45,d46,d47,d48,d49,NNN);
  init_a(d50,d51,d52,d53,d54,d55,d56,d57,d58,d59,NNN);
  init_a(d60,d61,d62,d63,d64,d65,d66,d67,d68,d69,NNN);
  init_a(d70,d71,d72,d73,d74,d75,d76,d77,d78,d79,NNN);
  init_a(d80,d81,d82,d83,d84,d85,d86,d87,d88,d89,NNN);
  init_a(d90,d91,d92,d93,d94,d95,d96,d97,d98,d99,NNN);
  for (i=0; i<M; ++i) {
    l00[i] = 1;
    l01[i] = 1;
    l02[i] = 1;
    l03[i] = 1;
    l04[i] = 1;
    l05[i] = 1;
    l06[i] = 1;
    l07[i] = 1;
    l08[i] = 1;
    l09[i] = 1;
  }
  for (i=0; i<M; ++i) {
    l10[i] = 1;
    l11[i] = 1;
    l12[i] = 1;
    l13[i] = 1;
    l14[i] = 1;
    l15[i] = 1;
    l16[i] = 1;
    l17[i] = 1;
    l18[i] = 1;
    l19[i] = 1;
  }
  for (i=0; i<NNN; ++i) {
    if (l00[0] == l10[0]) {
#pragma clang loop unroll_count(N)
      for (j=0; j<N; ++j) {
	a00[j] = a00[j]+a01[j]+a02[j]+a03[j]+a04[j]+a05[j]+a06[j]+a07[j]+a08[j]+a09[j];
      }
    }
    d00[i] = d00[i]+d01[i]+d02[i]+d03[i]+d04[i]+d05[i]+d06[i]+d07[i]+d08[i]+d09[i]+a00[i];
    if (l01[0] == l11[0]) { 
#pragma clang loop unroll_count(N)
      for (j=0; j<N; ++j) {
	a10[j] = a01[j]+a11[j]+a12[j]+a13[j]+a14[j]+a15[j]+a16[j]+a17[j]+a18[j]+a19[j];
      }
    }
    d10[i] = d10[i]+d11[i]+d12[i]+d13[i]+d14[i]+d15[i]+d16[i]+d17[i]+d18[i]+d19[i]+a10[i];
    if (l02[0] == l12[0]) { 
#pragma clang loop unroll_count(N)
      for (j=0; j<N; ++j) {
	a20[j] = a20[j]+a21[j]+a22[j]+a23[j]+a24[j]+a25[j]+a26[j]+a27[j]+a28[j]+a29[j];
      }
    }
    d20[i] = d20[i]+d21[i]+d22[i]+d23[i]+d24[i]+d25[i]+d26[i]+d27[i]+d28[i]+d29[i]+a20[i];
    if (l03[0] == l13[0]) { 
#pragma clang loop unroll_count(N)
      for (j=0; j<N; ++j) {
	a30[j] = a30[j]+a31[j]+a32[j]+a33[j]+a34[j]+a35[j]+a36[j]+a37[j]+a38[j]+a39[j];
      }
    }
    d30[i] = d30[i]+d31[i]+d32[i]+d33[i]+d34[i]+d35[i]+d36[i]+d37[i]+d38[i]+d39[i]+a30[i];
    if (l04[0] == l14[0]) { 
#pragma clang loop unroll_count(N)
      for (j=0; j<N; ++j) {
	a40[j] = a40[j]+a41[j]+a42[j]+a43[j]+a44[j]+a45[j]+a46[j]+a47[j]+a48[j]+a49[j];
      }
    }
    d40[i] = d40[i]+d41[i]+d42[i]+d43[i]+d44[i]+d45[i]+d46[i]+d47[i]+d48[i]+d49[i]+a40[i];
    if (l05[0] == l15[0]) { 
#pragma clang loop unroll_count(N)
      for (j=0; j<N; ++j) {
	a50[j] = a50[j]+a51[j]+a52[j]+a53[j]+a54[j]+a55[j]+a56[j]+a57[j]+a58[j]+a59[j];
      }
    }
    d50[i] = d50[i]+d51[i]+d52[i]+d53[i]+d54[i]+d55[i]+d56[i]+d57[i]+d58[i]+d59[i]+a50[i];
    if (l06[0] == l16[0]) { 
#pragma clang loop unroll_count(N)
      for (j=0; j<N; ++j) {
	a60[j] = a61[j]+a62[j]+a63[j]+a64[j]+a65[j]+a66[j]+a67[j]+a68[j]+a69[j];
      }
    }
    d60[i] = d60[i]+d61[i]+d62[i]+d63[i]+d64[i]+d65[i]+d66[i]+d67[i]+d68[i]+d69[i]+a60[i];
    if (l07[0] == l17[0]) { 
#pragma clang loop unroll_count(N)
      for (j=0; j<N; ++j) {
	a70[j] = a70[j]+a71[j]+a72[j]+a73[j]+a74[j]+a75[j]+a76[j]+a77[j]+a78[j]+a79[j];
      }
    }
    d70[i] = d70[i]+d71[i]+d72[i]+d73[i]+d74[i]+d75[i]+d76[i]+d77[i]+d78[i]+d79[i]+a70[i];
    if (l08[0] == l18[0]) { 
#pragma clang loop unroll_count(N)
      for (j=0; j<N; ++j) {
	a80[j] = a80[j]+a81[j]+a82[j]+a83[j]+a84[j]+a85[j]+a86[j]+a87[j]+a88[j]+a89[j];
      }
    }
    d80[i] = d80[i]+d81[i]+d82[i]+d83[i]+d84[i]+d85[i]+d86[i]+d87[i]+d88[i]+d89[i]+a80[i];
    if (l09[0] == l19[0]) { 
#pragma clang loop unroll_count(N)
      for (j=0; j<N; ++j) {
	a90[j] = a90[j]+a91[j]+a92[j]+a93[j]+a94[j]+a95[j]+a96[j]+a97[j]+a99[j]+a99[j];
      }
    }
    d90[i] = d90[i]+d91[i]+d92[i]+d93[i]+d94[i]+d95[i]+d96[i]+d97[i]+d99[i]+d99[i]+a90[i];

    if (d00[i]+d01[i]+d02[i]+d03[i]+d04[i]+d05[i]+d06[i]+d07[i]+d08[i]+d09[i]<0.0) {
      d90[i] = a00[0]+a01[0]+a02[0]+a03[0]+a04[0]+a05[0]+a06[0]+a07[0]+a08[0]+a09[0];
    }
  }
}

int main(void)
{
  double a00[N];      
  double a01[N];      
  double a02[N];      
  double a03[N];      
  double a04[N];      
  double a05[N];      
  double a06[N];      
  double a07[N];      
  double a08[N];      
  double a09[N];      
  double a10[N];      
  double a11[N];      
  double a12[N];      
  double a13[N];      
  double a14[N];      
  double a15[N];      
  double a16[N];      
  double a17[N];      
  double a18[N];      
  double a19[N];      
  double a20[N];      
  double a21[N];      
  double a22[N];      
  double a23[N];      
  double a24[N];      
  double a25[N];      
  double a26[N];      
  double a27[N];      
  double a28[N];      
  double a29[N];      
  double a30[N];      
  double a31[N];      
  double a32[N];      
  double a33[N];      
  double a34[N];      
  double a35[N];      
  double a36[N];      
  double a37[N];      
  double a38[N];      
  double a39[N];      
  double a40[N];      
  double a41[N];      
  double a42[N];      
  double a43[N];      
  double a44[N];      
  double a45[N];      
  double a46[N];      
  double a47[N];      
  double a48[N];      
  double a49[N];      
  double a50[N];      
  double a51[N];      
  double a52[N];      
  double a53[N];      
  double a54[N];      
  double a55[N];      
  double a56[N];      
  double a57[N];      
  double a58[N];      
  double a59[N];      
  double a60[N];      
  double a61[N];      
  double a62[N];      
  double a63[N];      
  double a64[N];      
  double a65[N];      
  double a66[N];      
  double a67[N];      
  double a68[N];      
  double a69[N];      
  double a70[N];      
  double a71[N];      
  double a72[N];      
  double a73[N];      
  double a74[N];      
  double a75[N];      
  double a76[N];      
  double a77[N];      
  double a78[N];      
  double a79[N];      
  double a80[N];      
  double a81[N];      
  double a82[N];      
  double a83[N];      
  double a84[N];      
  double a85[N];      
  double a86[N];      
  double a87[N];      
  double a88[N];      
  double a89[N];      
  double a90[N];      
  double a91[N];      
  double a92[N];      
  double a93[N];      
  double a94[N];      
  double a95[N];      
  double a96[N];      
  double a97[N];      
  double a98[N];      
  double a99[N];      
  double d00[NNN];
  double d01[NNN];
  double d02[NNN];
  double d03[NNN];      
  double d04[NNN];      
  double d05[NNN];      
  double d06[NNN];      
  double d07[NNN];      
  double d08[NNN];      
  double d09[NNN];      
  double d10[NNN];      
  double d11[NNN];      
  double d12[NNN];      
  double d13[NNN];      
  double d14[NNN];      
  double d15[NNN];      
  double d16[NNN];      
  double d17[NNN];      
  double d18[NNN];      
  double d19[NNN];      
  double d20[NNN];      
  double d21[NNN];      
  double d22[NNN];      
  double d23[NNN];      
  double d24[NNN];      
  double d25[NNN];      
  double d26[NNN];      
  double d27[NNN];      
  double d28[NNN];      
  double d29[NNN];      
  double d30[NNN];      
  double d31[NNN];      
  double d32[NNN];      
  double d33[NNN];      
  double d34[NNN];      
  double d35[NNN];      
  double d36[NNN];      
  double d37[NNN];      
  double d38[NNN];      
  double d39[NNN];      
  double d40[NNN];      
  double d41[NNN];      
  double d42[NNN];      
  double d43[NNN];      
  double d44[NNN];      
  double d45[NNN];      
  double d46[NNN];      
  double d47[NNN];      
  double d48[NNN];      
  double d49[NNN];      
  double d50[NNN];      
  double d51[NNN];      
  double d52[NNN];      
  double d53[NNN];      
  double d54[NNN];      
  double d55[NNN];      
  double d56[NNN];      
  double d57[NNN];      
  double d58[NNN];      
  double d59[NNN];      
  double d60[NNN];      
  double d61[NNN];      
  double d62[NNN];      
  double d63[NNN];      
  double d64[NNN];      
  double d65[NNN];      
  double d66[NNN];      
  double d67[NNN];      
  double d68[NNN];      
  double d69[NNN];      
  double d70[NNN];      
  double d71[NNN];      
  double d72[NNN];      
  double d73[NNN];      
  double d74[NNN];      
  double d75[NNN];      
  double d76[NNN];      
  double d77[NNN];      
  double d78[NNN];        
  double d79[NNN];      
  double d80[NNN];      
  double d81[NNN];      
  double d82[NNN];      
  double d83[NNN];      
  double d84[NNN];      
  double d85[NNN];      
  double d86[NNN];      
  double d87[NNN];      
  double d88[NNN];      
  double d89[NNN];      
  double d90[NNN];      
  double d91[NNN];      
  double d92[NNN];      
  double d93[NNN];      
  double d94[NNN];      
  double d95[NNN];      
  double d96[NNN];      
  double d97[NNN];      
  double d98[NNN];      
  double d99[NNN];      
  long long int l00[M];
  long long int l01[M];
  long long int l02[M];
  long long int l03[M];
  long long int l04[M];
  long long int l05[M];
  long long int l06[M];
  long long int l07[M];
  long long int l08[M];
  long long int l09[M];
  long long int l10[M];
  long long int l11[M];
  long long int l12[M];
  long long int l13[M];
  long long int l14[M];
  long long int l15[M];
  long long int l16[M];
  long long int l17[M];
  long long int l18[M];
  long long int l19[M];

  connect_ouds(a00,a01,a02,a03,a04,a05,a06,a07,a08,a09,
	       a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,
	       a20,a21,a22,a23,a24,a25,a26,a27,a28,a29,
	       a30,a31,a32,a33,a34,a35,a36,a37,a38,a39,
	       a40,a41,a42,a43,a44,a45,a46,a47,a48,a49,
	       a50,a51,a52,a53,a54,a55,a56,a57,a58,a59,
	       a60,a61,a62,a63,a64,a65,a66,a67,a68,a69,
	       a70,a71,a72,a73,a74,a75,a76,a77,a78,a79,
	       a80,a81,a82,a83,a84,a85,a86,a87,a88,a89,
	       a90,a91,a92,a93,a94,a95,a96,a97,a98,a99,
	       d00,d01,d02,d03,d04,d05,d06,d07,d08,d09,
	       d10,d11,d12,d13,d14,d15,d16,d17,d18,d19,
	       d20,d21,d22,d23,d24,d25,d26,d27,d28,d29,
	       d30,d31,d32,d33,d34,d35,d36,d37,d38,d39,
	       d40,d41,d42,d43,d44,d45,d46,d47,d48,d49,
	       d50,d51,d52,d53,d54,d55,d56,d57,d58,d59,
	       d60,d61,d62,d63,d64,d65,d66,d67,d68,d69,
	       d70,d71,d72,d73,d74,d75,d76,d77,d78,d79,
	       d80,d81,d82,d83,d84,d85,d86,d87,d88,d89,
	       d90,d91,d92,d93,d94,d95,d96,d97,d98,d99,
	       l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,
	       l10,l11,l12,l13,l14,l15,l16,l17,l18,l19);

  if ((int)dasum(d00,d10,d20,d30,d40,d50,d60,d70,d80,d90,NNN) == 0) { 
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %d\n",(int)dasum(d00,d10,d20,d30,d40,d50,d60,d70,d80,d90,NNN));
  }
}
