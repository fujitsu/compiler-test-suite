extern "C" void printf(char*,...);
template <class T> class TEMP{
};
template <class T> class TEMP2{
};
TEMP<int> obj; 
TEMP< TEMP2<int> > obj2; 
template <class T ,int i> class AA {
 public:
   class BB {};
   template <class T2> class CC {};
 };
AA<int,10> x1;
AA<char,1>::BB x2;
class DD{};
typedef int T1;
typedef short (*T2)[2];
typedef DD T3;
class c{ };
union u{ };
class A {
 public:
   class B{};
 };
struct B {};
union C{};
enum D{};

void func1(){
 int i=0;
 i++;
 if (i==1) {
  try {
   try {
    try {
     try {
      try {
       try {
        try {
         try {
          try {
           try {
            try {
             try {
              try {
               try {
                try {
                 try {
                  try {
                   try {
                    try {
                     try {
                      try {
                       try {
                        try {
                         try {
                          try {
                           try {
                            try {
                             try {
                              try {
                               try {
                                try {
                                 try {
                                  try {
                                   try {
                                    try {
                                     try {
                                      try {
                                       try {
                                        try {
                                         try {
                                          try {
                                           try {
                                            throw("test");
                                           }
                                           catch (int **){}
                                          }
                                          catch (int (*)[2]){}
                                         }
                                         catch (int(*&)()){}
                                        }
                                        catch (int(&)()){}
                                       }
                                       catch (int A::*){}
                                      }
                                      catch (int (*const *)()){}
                                     }
                                     catch (int const){}
                                    }
                                    catch (int (*const&)()){}
                                   }
                                   catch (int (*const)()){}
                                  }
                                  catch (int (*volatile *)()){}
                                 }
                                 catch (int volatile){}
                                }
                                catch (int (*volatile&)()){}
                               }
                               catch (int (*volatile)()){}
                              }
                              catch (TEMP<int>){}
                             }
                             catch (TEMP< TEMP2<int> >){}
                            }
                            catch (wchar_t){}
                           }
                           catch (long double){}
                          }
                          catch (A (*)[2][5]){}
                         }
                         catch (A (*)[2][3][4][5][6]){}
                        }
                        catch (D){}
                       }
                       catch (unsigned long *){}
                      }
                      catch (AA<int,10> *){}
                     }
                     catch (AA<char,1>::BB *){}
                    }
                    catch (T1 *){}
                   }
                   catch (T2 *){}
                  }
                  catch (T3 *){}
                 }
                 catch (int (*)(int(*)(A&))){}
                }
                catch (T1 (*)[2]){}
               }
               catch (unsigned char){}
              }
              catch (short){}
             }
             catch (unsigned int){}
            }
            catch (long){}
           }
           catch (long long){}
          }
          catch (unsigned long long){}
         }
         catch (float){}
        }
        catch (double){}
       }
       catch (bool){}
      }
      catch (signed short){}
     }
     catch (signed int){}
    }
    catch (signed long){}
   }
   catch (signed long long){}
  }
  catch (char const *){ }
 }

 if (i==0) {
  try {
  }
  catch (short *const){}
  try {
  }
  catch (unsigned short *volatile){}
  try {
  }
  catch (signed short *){}
  try {
  }
  catch (int *const volatile){}
  try {
  }
  catch (unsigned int const volatile *){}
  try {
  }
  catch (signed int *){}
  try {
  }
  catch (long * volatile){}
  try {
  }
  catch (unsigned long * const){}
  try {
  }
  catch (signed long *){}
  try {
  }
  catch (long long const *){}
  try {
  }
  catch (const unsigned long long int *){}
  try {
  }
  catch (signed long long *){}
  try {
  }
  catch (volatile float *){}
  try {
  }
  catch (const double volatile *){}
  try {
  }
  catch (long double const * volatile){}
  try {
  }
  catch (wchar_t *){}
  try {
  }
  catch (bool *){}
  try {
  }
  catch (char **){}
  try {
  }
  catch (signed char *const*){}
  try {
  }
  catch (unsigned char *volatile*){}
  try {
  }
  catch (short const *volatile*const *){}
  try {
  }
  catch (unsigned short ******){}
  try {
  }
  catch (int **const){}
  try {
  }
  catch (const unsigned int ***const){}
  try {
  }
  catch (long *const * volatile * const volatile){}
  try {
  }
  catch (unsigned long ***){}
  try {
  }
  catch (const long long ***){}
  try {
  }
  catch (volatile unsigned long long int ***){}
  try {
  }
  catch (float const **){}
  try {
  }
  catch (double **** volatile ***){}
  try {
  }
  catch (long double ****){}
  try {
  }
  catch (wchar_t **){}
  try {
  }
  catch (bool ***********){}
  try {
  }
  catch (char (*)[2]){}
  try {
  }
  catch (unsigned char (*)[10]){}
  try {
  }
  catch (short const (*)[2]){}
  try {
  }
  catch (unsigned short (*(*)[3])){}
  try {
  }
  catch (int (*(*const )[10])(int (*)[2])){}
  try {
  }
  catch (long  (**)[10]){}
  try {
  }
  catch (class A*){}
  try {
  }
  catch (B**){}
  try {
  }
  catch (union C *const**){}
  try {
  }
  catch (const D ****volatile**){}
  try {
  }
  catch (A (*)(void)){}
  try {
  }
  catch (const B  (*(*(*)[3])(short int,const float**))[2]){}
  try {
    throw(99);
  }
  catch (A::B *(*(*)(long int))[2][5]){}
 }
}
int main(){
  try {
    func1();
  }
  catch (int){
   printf("Exception Handling information block\n");
  }

  printf("ok\n");
}
