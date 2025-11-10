template <typename T>
class IsClassT
{
public:
  enum { Yes = IsFundaT<T>::No &&
               IsEnumT<T>::No &&
	       !CompoundT<T>::IsPtrT    &&
               !CompoundT<T>::IsRefT    &&
	       !CompoundT<T>::IsArrayT  &&
	       !CompoundT<T>::IsPtrMemT &&
	       !CompoundT<T>::IsFuncT
  };

  enum { No = !Yes };
	 
};
