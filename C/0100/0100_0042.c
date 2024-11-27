#include <stdio.h>

#define ROTATION_NUM 2
#define ELEMENT_NUM 100
#define ANSWER 2.0f

struct node_type20 {
  int leaf[ROTATION_NUM]; 
};
struct node_type19 {
  struct node_type20 node20[ROTATION_NUM]; 
};
struct node_type18 {
  struct node_type19 node19[ROTATION_NUM]; 
};
struct node_type17 {
  struct node_type18 node18[ROTATION_NUM]; 
};
struct node_type16 {
  struct node_type17 node17[ROTATION_NUM]; 
};
struct node_type15 {
  struct node_type16 node16[ROTATION_NUM]; 
};
struct node_type14 {
  struct node_type15 node15[ROTATION_NUM]; 
};
struct node_type13 {
  struct node_type14 node14[ROTATION_NUM]; 
};
struct node_type12 {
  struct node_type13 node13[ROTATION_NUM]; 
};
struct node_type11 {
  struct node_type12 node12[ROTATION_NUM]; 
};
struct node_type10 {
  struct node_type11 node11[ROTATION_NUM]; 
};
struct node_type9 {
  struct node_type10 node10[ROTATION_NUM]; 
};
struct node_type8 {
  struct node_type9 node9[ROTATION_NUM]; 
};
struct node_type7 {
  struct node_type8 node8[ROTATION_NUM]; 
};
struct node_type6 {
  struct node_type7 node7[ROTATION_NUM]; 
};
struct node_type5 {
  struct node_type6 node6[ROTATION_NUM]; 
};
struct node_type4 {
  struct node_type5 node5[ROTATION_NUM]; 
};
struct node_type3 {
  struct node_type4 node4[ROTATION_NUM]; 
};
struct node_type2 {
  struct node_type3 node3[ROTATION_NUM]; 
};
struct node_type {
  struct node_type2 node2[ROTATION_NUM]; 
} node1[ROTATION_NUM];

void sub_017_dim(int pi,
	      int pj,
	      int pk,
	      int pl,
	      int pm,
	      int pn)
{
  int a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u;
  
  for(a=0;a<ROTATION_NUM; ++a) {
  for(b=0;b<ROTATION_NUM; ++b) {
  for(c=0;c<ROTATION_NUM; ++c) {
  for(d=0;d<ROTATION_NUM; ++d) {
  for(e=0;e<ROTATION_NUM; ++e) {
  for(f=0;f<ROTATION_NUM; ++f) {
  for(g=0;g<ROTATION_NUM; ++g) {
  for(h=0;h<ROTATION_NUM; ++h) {
  for(i=0;i<ROTATION_NUM; ++i) {
  for(j=0;j<ROTATION_NUM; ++j) {
  for(k=0;k<ROTATION_NUM; ++k) {
  for(l=0;l<ROTATION_NUM; ++l) {
  for(m=0;m<ROTATION_NUM; ++m) {
  for(n=0;n<ROTATION_NUM; ++n) {
  for(o=0;o<ROTATION_NUM; ++o) {
  for(p=0;p<ROTATION_NUM; ++p) {
  for(q=0;q<ROTATION_NUM; ++q) {
  for(r=0;r<ROTATION_NUM; ++r) {
  for(s=0;s<ROTATION_NUM; ++s) {
  for(t=0;t<ROTATION_NUM; ++t) {
  for(u=0;u<ROTATION_NUM; ++u) {
    node1[a+pi+pj+pk+pl+pn].node2[b].node3[c].node4[d].node5[e].node6[f].node7[g].node8[h].node9[i].node10[j].node11[k].node12[l].node13[m].node14[n].node15[o].node16[p].node17[q].node18[r-pn+pl-pk-pj-pi].node19[s].node20[t].leaf[u] = 2;
  } 
  } 
  } 
  } 
  } 
  } 
  } 
  } 
  } 
  } 
  } 
  } 
  } 
  } 
  } 
  } 
  } 
  } 
  } 
  } 
  } 

}


int main( void ) {
  double result=0;
  int a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u;

  int pi,pj,pk,pl,pm,pn;

  pi=pj=pk=pl=pm=pn=0;
  
  
  printf("%s \n","initialization");
  for(a=0;a<ROTATION_NUM; ++a) {
  for(b=0;b<ROTATION_NUM; ++b) {
  for(c=0;c<ROTATION_NUM; ++c) {
  for(d=0;d<ROTATION_NUM; ++d) {
  for(e=0;e<ROTATION_NUM; ++e) {
  for(f=0;f<ROTATION_NUM; ++f) {
  for(g=0;g<ROTATION_NUM; ++g) {
  for(h=0;h<ROTATION_NUM; ++h) {
  for(i=0;i<ROTATION_NUM; ++i) {
  for(j=0;j<ROTATION_NUM; ++j) {
  for(k=0;k<ROTATION_NUM; ++k) {
  for(l=0;l<ROTATION_NUM; ++l) {
  for(m=0;m<ROTATION_NUM; ++m) {
  for(n=0;n<ROTATION_NUM; ++n) {
  for(o=0;o<ROTATION_NUM; ++o) {
  for(p=0;p<ROTATION_NUM; ++p) {
  for(q=0;q<ROTATION_NUM; ++q) {
  for(r=0;r<ROTATION_NUM; ++r) {
  for(s=0;s<ROTATION_NUM; ++s) {
  for(t=0;t<ROTATION_NUM; ++t) {
  for(u=0;u<ROTATION_NUM; ++u) {
    node1[a].node2[b].node3[c].node4[d].node5[e].node6[f].node7[g].node8[h].node9[i].node10[j].node11[k].node12[l].node13[m].node14[n].node15[o].node16[p].node17[q].node18[r].node19[s].node20[t].leaf[u] = 1;
  } 
  } 
  } 
  } 
  } 
  } 
  } 
  } 
  } 
  } 
  } 
  } 
  } 
  } 
  } 
  } 
  } 
  } 
  } 
  } 
  } 

  
  pi=pj=0;
  printf("%s \n","Main body of processing");
  sub_017_dim(pi, pj, pk, pl, pm, pn);
  
  
  
  printf("%s \n","check on result");
  for(a=0;a<ROTATION_NUM; ++a) {
  for(b=0;b<ROTATION_NUM; ++b) {
  for(c=0;c<ROTATION_NUM; ++c) {
  for(d=0;d<ROTATION_NUM; ++d) {
  for(e=0;e<ROTATION_NUM; ++e) {
  for(f=0;f<ROTATION_NUM; ++f) {
  for(g=0;g<ROTATION_NUM; ++g) {
  for(h=0;h<ROTATION_NUM; ++h) {
  for(i=0;i<ROTATION_NUM; ++i) {
  for(j=0;j<ROTATION_NUM; ++j) {
  for(k=0;k<ROTATION_NUM; ++k) {
  for(l=0;l<ROTATION_NUM; ++l) {
  for(m=0;m<ROTATION_NUM; ++m) {
  for(n=0;n<ROTATION_NUM; ++n) {
  for(o=0;o<ROTATION_NUM; ++o) {
  for(p=0;p<ROTATION_NUM; ++p) {
  for(q=0;q<ROTATION_NUM; ++q) {
  for(r=0;r<ROTATION_NUM; ++r) {
  for(s=0;s<ROTATION_NUM; ++s) {
  for(t=0;t<ROTATION_NUM; ++t) {
  for(u=0;u<ROTATION_NUM; ++u) {
    result = node1[a].node2[b].node3[c].node4[d].node5[e].node6[f].node7[g].node8[h].node9[i].node10[j].node11[k].node12[l].node13[m].node14[n].node15[o].node16[p].node17[q].node18[r].node19[s].node20[t].leaf[u];

  } 
  } 
  } 
  } 
  } 
  } 
  } 
  } 
  } 
  } 
  } 
  } 
  } 
  } 
  } 
  } 
  } 
  } 
  } 
  } 
  } 


  if( (result - ANSWER) == 0 ) {
    printf("%s\n", "ok");
  } else {
    printf("%s: \n", "ng");
    printf("Correct Answer: %lf \n", ANSWER);
    printf("Execution Result: %lf \n", result);
  }
}
