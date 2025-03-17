













#include <stdio.h>

class time {
 public:
  int hour, min, sec;
  time(int, int, int);
};

 time::time(int h, int m, int s)
{
  hour = h;
  min  = m;
  sec  = s;
}
int main()
{
  time *tp = new time(12, 0, 0);

  if ( tp->hour == 12 && tp->min == 0 && tp->sec == 0 )
    printf("ok\n");
  else 
    printf("ng\n");

  delete tp;
} 
