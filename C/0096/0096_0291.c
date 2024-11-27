#include <stdio.h>

int n = 10;
struct aaa {
  int first;
  int second;
  float  third;
  float  forth;
};

struct aaa * sub (struct aaa tmp[]) {
  int i;
  static struct aaa ans[10];

  for (i=0; i<n; ++i) {
    ans[i].first  = tmp[i].first  + tmp[i].second;
    ans[i].second = tmp[i].second - tmp[i].first;
    ans[i].third  = tmp[i].third  + tmp[i].forth;
    ans[i].forth  = tmp[i].forth  - tmp[i].third;
  }
  return ans;
}
int main() {
  int i;
  struct aaa tmp[10];
  struct aaa *ans;
  
  for (i=0; i<n; ++i) {
    tmp[i].first = i;
    tmp[i].second = i + 1;
    tmp[i].third = i + 2;
    tmp[i].forth = i + 3;
  }
  
  ans = sub(tmp);

  if (ans[3].first == 7 && ans[3].second == 1 &&
      ans[3].third == 11 && ans[3].forth == 1) {
    printf("OK\n");
  } else {
    printf("NG\n");
    printf("%d\n",ans[3].first);
    printf("%d\n",ans[3].second);
    printf("%f\n",ans[3].third);
    printf("%f\n",ans[3].forth);
  }
}
