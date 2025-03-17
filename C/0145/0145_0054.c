
#include <stdio.h>
#include <omp.h>

#define ELM_MAX 10



void sub(void);


void sub(void)
{
  
  int i,j,k,l,m,n,o,p;
  unsigned int i_u,j_u,k_u,l_u,m_u,n_u,o_u,p_u;
  long int i_i8,j_i8,k_i8,l_i8,m_i8,n_i8,o_i8,p_i8;
  unsigned long int i_u8,j_u8,k_u8,l_u8,m_u8,n_u8,o_u8,p_u8;

  int res1=0;
  int res2=0;
  int res3=0;
  int res4=0;
  int ans1= 390625;
  int ans2= 390625;
  int ans3= 390625;
  int ans4= 390625;


  printf("loop-01 \n");
#pragma omp parallel
    {
#pragma omp for collapse(8) reduction(+:res1)
      for(i_u  = 5; i_u  > 0; --i_u ){
      for(j_u  = 5; j_u  > 0; --j_u){
      for(k_u  = 5; k_u  > 0; --k_u){
      for(l_u  = 5; l_u  > 0; --l_u){
      for(m_u  = 5; m_u  > 0; --m_u){
      for(n_u  = 5; n_u  > 0; --n_u){
      for(o_u  = 5; o_u  > 0; --o_u){
      for(p_u  = 5; p_u  > 0; --p_u){
	res1 += 1;
      }}}}}}}}
    }

    printf("loop-02 \n");
#pragma omp parallel
    {
#pragma omp for collapse(8) reduction(+:res2)
      for(i_u8  = 5; i_u8 > 0; --i_u8 ){
      for(j_u8  = 5; j_u8 > 0; --j_u8 ){
      for(k_u8  = 5; k_u8 > 0; --k_u8 ){
      for(l_u8  = 5; l_u8 > 0; --l_u8 ){
      for(m_u8  = 5; m_u8 > 0; --m_u8 ){
      for(n_u8  = 5; n_u8 > 0; --n_u8 ){
      for(o_u8  = 5; o_u8 > 0; --o_u8 ){
      for(p_u8  = 5; p_u8 > 0; --p_u8){
	res2 += 1;
      }}}}}}}}
    }

    printf("loop-03 \n");
#pragma omp parallel
    {
#pragma omp for collapse(8)  reduction(+:res3)
      for(i_i8 = 5; i_i8 > 0; --i_i8 ){
      for(j_i8 = 5; j_i8 > 0; --j_i8 ){
      for(k_i8 = 5; k_i8 > 0; --k_i8 ){
      for(l_i8 = 5; l_i8 > 0; --l_i8 ){
      for(m_i8 = 5; m_i8 > 0; --m_i8 ){
      for(n_i8 = 5; n_i8 > 0; --n_i8 ){
      for(o_i8 = 5; o_i8 > 0; --o_i8 ){
      for(p_i8 = 5; p_i8 > 0; --p_i8){
	res3 += 1;
      }}}}}}}}
    }

    printf("loop-04 \n");
#pragma omp parallel
    {
#pragma omp for collapse(8)  reduction(+:res4)
      for(i = 5; i > 0; --i){
      for(j = 5; j > 0; --j){
      for(k = 5; k > 0; --k){
      for(l = 5; l > 0; --l ){
      for(m = 5; m > 0; --m){
      for(n = 5; n > 0; --n ){
      for(o = 5; o > 0; --o){
      for(p  = 5; p > 0; --p){
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

  sub();
  return 0;
}
