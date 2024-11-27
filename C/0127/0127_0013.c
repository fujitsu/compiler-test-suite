#include <stdlib.h>
#include <stdio.h>
#include <math.h>

      struct tag3
      {
        float f401[5];
        float f402[5];
      };

      struct tag2
      {
        double d801[10];
        struct tag3 com2[5];
        double d802[10];
      };

      struct tag1
      {
        unsigned int u401;
        int          i401;
        long int     l401;
        float        f401;
        struct tag2 com;
      };
int sub02 (struct tag1 *p1, int *p3);
int sub01 (struct tag1 *p1);
int 
main (void)
    {
      struct tag1 st1[10],*ptr;
      int i,j,k,m;
      int i401[10];

      for(ptr=&st1[0],i=0;ptr<=&st1[9];ptr++,i++)
      {
        i401[i] = i;
        ptr->u401 = i+1;
        ptr->i401 = i+1;
        ptr->l401 = i+1;
        ptr->f401 = i+1;
        for(j=0;j<10;j++)
        {
          ptr->com.d801[j] = j;
          ptr->com.d802[j] = i;
        }
        for (k=0;k<5;k++)
          for (m=0;m<5;m++)
          {
            ptr->com.com2[k].f401[m] = 5*k+m;
            ptr->com.com2[k].f402[m] = 5*m+k;
          }
      }

      ptr = &st1[0];
      sub01(ptr);
      printf("\n ## test 1 ## \n");
      for(i=0;i<10;i++)
        printf(" %u %d %d %f \n",st1[i].u401,st1[i].i401,
                                 st1[i].l401,st1[i].f401);
      printf("\n ## test 1 st1.com ## \n");
      for(i=0;i<10;i++,printf("\n"))
        for(j=0;j<10;j++)
        {
          printf(" %g ",st1[i].com.d801[j]);
          printf(" %g ",st1[i].com.d802[j]);
        }
      printf("\n ## test 1 st1.com.com2 ## \n");
      for(i=0;i<10;i++,printf("\n"))
        for(k=0;k<5;k++)
        for(m=0;m<5;m++)
        {
          printf(" %g ",st1[i].com.com2[k].f401[m]);
          printf(" %g ",st1[i].com.com2[k].f402[m]);
        }

      ptr = &st1[0];
      sub02(ptr,i401);
      printf("\n ## test 2 ## \n");
      for(i=0;i<10;i++)
        printf(" %u %d %d %f \n",st1[i].u401,st1[i].i401,
                                 st1[i].l401,st1[i].f401);
      printf("\n ## test 2 st1.com ## \n");
      for(i=0;i<10;i++,printf("\n"))
        for(j=0;j<10;j++)
        {
          printf(" %g ",st1[i].com.d801[j]);
          printf(" %g ",st1[i].com.d802[j]);
        }
      printf("\n ## test 2 st1.com.com2 ## \n");
      for(i=0;i<10;i++,printf("\n"))
        for(k=0;k<5;k++)
        for(m=0;m<5;m++)
        {
          printf(" %g ",st1[i].com.com2[k].f401[m]);
          printf(" %g ",st1[i].com.com2[k].f402[m]);
        }
	exit(0);
    }

    int 
sub01 (struct tag1 *p1)
    {
      int i,j,k,m;
      for(i=0;i<5;i++,p1++)
        for(j=0;j<5;
            p1->com.com2[p1->i401/(p1->l401+1)].
                    f401[p1->i401/(p1->i401+p1->u401/(p1->l401+1))]
            = 100*i+10*j,
            p1->com.com2[((int)(p1->com.d801[p1->u401])+
                         (int)(p1->com.d801[(int)(p1->f401)]))/2-1].
                    f402[(int)(p1->com.d802[(int)(p1->f401)])-
                         (int)(p1->com.d802[p1->u401])/
                         (int)(p1->com.d801[p1->l401])]
            = 100*i+10*j,j++);
        return 0;
    }

    int 
sub02 (struct tag1 *p1, int *p3)
    {
      struct tag1 p2, *ppp;
      int i=9,j,k,m;
      p2.u401=i,p2.i401=i-1,p2.l401=i-2,p2.f401=i-3;
      for(j=0;j<10;p2.com.d801[j]=j,p2.com.d802[j]=(j-1)/2,j++)
        for(k=4;k>=0;k--)
          for(m=0;m<5;
          p2.com.com2[k].f401[m]=k,p2.com.com2[k].f402[m]=m,
          m++);

      for(ppp=p1,i=0;i<10;
        ppp->i401=p2.i401,ppp->u401=p2.u401,ppp->l401=p2.l401,ppp++,i++)
        for(j=0;j<10;ppp->com.d801[j]=p2.com.d802[j],ppp->com.d802[j]=p2.com.d801[j],j++)
          for(k=4;k>=0;k--)
            for(m=0;m<5;
              ppp->com.com2[k].f401[m] = p2.com.com2[k].f402[m] ,
              ppp->com.com2[k].f402[m] = p2.com.com2[k].f401[m] ,
            m++);

    }
