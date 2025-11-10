template <typename T>
class IsFunctionT
{
private:
  typedef char One;
  typedef struct { char a[2]; } Two;
  template <typename U> static One test(...);
  template <typename U> static Two test(U (*)[1]);

public:
  enum { Yes = sizeof(IsFunctionT<T>::test<T>(0)) == 1 };
  enum { No = !Yes };
};

template <typename T>
class IsFunctionT<T&>
{
public:
  enum { Yes = 0 };
  enum { No = !Yes };
};

template <>
class IsFunctionT<void>
{
public:
  enum { Yes = 0 };
  enum { No = !Yes };
};

template <>
class IsFunctionT<void const>
{
public:
  enum { Yes = 0 };
  enum { No = !Yes };
};

template <>
class IsFunctionT<volatile void>
{
public:
  enum { Yes = 0 };
  enum { No = !Yes };
};

template <>
class IsFunctionT<const volatile void>
{
public:
  enum { Yes = 0 };
  enum { No = !Yes };
};

template <typename T>
class CompoundT
{
public:
  enum { IsPtrT    = 0,
	 IsRefT    = 0,
	 IsArrayT  = 0,
	 IsFuncT   = IsFunctionT<T>::Yes,
	 IsPtrMemT = 0
  };

  typedef T BaseT;
  typedef T BottomT;
  typedef CompoundT<void> ClassT;
};
