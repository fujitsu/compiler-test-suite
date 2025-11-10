#pragma once
#ifdef PRAGMA_ONCE_2
# error PRAGMA_ONCE_2 is defined!
#else
# define PRAGMA_ONCE_2
#endif

_Pragma(L"once");  

int flag_l = 1;