







#include <iostream>
using namespace std;

struct A {
  int a;
  void func(){}
};
int main()
{
  float i = 0;
  float j = 0;
  float &ri = i;
  float &rj = j;
  int A::*mp0 = 0;
  int A::*mp = &A::a;
  void (A::*mpf0)() = 0;
  void (A::*mpf)() = &A::func;
  int t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15,t16,t17,t18;

  t1 = mp0 && mp;
  t2 = mp && mp0;
  t3 = mp && (&A::a);
  t4 = mp && mpf0;
  t5 = mp && (&A::func); 
  t6 = mp && (&A::func);
  t7 = mp && 0;
  t8 = mp && 1;
  t9 = mp && ri;

  t10 = mpf0 && mpf;
  t11 = mpf && mpf0;
  t12 = mpf && (&A::a);
  t13 = mpf && mp0;
  t14 = mpf && (&A::func); 
  t15 = mpf && (&A::func);
  t16 = mpf && 0;
  t17 = mpf && 1;
  t18 = mpf && ri;
  
  if (t1 == 0 && t2 == 0 && t3 == 1 && t4 == 0 && t5 == 1 &&
      t6 == 1 && t7 == 0 && t8 == 1 && t9 == 0 && t10 == 0 &&
      t11 == 0 && t12 == 1 && t13 == 0 && t14 == 1 && t15 == 1 &&
      t16 == 0 && t17 == 1 && t18 == 0)
    cout << "ok\n";
  else {
    cout << "ng\n"; 
    cout << t1 << t2 << t3 << t4 << t5 << t6 << t7 << t8 << t9 << t10 
         << t11 << t12 << t13 << t14 << t15 << t16 << t17 << t18 << '\n';
  }

}
