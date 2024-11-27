#include <stdio.h>
int main()
{
  printf ("###  START ###\n");

  {
	static int ch=1;
	static int in =3,a;

	a = ch % in;
	if (a == 1)
	  printf("###      OK        ###\n");
	else
	  printf("###      NG   a=%d ###\n",a);
  }

  {
	static int ch=1;
	static short in =3,a;

	a = ch % in;
	if (a == 1)
	  printf("###      OK        ###\n");
	else
	  printf("###      NG   a=%d ###\n",a);
  }

  {
	static int ch=1;
	static char in =3,a;

	a = ch % in;
	if (a == 1)
	  printf("###      OK        ###\n");
	else
	  printf("###      NG   a=%d ###\n",a);
  }

  {
	static unsigned int ch=1;
	static int in =3,a;

	a = ch % in;
	if (a == 1)
	  printf("###      OK        ###\n");
	else
	  printf("###      NG   a=%d ###\n",a);
  }

  {
	static unsigned int ch=1;
	static short in =3,a;

	a = ch % in;
	if (a == 1)
	  printf("###      OK        ###\n");
	else
	  printf("###      NG   a=%d ###\n",a);
  }

  {
	static unsigned int ch=1;
	static char in =3,a;

	a = ch % in;
	if (a == 1)
	  printf("###      OK        ###\n");
	else
	  printf("###      NG   a=%d ###\n",a);
  }

  {
	static unsigned int ch=1;
	static unsigned int in =3,a;

	a = ch % in;
	if (a == 1)
	  printf("###      OK        ###\n");
	else
	  printf("###      NG   a=%d ###\n",a);
  }

  {
	static unsigned int ch=1;
	static unsigned short in =3,a;

	a = ch % in;
	if (a == 1)
	  printf("###      OK        ###\n");
	else
	  printf("###      NG   a=%d ###\n",a);
  }

  {
	static unsigned int ch=1;
	static unsigned char in =3,a;

	a = ch % in;
	if (a == 1)
	  printf("###      OK        ###\n");
	else
	  printf("###      NG   a=%d ###\n",a);
  }

  {
	static int ch=1;
	static unsigned int in =3,a;

	a = ch % in;
	if (a == 1)
	  printf("###      OK        ###\n");
	else
	  printf("###      NG   a=%d ###\n",a);
  }

  {
	static int ch=1;
	static unsigned short in =3,a;

	a = ch % in;
	if (a == 1)
	  printf("###      OK        ###\n");
	else
	  printf("###      NG   a=%d ###\n",a);
  }

  {
	static int ch=1;
	static unsigned char in =3,a;

	a = ch % in;
	if (a == 1)
	  printf("###      OK        ###\n");
	else
	  printf("###      NG   a=%d ###\n",a);
  }

  {
	static int ch=1;
	static unsigned char in =3,a;

	a = ch % 3;
	if (a == 1)
	  printf("###      OK        ###\n");
	else
	  printf("###      NG   a=%d ###\n",a);
  }

  printf ("###  END   ###\n");
}
