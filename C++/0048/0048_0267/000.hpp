template <typename T>
class IsFundaT
{
public:
  enum { Yes = 0, No = 1 };
};

#define DEF_FUNDA_TYPE(T)   \
template <>                 \
class IsFundaT<T>           \
{                           \
public:                     \
  enum { Yes = 1, No = 0 }; \
}

DEF_FUNDA_TYPE(void);

DEF_FUNDA_TYPE(bool);
DEF_FUNDA_TYPE(char);
DEF_FUNDA_TYPE(signed char);
DEF_FUNDA_TYPE(unsigned char);
DEF_FUNDA_TYPE(wchar_t);

DEF_FUNDA_TYPE(signed short);
DEF_FUNDA_TYPE(unsigned short);
DEF_FUNDA_TYPE(signed int);
DEF_FUNDA_TYPE(unsigned int);
DEF_FUNDA_TYPE(signed long);
DEF_FUNDA_TYPE(unsigned long);
DEF_FUNDA_TYPE(signed long long);
DEF_FUNDA_TYPE(unsigned long long);

DEF_FUNDA_TYPE(float);
DEF_FUNDA_TYPE(double);
DEF_FUNDA_TYPE(long double);

#undef DEF_FUNDA_TYPE
