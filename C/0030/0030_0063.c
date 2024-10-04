#include  <stdio.h>
union  tag1  { int  a;};
union  tag2 { union tag1 b;};
int main()
{
 union tag2 c={{{255}}};
}

