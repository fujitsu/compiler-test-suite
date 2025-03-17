struct SG {}sgobj;

class CG : public SG {
 public:
  struct CSG {
  }csgobj;
}cgobj;

union UG {}ugobj;

inline long		SG::*func1(long,...){ return 0; }
inline short		SG::*func2(...){ return 0; }
inline bool		CG::*func3(bool, bool CG::*){ return 0; }
inline wchar_t		CG::*func4(wchar_t,...){ return 0; }
inline unsigned int	CG::CSG::*func5(...){ return 0; }
inline float		CG::CSG::*func6(float, float CG::CSG::*){ return 0; }
inline long double	UG::*func7(long double, ...){ return 0; }
inline long long	UG::*func8(...){ return 0; }

struct SG1 {
  long		SG::*func1(long,...);
  short		SG::*func2(...);
  bool		CG::*func3(bool, bool CG::*);
  wchar_t	CG::*func4(wchar_t,...);
  unsigned int	CG::CSG::*func5(...);
  float		CG::CSG::*func6(float, float CG::CSG::*);
  long double	UG::*func7(long double, ...);
  long long	UG::*func8(...);
}sg1obj;
inline long		SG::*SG1::func1(long,...){ return 0; }
inline short		SG::*SG1::func2(...){ return 0; }
inline bool		CG::*SG1::func3(bool, bool CG::*){ return 0; }
inline wchar_t		CG::*SG1::func4(wchar_t,...){ return 0; }
inline unsigned int	CG::CSG::*SG1::func5(...){ return 0; }
inline float		CG::CSG::*SG1::func6(float, float CG::CSG::*){ return 0; }
inline long double	UG::*SG1::func7(long double, ...){ return 0; }
inline long long	UG::*SG1::func8(...){ return 0; }

class CG1 {
 public:
  long		SG::*func1(long,...);
  short		SG::*func2(...);
  bool		CG::*func3(bool, bool CG::*);
  wchar_t	CG::*func4(wchar_t,...);
  unsigned int	CG::CSG::*func5(...);
  float		CG::CSG::*func6(float, float CG::CSG::*);
  long double	UG::*func7(long double, ...);
  long long	UG::*func8(...);
}cg1obj;
inline long		SG::*CG1::func1(long,...){ return 0; }
inline short		SG::*CG1::func2(...){ return 0; }
inline bool		CG::*CG1::func3(bool, bool CG::*){ return 0; }
inline wchar_t		CG::*CG1::func4(wchar_t,...){ return 0; }
inline unsigned int	CG::CSG::*CG1::func5(...){ return 0; }
inline float		CG::CSG::*CG1::func6(float, float CG::CSG::*){ return 0; }
inline long double	UG::*CG1::func7(long double, ...){ return 0; }
inline long long	UG::*CG1::func8(...){ return 0; }

union UG1 {
  long		SG::*func1(long,...);
  short		SG::*func2(...);
  bool		CG::*func3(bool, bool CG::*);
  wchar_t	CG::*func4(wchar_t,...);
  unsigned int	CG::CSG::*func5(...);
  float		CG::CSG::*func6(float, float CG::CSG::*);
  long double	UG::*func7(long double, ...);
  long long	UG::*func8(...);
}ug1obj;
inline long		SG::*UG1::func1(long,...){ return 0; }
inline short		SG::*UG1::func2(...){ return 0; }
inline bool		CG::*UG1::func3(bool, bool CG::*){ return 0; }
inline wchar_t		CG::*UG1::func4(wchar_t,...){ return 0; }
inline unsigned int	CG::CSG::*UG1::func5(...){ return 0; }
inline float		CG::CSG::*UG1::func6(float, float CG::CSG::*){ return 0; }
inline long double	UG::*UG1::func7(long double, ...){ return 0; }
inline long long	UG::*UG1::func8(...){ return 0; }

#include <stdio.h>
int main(){
  puts("ok");
}
