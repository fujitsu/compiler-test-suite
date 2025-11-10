template <typename R>
class CompoundT<R()>
{
public:
  enum { IsPtrT    = 0,
	 IsRefT    = 0,
	 IsArrayT  = 0,
	 IsFuncT   = 1,
	 IsPtrMemT = 0
  };

  typedef R BaseT;
  typedef R BottomT;
  typedef CompoundT<void> ClassT;
};

template <typename R, typename P1>
class CompoundT<R(P1)>
{
public:
  enum { IsPtrT    = 0,
	 IsRefT    = 0,
	 IsArrayT  = 0,
	 IsFuncT   = 1,
	 IsPtrMemT = 0
  };

  typedef R BaseT;
  typedef R BottomT;
  typedef CompoundT<void> ClassT;
};

template <typename R, typename P1>
class CompoundT<R(P1, ...)>
{
public:
  enum { IsPtrT    = 0,
	 IsRefT    = 0,
	 IsArrayT  = 0,
	 IsFuncT   = 1,
	 IsPtrMemT = 0
  };

  typedef R BaseT;
  typedef R BottomT;
  typedef CompoundT<void> ClassT;
};
