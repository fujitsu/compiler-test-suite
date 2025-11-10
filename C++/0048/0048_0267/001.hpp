template <typename T>
class CompoundT<T&>
{
public:
  enum { IsPtrT    = 0,
	 IsRefT    = 1,
	 IsArrayT  = 0,
	 IsFuncT   = 0,
	 IsPtrMemT = 0
  };

  typedef T BaseT;
  typedef typename CompoundT<T>::BottomT BottomT;
  typedef CompoundT<void> ClassT;
};

template <typename T>
class CompoundT<T*>
{
public:
  enum { IsPtrT    = 1,
	 IsRefT    = 0,
	 IsArrayT  = 0,
	 IsFuncT   = 0,
	 IsPtrMemT = 0
  };

  typedef T BaseT;
  typedef typename CompoundT<T>::BottomT BottomT;
  typedef CompoundT<void> ClassT;
};
