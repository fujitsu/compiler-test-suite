#include <iostream>

template <int Size, int Depth> struct EratosthenesFirstPrime;
template <int N> struct SquareRoot;

template <int N, int Size, int Depth> struct EratosthenesB {
  enum {
    PrevIsPrime = EratosthenesB<N, Size, Depth - 1>::IsPrime,
    FirstPrime = EratosthenesFirstPrime<Size, Depth - 1>::Ans,
    End = EratosthenesFirstPrime<Size, Depth - 1>::End,

    IsPrime = (PrevIsPrime != -1)     ? PrevIsPrime
              : End                   ? 1
              : (N == FirstPrime)     ? 1
              : (N % FirstPrime == 0) ? 0
                                      : -1
  };
};
template <int Size, int Depth> struct EratosthenesB<1, Size, Depth> {
  enum { IsPrime = 0 };
};

template <int N, int Size> struct EratosthenesB<N, Size, 0> {
  enum { IsPrime = -1 };
};

template <int N, int Size> struct Eratosthenes {
  enum { IsPrime = EratosthenesB<N, Size, SquareRoot<Size>::Ans>::IsPrime };
};

template <int N, int M> struct SquareRootB {
  enum { Ans = M * M <= N ? M : SquareRootB<N, M - 1>::Ans };
};

template <int N> struct SquareRootB<N, 1> {
  enum { Ans = 1 };
};

template <int N> struct SquareRoot {
  enum { Ans = SquareRootB<N, N>::Ans };
};

template <int Size, int Depth, int N> struct EratosthenesFirstPrimeB {
  enum {
    Ans = (EratosthenesB<N, Size, Depth>::IsPrime == -1)
              ? N
              : EratosthenesFirstPrimeB<Size, Depth, N + 1>::Ans
  };
};
template <int Size, int Depth>
struct EratosthenesFirstPrimeB<Size, Depth, Size> {
  enum { Ans = Size - 1 };
};

template <int Size, int Depth> struct EratosthenesFirstPrime {
  enum {
    Ans = EratosthenesFirstPrimeB<
        Size, Depth, EratosthenesFirstPrime<Size, Depth - 1>::Ans + 1>::Ans,
    End = (Ans > SquareRoot<Size>::Ans)
  };
};
template <int Size> struct EratosthenesFirstPrime<Size, 0> {
  enum { Ans = 2, End = 0 };
};

int main() {

  if (!Eratosthenes<13, 64>::IsPrime) {
    std::cout << "NG" << std::endl;
  }

  std::cout << "OK" << std::endl;
  return 0;
}
