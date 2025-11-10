#include <cstdio>
#include <cstring>

template <typename LoopBody>
void forall(int begin, int end, LoopBody loopBody)
{
  for (int i = begin; i < end; ++i) {
    loopBody(i);
  }
}

void sub1()
{
  int *a = new int[10];
  int *b = new int[10];
  int *c = new int[10];

  std::memset(a, 0, 10 * sizeof(int));

  forall(0, 10,
	 [&] (int i) -> void {
	   b[i] = i + 1;
	   c[i] = i + 3;
	 });

  forall(0, 10,
	 [&] (int i) -> void {
	   a[i] = b[i] + c[i];
	 });
  
  forall(0, 10,
	 [=] (int i) -> void {
	   std::printf("%d\n", a[i]);
	 });

  delete a, b, c;
}
