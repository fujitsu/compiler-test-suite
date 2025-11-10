int foo()
{
  enum incomplete;

  enum incomplete 
  {
    test1 = 0,
    test2
  };

  return test2;
}
