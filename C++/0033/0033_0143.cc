
template <class T, class Distance> struct random_access_iterator {};

template <class T, class Distance> 
int
iterator_category(const random_access_iterator<T, Distance>&) {
    return 1;
}

template <class InputIterator, class Distance>
inline void distance(InputIterator first, InputIterator last, Distance& n) {
#pragma omp parallel
   iterator_category(first);
}

class iterator : public random_access_iterator<int ,int> {  }first,last;

#include <stdio.h>
int main(){ unsigned int n;  distance(first, last, n);
 puts("ok"); 
}

