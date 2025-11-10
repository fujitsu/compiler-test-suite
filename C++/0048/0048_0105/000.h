

class C1{
  public:
    template <typename T>
    T add(T a1, T a2){
      return a1 + a2;
    }

    template <typename U>
    U sub(U a1, U a2);
};

template<>
double C1::sub<double>(double a1, double a2){
  return a1 - a2;
}

