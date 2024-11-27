#include <stdlib.h>
#include <math.h>
#include <stdio.h>

int main() { 
  float fp,   fsub0(),fsub00();
  double dp,   dsub0(),dsub00();
  long double dlp,   dlsub0(),dlsub00();
  fp  =fsub0( );
  if (fp== -1.0e+0) printf("**dpmk2118-(1)** OK\n");
  else              printf("**dpmk2118-(1)** NG fp=%e\n",fp);
  fp  =fsub00( );
  if (fp== -1.0e+0) printf("**dpmk2118-(2)** OK\n");
  else              printf("**dpmk2118-(2)** NG fp=%e\n",fp);
  dp  =dsub0( );
  if (dp== -1.0e+0) printf("**dpmk2118-(3)** OK\n");
  else              printf("**dpmk2118-(3)** NG dp=%e\n",dp);
  dp  =dsub00( );
  if (dp== -1.0e+0) printf("**dpmk2118-(4)** OK\n");
  else              printf("**dpmk2118-(4)** NG dp=%e\n",dp);
  dlp  =dlsub0( );
  if (dlp== -1.0e+0) printf("**dpmk2118-(5)** OK\n");
  else               printf("**dpmk2118-(5)** NG dlp=%e\n",dlp);
  dlp  =dlsub00( );
  if (dlp== -1.0e+0) printf("**dpmk2118-(6)** OK\n");
  else               printf("**dpmk2118-(6)** NG dlp=%e\n",dlp);
exit (0);
 }
long double dlsub0( ) { return -1.0e+0;}
long double dlsub00( ) { long double a; a=-0.01e+2;return a;}
double dsub0( ) { return -1.0e+0;}
double dsub00( ) { double a; a=-0.01e+2;return a;}
float fsub0( ) { return -1.0e+0;}
float fsub00( ) { float a; a=-0.01e+2;return a;}
