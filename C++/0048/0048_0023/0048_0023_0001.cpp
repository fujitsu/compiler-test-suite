#include <iostream>

void sub1()
{
  const wchar_t s1[] = "test1" L"test2";
  const wchar_t s2[] = L"test3" "test4";

  std::wcout << s1 << std::endl;
  std::wcout << s2 << std::endl;
}
