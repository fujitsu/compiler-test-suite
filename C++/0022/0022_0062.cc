#include <cstdio>
#include <string>
#include <vector>

class null_exception_translator {};

template <class Translator> struct TransitionTest {};

typedef std::string ActionDescription();
typedef ActionDescription *ActionDescriptionPtr;
typedef std::vector<ActionDescriptionPtr> ActionDescriptionSequence;
typedef void Action(ActionDescriptionSequence &);
typedef Action *ActionPtr;

template <class State> void ExitFn(ActionDescriptionSequence &sequence) {}

template <ActionPtr pAction> void Throw(ActionDescriptionSequence &sequence) {}

const int arrayLength = 30;
typedef ActionPtr ActionArray[arrayLength];

template <class MostDerived> struct InnermostDefault {};

template <class M> struct S11 : InnermostDefault<S11<M>> {};

template <class M> void TestTransitions(M &machine) {
  ActionArray c1Throw2 = {
      &::Throw<&::ExitFn<S11<M>>>,
  };
}

int main(int, char *[]) {
  TransitionTest<null_exception_translator> null_machine;
  TestTransitions(null_machine);

  printf("test ok\n");

  return 0;
}
