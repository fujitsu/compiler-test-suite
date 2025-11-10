#ifndef _TYPET_HPP
#define _TYPET_HPP

#include "000.hpp"
#include "004.hpp"
#include "001.hpp"
#include "002.hpp"
#include "003.hpp"
#include "005.hpp"
#include "006.hpp"

template <typename T>
class TypeT
{
public:
  enum { IsFundaT  = IsFundaT<T>::Yes,
	 IsPtrT    = CompoundT<T>::IsPtrT,
	 IsRefT    = CompoundT<T>::IsRefT,
	 IsArrayT  = CompoundT<T>::IsArrayT,
	 IsFuncT   = CompoundT<T>::IsFuncT,
	 IsPtrMemT = CompoundT<T>::IsPtrMemT,
	 IsEnumT   = IsEnumT<T>::Yes,
	 IsClassT  = IsClassT<T>::Yes
  };
};

#endif
