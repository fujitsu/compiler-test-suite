







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
  int t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t20,
      t21,t22,t23,t24,t25,t26,t27,t28,t29,t30,t31,t32;
      
  t1 = mp0 || mp;
  t2 = mp || mp0;
  t3 = mp || (&A::a);
  t4 = mp || mpf0;
  t5 = mp || (&A::func); 
  t6 = mp || (&A::func);
  t7 = mp || 0;
  t8 = mp || 1;
  t9 = mp || ri;

  t10 = mpf0 || mpf;
  t11 = mpf || mpf0;
  t12 = mpf || (&A::a);
  t13 = mpf || mp0;
  t14 = (&A::func) || mpf; 
  t15 = (&A::func) || mpf;
  t16 = mpf || 0;
  t17 = mpf || 1;
  t18 = mpf || ri;
  
  t19 = (&A::func) || mp; 
  t20 = (&A::func) || mp;
  t21 = (&A::func) || mp0; 
  t22 = (&A::func) || mp0;
  t23 = mp0 || (&A::func); 
  t24 = mp0 || (&A::func);
  t25 = (&A::func) || mpf0; 
  t26 = (&A::func) || mpf0;
  t27 = mpf0 || (&A::func); 
  t28 = mpf0 || (&A::func);

  t29 = mp0 || mp0;
  t30 = mp0 || mpf0;
  t31 = mpf0 || mpf0;
  t32 = mpf0 || mp0;

  if (t22 == 1 && t23 == 1 && t24 == 1 && t25 == 1 &&
      t26 == 1 && t27 == 1 && t28 == 1)
    cout << "ok\n";
  else {
    cout << "ng\n"; 
    cout << t22 << t23 << t24 << t25 << t26 << t27 << t28 << '\n';
  }

}
