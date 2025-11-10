#include <stddef.h>

template <typename T, size_t N>
class CompoundT<T[N]>
{
public:
  enum { IsPtrT    = 0,
	 IsRefT    = 0,
	 IsArrayT  = 1,
	 IsFuncT   = 0,
	 IsPtrMemT = 0
  };

  typedef T BaseT;
  typedef typename CompoundT<T>::BottomT BottomT;
  typedef CompoundT<void> ClassT;
};

template <typename T>
class CompoundT<T[]>
{
public:
  enum { IsPtrT    = 0,
	 IsRefT    = 0,
	 IsArrayT  = 1,
	 IsFuncT   = 0,
	 IsPtrMemT = 0
  };

  typedef T BaseT;
  typedef typename CompoundT<T>::BottomT BottomT;
  typedef CompoundT<void> ClassT;
};

template <typename T, typename C>
class CompoundT<T C::*>
{
public:
  enum { IsPtrT    = 0,
	 IsRefT    = 0,
	 IsArrayT  = 0,
	 IsFuncT   = 0,
	 IsPtrMemT = 1
  };

  typedef T BaseT;
  typedef typename CompoundT<T>::BottomT BottomT;
  typedef CompoundT<void> ClassT;
};
