













#include <stdio.h>

class time {
 public:
  int hour, min, sec;
  time(){}
  time(int h, int m=0, int s=0 ){ hour = h; min = m; sec = s; }
  friend time operator+(const time&, const time&);
  friend int  operator==(const time&, const time&);
};

time operator+(const time& a, const time& b)
{
  time x = a;

  if( ( x.sec += b.sec ) >= 60 ) { x.sec -= 60; x.min++; }
  if( ( x.min += b.min ) >= 60 ) { x.min -= 60; x.hour++; }
  x.hour += b.hour;
  return x;
}

int operator==(const time& a, const time& b)
{
  return ( a.hour == b.hour && a.min == b.min && a.sec == b.sec );
}
int main()
{
  time x(11, 59, 59), y(0, 0, 1), z(12, 0, 0), a;

  a = x+y;
  if( a == z )
    printf("ok\n");
  else
    printf("ng\n");
}
