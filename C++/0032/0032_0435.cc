








#include <iostream>
#include <sstream>
#include <cstring>
#include <cstdio>

using namespace std;

int testPutChar()
{
  ostringstream ost;
  ost << (char) 97;
  string str = ost.str();
  if (0 == strcmp("a", str.c_str()))
    return 0;
  return 1;
}

int testPutSignedChar()
{
  ostringstream ost;
  ost << (signed char) 98;
  string str = ost.str();
  if (0 == strcmp("b", str.c_str()))
    return 0;
  return 1;
}

int testPutUnsignedChar()
{
  ostringstream ost;
  ost << (unsigned char) 99;
  string str = ost.str();
  if (0 == strcmp("c", str.c_str()))
    return 0;
  return 1;
}

int testPutShort()
{
  ostringstream ost;
  ost << (short) 97;
  string str = ost.str();
  if (0 == strcmp("97", str.c_str()))
    return 0;
  return 1;
}

int testPutSignedShort()
{
  ostringstream ost;
  ost << (signed short) 98;
  string str = ost.str();
  if (0 == strcmp("98", str.c_str()))
    return 0;
  return 1;
}

int testPutUnsignedShort()
{
  ostringstream ost;
  ost << (unsigned short) 99;
  string str = ost.str();
  if (0 == strcmp("99", str.c_str()))
    return 0;
  return 1;
}

int testPutInt()
{
  ostringstream ost;
  ost << (int) 97;
  string str = ost.str();
  if (0 == strcmp("97", str.c_str()))
    return 0;
  return 1;
}

int testPutSignedInt()
{
  ostringstream ost;
  ost << (signed int) 98;
  string str = ost.str();
  if (0 == strcmp("98", str.c_str()))
    return 0;
  return 1;
}

int testPutUnsignedInt()
{
  ostringstream ost;
  ost << (unsigned int) 99;
  string str = ost.str();
  if (0 == strcmp("99", str.c_str()))
    return 0;
  return 1;
}

int testPutLong()
{
  ostringstream ost;
  ost << (long) 97;
  string str = ost.str();
  if (0 == strcmp("97", str.c_str()))
    return 0;
  return 1;
}

int testPutSignedLong()
{
  ostringstream ost;
  ost << (signed long) 98;
  string str = ost.str();
  if (0 == strcmp("98", str.c_str()))
    return 0;
  return 1;
}

int testPutUnsignedLong()
{
  ostringstream ost;
  ost << (unsigned long) 99;
  string str = ost.str();
  if (0 == strcmp("99", str.c_str()))
    return 0;
  return 1;
}

int testPutLongLong()
{
  ostringstream ost;
  ost << (long long) 97;
  string str = ost.str();
  if (0 == strcmp("97", str.c_str()))
    return 0;
  return 1;
}

int testPutSignedLongLong()
{
  ostringstream ost;
  ost << (signed long long) 98;
  string str = ost.str();
  if (0 == strcmp("98", str.c_str()))
    return 0;
  return 1;
}

int testPutUnsignedLongLong()
{
  ostringstream ost;
  ost << (unsigned long long) 99;
  string str = ost.str();
  if (0 == strcmp("99", str.c_str()))
    return 0;
  return 1;
}

int testPutFloat()
{
  ostringstream ost;
  ost << (float) 97.1;
  string str = ost.str();
  if (0 == strcmp("97.1", str.c_str()))
    return 0;
  return 1;
}

int testPutDouble()
{
  ostringstream ost;
  ost << (double) 98.1;
  string str = ost.str();
  if (0 == strcmp("98.1", str.c_str()))
    return 0;
  return 1;
}

int testPutLongDouble()
{
  ostringstream ost;
  ost << (long double) 99.1;
  string str = ost.str();
  if (0 == strcmp("99.1", str.c_str()))
    return 0;
  return 1;
}

int testPut()
{
  int result = 0;
  if (0 != testPutChar())
  {
    puts("NG put char");
    result = 1;
  }
  if (0 != testPutSignedChar())
  {
    puts("NG put signed char");
    result = 1;
  }
  if (0 != testPutUnsignedChar())
  {
    puts("NG put unsigned char");
    result = 1;
  }
  if (0 != testPutShort())
  {
    puts("NG put short");
    result = 1;
  }
  if (0 != testPutSignedShort())
  {
    puts("NG put signed short");
    result = 1;
  }
  if (0 != testPutUnsignedShort())
  {
    puts("NG put unsigned short");
    result = 1;
  }
  if (0 != testPutInt())
  {
    puts("NG put int");
    result = 1;
  }
  if (0 != testPutSignedInt())
  {
    puts("NG put signed int");
    result = 1;
  }
  if (0 != testPutUnsignedInt())
  {
    puts("NG put unsigned int");
    result = 1;
  }
  if (0 != testPutLong())
  {
    puts("NG put long");
    result = 1;
  }
  if (0 != testPutSignedLong())
  {
    puts("NG put signed long");
    result = 1;
  }
  if (0 != testPutUnsignedLong())
  {
    puts("NG put unsigned long");
    result = 1;
  }
  if (0 != testPutLongLong())
  {
    puts("NG put long long");
    result = 1;
  }
  if (0 != testPutSignedLongLong())
  {
    puts("NG put signed long long");
    result = 1;
  }
  if (0 != testPutUnsignedLongLong())
  {
    puts("NG put signed long long");
    result = 1;
  }
  if (0 != testPutFloat())
  {
    puts("NG put float");
    result = 1;
  }
  if (0 != testPutDouble())
  {
    puts("NG put double");
    result = 1;
  }
  if (0 != testPutLongDouble())
  {
    puts("NG put long double");
    result = 1;
  }
  return result;
}

int main()
{
  int result1 = testPut();
  if (result1 == 0)
  {
    puts("OK");
  }
  else
  {
    puts("NG");
  }
}
