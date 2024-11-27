#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int sw();
int sub(int a);
int fr();
int main()
{
	sw();
	fr();
exit (0);
}

int sw()
{
	int i;
	for(i=1;i<10;i++)
		sub(i);
}

int sub(a)
int a;
{
	switch(a)
	{
		case 1:goto a;
		case 2:goto b;
		case 3:goto c;
		case 4:goto d;
		case 5:goto e;
		case 6:goto f;
		case 7:goto g;
		case 8:goto h;
		case 9:goto i;
	}
	a:printf("1/9\n");return 0;
	b:printf("2/9\n");return 0;
	c:printf("3/9\n");return 0;
	d:printf("4/9\n");return 0;
	e:printf("5/9\n");return 0;
	f:printf("6/9\n");return 0;
	g:printf("7/9\n");return 0;
	h:printf("8/9\n");return 0;
	i:printf("9/9\n");return 0;
}

int fr()
{
	int i,j,k,l,m,n;

	for(i=0;i<10;i++)
		if(i==4)goto a;
	f:printf("2//6\n");
		for(j=0;j<10;j++)
			if(j==4)goto b;
	e:printf("4//6\n");
			for(k=0;k<10;k++)
				if(k==4)goto c;
	c:printf("5//6\n");
				for(l=0;l<10;l++)
					if(l==4)goto d;
	b:printf("3//6\n");
					for(m=0;m<10;m++)
						if(m==4)goto e;
	a:printf("1//6\n");
						for(n=0;n<10;n++)
							if(n==4)goto f;
	d:printf("6//6\n");
}
