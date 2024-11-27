#include <stdio.h>


 
typedef struct node {
    char n_type;		 
    char n_flags;		 
    union {			 
	struct xlist {		 
	    struct node *xl_cdr;	 
	} n_xlist;
    } n_info;
} NODE;

void mark(ptr,this,prev)
  NODE *ptr;
  NODE *this,*prev;
{     
  NODE *tmp;
  if (ptr ==  (NODE *)0 )
	return;
  while ( 1 ) {
    if (prev ==  (NODE *)0 )
      break;
    if (prev->n_flags ) {
      tmp = prev;
      prev =  (( tmp )-> n_info.n_xlist.xl_cdr ) ;
      (( tmp )-> n_info.n_xlist.xl_cdr  = ( this )) ;
      this = tmp;
    }
  }
  return;
}

NODE p1,p2,p3,p4;
int main()
{

  NODE *px,*py,*pz;

  p1.n_type = 1;
  p2.n_type = 2;
  p3.n_type = 3;
  p4.n_type = 4;

  p1.n_flags = 1;
  p2.n_flags = 1;
  p3.n_flags = 1;
  p4.n_flags = 1;

  p1.n_info.n_xlist.xl_cdr = &p4;
  p2.n_info.n_xlist.xl_cdr = (NODE *)0;
  p3.n_info.n_xlist.xl_cdr = (NODE *)0;
  p4.n_info.n_xlist.xl_cdr = (NODE *)0;

  px = &p2;
  py = &p1;
  pz = &p3;
  mark(px,py,pz);
  
  printf("%d %d %d\n",px->n_type,py->n_type,pz->n_type);
}


