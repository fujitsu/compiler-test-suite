#include <stdio.h>


int main() { 
  float fp,   fsub0(),fsub00();
  double dp,   dsub0(),dsub00();
#ifdef NO_LONG_DOUBLE
  double dlp,   dlsub0(),dlsub00();
#else
  long double dlp,   dlsub0(),dlsub00();
#endif
  fp  =fsub0( );
  if (fp== -1.0e+0) printf("**(1)** OK\n");
  else              printf("**(1)** NG fp=%e\n",fp);
  fp  =fsub00( );
  if (fp== -1.0e+0) printf("**(2)** OK\n");
  else              printf("**(2)** NG fp=%e\n",fp);

  dp  =dsub0( );
  if (dp== -1.0e+0) printf("**(3)** OK\n");
  else              printf("**(3)** NG dp=%e\n",dp);
  dp  =dsub00( );
  if (dp== -1.0e+0) printf("**(4)** OK\n");
  else              printf("**(4)** NG dp=%e\n",dp);

  dlp  =dlsub0( );
  if (dlp== -1.0e+0) printf("**(5)** OK\n");
  else               printf("**(5)** NG dlp=%e\n",dlp);
  dlp  =dlsub00( );
  if (dlp== -1.0e+0) printf("**(6)** OK\n");
  else               printf("**(6)** NG dlp=%e\n",dlp);
 }
#ifdef NO_LONG_DOUBLE
double dlsub0( ) { return -1.0e+0;}
double dlsub00( ) { double a; a=-0.01e+2;return a;}
#else
long double dlsub0( ) { return -1.0e+0;}
long double dlsub00( ) { long double a; a=-0.01e+2;return a;}
#endif
double dsub0( ) { return -1.0e+0;}
double dsub00( ) { double a; a=-0.01e+2;return a;}
float fsub0( ) { return -1.0e+0;}
float fsub00( ) { float a; a=-0.01e+2;return a;}
