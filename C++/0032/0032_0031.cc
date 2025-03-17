#include <stdio.h>
class COMPARE {
public:
	operator COMPARE*(){
		return 0;
	}

	operator void*() {
		return 0;
	}

	int operator==(COMPARE*) {
		return 1;
	}

	int operator!=(COMPARE*) {
		return 4;
	}

	int operator<(COMPARE*) {
		return 7;
	}

	int operator>(COMPARE*) {
		return 10;
	}

	int operator<=(COMPARE*) {
		return 13;
	}

	int operator>=(COMPARE*) {
		return 16;
	}

};

class LOGIC {
 public:
	operator LOGIC*(){
		return 0;
	}

	operator int*() {
		return 0;
	}

	int operator&&(LOGIC*) {
		return 19;
	}

	int operator||(LOGIC*) {
		return 22;
	}

};

	int operator==(int*,COMPARE) {
		return 2;
	}
	int operator==(COMPARE,int*) {
		return 3;
	}

	int operator!=(int*,COMPARE) {
		return 5;
	}
	int operator!=(COMPARE,int*) {
		return 6;
	}

	int operator<(int*,COMPARE) {
		return 8;
	}
	int operator<(COMPARE,int*) {
		return 9;
	}

	int operator>(int*,COMPARE) {
		return 11;
	}
	int operator>(COMPARE,int*) {
		return 12;
	}

	int operator<=(int*,COMPARE) {
		return 14;
	}
	int operator<=(COMPARE,int*) {
		return 15;
	}

	int operator>=(int*,COMPARE) {
		return 17;
	}
	int operator>=(COMPARE,int*) {
		return 18;
	}

	int operator&&(int,LOGIC) {
		return 20;
	}
	int operator&&(LOGIC,int) {
		return 21;
	}

	int operator||(int,LOGIC) {
		return 23;
	}
	int operator||(LOGIC,int) {
		return 24;
	}
int main()
{
  COMPARE  comp;
  LOGIC    log;
  int     *p;
  int      i;

  if ((comp == comp) == 1)
  if ((p    == comp) == 2)
  if ((comp == p   ) == 3)
  if ((comp != comp) == 4)
  if ((p    != comp) == 5)
  if ((comp != p   ) == 6)
  if ((comp <  comp) == 7)
  if ((p    <  comp) == 8)
  if ((comp <  p   ) == 9)
  if ((comp >  comp) == 10)
  if ((p    >  comp) == 11)
  if ((comp >  p   ) == 12)
  if ((comp <= comp) == 13)
  if ((p    <= comp) == 14)
  if ((comp <= p   ) == 15)
  if ((comp >= comp) == 16)
  if ((p    >= comp) == 17)
  if ((comp >= p   ) == 18)
  if ((log  && log ) == 19)
  if ((i    && log ) == 20)
  if ((log  && i   ) == 21)
  if ((log  || log ) == 22)
  if ((i    || log ) == 23)
  if ((log  || i   ) == 24)
    printf("ok\n");
  else printf("ng  if ((comp == comp) == 1) \n");
  else printf("ng  if ((p    == comp) == 2) \n");
  else printf("ng  if ((comp == p   ) == 3) \n");
  else printf("ng  if ((comp != comp) == 4) \n");
  else printf("ng  if ((p    != comp) == 5) \n");
  else printf("ng  if ((comp != p   ) == 6) \n");
  else printf("ng  if ((comp <  comp) == 7) \n");
  else printf("ng  if ((p    <  comp) == 8) \n");
  else printf("ng  if ((comp <  p   ) == 9) \n");
  else printf("ng  if ((comp >  comp) == 10) \n");
  else printf("ng  if ((p    >  comp) == 11) \n");
  else printf("ng  if ((comp >  p   ) == 12) \n");
  else printf("ng  if ((comp <= comp) == 13) \n");
  else printf("ng  if ((p    <= comp) == 14) \n");
  else printf("ng  if ((comp <= p   ) == 15) \n");
  else printf("ng  if ((comp >= comp) == 16) \n");
  else printf("ng  if ((p    >= comp) == 17) \n");
  else printf("ng  if ((comp >= p   ) == 18) \n");
  else printf("ng  if ((log  && log ) == 19) \n");
  else printf("ng  if ((i    && log ) == 20) \n");
  else printf("ng  if ((log  && i   ) == 21) \n");
  else printf("ng  if ((log  || log ) == 22) \n");
  else printf("ng  if ((i    || log ) == 23) \n");
  else printf("ng  if ((log  || i   ) == 24) \n");
}
