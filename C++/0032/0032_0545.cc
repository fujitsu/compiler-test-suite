typedef void SIG_FUNC_TYP(int);
typedef SIG_FUNC_TYP *SIG_TYP;

typedef void COMPLETE_SIG_FUNC_TYP(int, char*);
typedef COMPLETE_SIG_FUNC_TYP *COMPLETE_SIG_TYP;

extern "C" {
	SIG_TYP signal(int, SIG_TYP);
	SIG_TYP sigset(int, SIG_TYP);
}

inline COMPLETE_SIG_TYP signal(int s, COMPLETE_SIG_TYP f)
{
	return (COMPLETE_SIG_TYP)signal(s, (SIG_TYP)f);
}
#if !defined(__linux__) && !defined(__GSP__)
inline COMPLETE_SIG_TYP sigset(int s, COMPLETE_SIG_TYP f)
{
	return (COMPLETE_SIG_TYP)sigset(s, (SIG_TYP)f);
}
#endif

void func1(int i) { }
void func2(int i, char *s) { }

#include <stdio.h>
int main()
{
  signal(1,&func1);
  signal(1,&func2);
#if !defined(__linux__) && !defined(__GSP__)
  sigset(1,&func1);
  sigset(1,&func2);
#endif

  puts("ok");  
}
