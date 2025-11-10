#include <cstdio>

int main()
{
#if defined(__STDC_HOSTED__)
  puts("__STDC_HOSTED__ is defined");
  printf("__STDC_HOSTED__: %d\n", __STDC_HOSTED__);
#else
  puts("__STDC_HOSTED__ is not defined");
#endif

#if defined(__STDC_VERSION__)
  puts("__STDC_VERSION__ is defined");
#else
  puts("__STDC_VERSION__ is not defined");
#endif

#if defined(__STDC_ISO_10646__)
  puts("__STDC_ISO_10646__ is defined");
  
#else
  puts("__STDC_ISO_10646__ is not defined");
#endif

  

}
