#ifndef VECTOR_H
#define VECTOR_H

#include<iostream>
#include <cstdlib>

using namespace std;

template<class T>
class Vector
{ public:
  typedef T* iterator;
  typedef T& reference;

  iterator begin()  { return array; }
  iterator end()    { return array+current_size; }
  int  size()       { return current_size; }
  int  capacity()   { return array_size; }
  
  void push_back(const T  &x);
  
  Vector(int vsize=0, const T& v=T())
    {   array_size   = vsize;
      current_size = vsize;
      array        = new T[array_size+1];     
      for(int i= 0; i<vsize; i++) array[i] = v;
    }

  
  ~Vector()
    {   delete [] array;
    }

  
  reference operator[](int index) { return array[index]; }

  
  
  reference at(int index)
  {   if( size() <= index )
      {   cerr << "error" << endl;
	std::exit(1);
      }
    return array[index];
  }


 private:
  void resize(int size);
  iterator array;
  int current_size;
  int array_size;
};

template<class T> void Vector<T>::push_back(const T &x)
{   if(current_size >= array_size)  resize( size() + 10 );
  array[current_size+1] = array[current_size];
  array[current_size]   = x;
  current_size++;
}
template<class T> void Vector<T>::resize(int size)
{   iterator tmp  = new T[size+1];
  iterator tmp2 = tmp;
  iterator itr  = begin();
  for(; itr!=end(); itr++,tmp++)  *tmp = *itr;
  delete [] array;
  array = tmp2;
  array_size = size;
}

#endif
