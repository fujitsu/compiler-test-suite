
#include <stdio.h>
#include <omp.h>

#define ELM_MAX 10


int gstep=-1;


void sub(int step);


void sub(int step)
{
  
  int i,j,k,l,m,n,o,p;
  unsigned int i_u,j_u,k_u,l_u,m_u,n_u,o_u,p_u;
  long int i_i8,j_i8,k_i8,l_i8,m_i8,n_i8,o_i8,p_i8;
  unsigned long int i_u8,j_u8,k_u8,l_u8,m_u8,n_u8,o_u8,p_u8;

  int res1=0;
  int res2=0;
  int res3=0;
  int res4=0;
  int ans1= 234375;
  int ans2= 234375;
  int ans3= 486000;
  int ans4= 234375;

  int lstep=1;

  long int test_var=1;
  long int test_var_i8=1;
  unsigned int test_var_u=1;
  unsigned long int test_var_u8=1;


#pragma omp parallel
    {
#pragma omp for collapse(8) reduction(+:res1)
      for(i_u  = 0; i_u  < 5; i_u  +=  test_var_u){ 
      for(j_u  = 0; j_u  < 5; j_u  +=  step  ){
      for(k_u  = 0; k_u  < 5; k_u  +=  lstep ){
      for(l_u  = 0; l_u  < 5; l_u  +=  gstep ){
      for(m_u  = 0; m_u  < 5; m_u  +=  test_var_u8 ){
      for(n_u  = 0; n_u  < 5; n_u  +=  test_var_i8 ){
      for(o_u  = 0; o_u  < 5; o_u  +=  test_var  ){
      for(p_u  = 0; p_u  < 5; p_u  +=  2){
	res1 += 1;
      }}}}}}}}
    }

#pragma omp parallel
    {
#pragma omp for collapse(8) reduction(+:res2)
      for(i_u8  = 0; i_u8 <  5; i_u8 += test_var_u8){
      for(j_u8  = 0; j_u8 <  5; j_u8 += step ){
      for(k_u8  = 0; k_u8 <  5; k_u8 += lstep ){
      for(l_u8  = 0; l_u8 <  5; l_u8 += gstep ){
      for(m_u8  = 0; m_u8  < 5; m_u8 +=  test_var_u ){
      for(n_u8  = 0; n_u8  < 5; n_u8 +=  test_var_i8 ){
      for(o_u8  = 0; o_u8  < 5; o_u8 +=  test_var ){
      for(p_u8  = 0; p_u8  < 5; p_u8 +=  2) {
	res2 += 1;
      }}}}}}}}
    }

#pragma omp parallel
    {
#pragma omp for collapse(8)  reduction(+:res3)
      for(i_i8 = 0; i_i8 <= 5; i_i8 += test_var_i8){ 
      for(j_i8 = 0; j_i8 <= 5; j_i8 +=  step){ 
      for(k_i8 = 0; k_i8 <= 5; k_i8 += lstep){ 
      for(l_i8 = 0; l_i8 <= 5; l_i8 += gstep){ 
      for(m_i8  = 0; m_i8  < 5; m_i8 +=  test_var_u){
      for(n_i8  = 0; n_i8  < 5; n_i8 +=  test_var_u8){
      for(o_i8  = 0; o_i8  < 5; o_i8 +=  test_var){
      for(p_i8  = 0; p_i8  < 5; p_i8  +=  2){
	res3 += 1;
      }}}}}}}}
    }

#pragma omp parallel
    {
#pragma omp for collapse(8)  reduction(+:res4)
      for(i = 0; i < 5; i    +=  test_var){ 
      for(j = 0; j < 5; j    +=  step){ 
      for(k = 0; k < 5; k    += lstep){ 
      for(l = 0; l < 5; l    += gstep){ 
      for(m  = 0; m  < 5; m +=  test_var_u){
      for(n  = 0; n  < 5; n +=  test_var_u8){
      for(o  = 0; o  < 5; o +=  test_var_i8){
      for(p  = 0; p < 5; p  +=  2){
	res4 += 1;
      }}}}}}}}
    }
    
    if(ans1 != res1 ||
       ans2 != res2 ||
       ans3 != res3 ||
       ans4 != res4 ) {
      printf("NG \n");
      printf("%d %d %d %d  \n",res1,res2,res3,res4);
      printf("%d %d %d %d  \n",ans1,ans2,ans3,ans4);
    }
    else {
      printf("OK \n");
    }

}

int main(void) {
  int step=1;
  gstep =1;

  sub(step);
  return 0;
}
