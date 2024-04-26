#include <stdio.h>
#include <time.h>

int main(void){
#if __GLIBC_PREREQ(2, 17)
  struct timespec ts;
  timespec_get(&ts, TIME_UTC);

  char buff[1024];
  strftime(buff, sizeof(buff), "%D %T", gmtime(&ts.tv_sec));
  // printf("%s.%09ld [UTC]\n", buff, ts.tv_nsec);
#endif

  return 0;
}
