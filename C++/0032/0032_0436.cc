







#include <cstdio>
#include <iostream>
#include <sstream>
using namespace std;

int testGetChar()
{
  string str("A!");
  istringstream ist(str);
  char c;
  ist >> c;
  if (c == 'A')
    return 0;
  return 1;
}

int testGetSignedChar()
{
  string str("B#");
  istringstream ist(str);
  signed char c;
  ist >> c;
  if (c == 'B')
    return 0;
  return 1;
}

int testGetUnsignedChar()
{
  string str("C$");
  istringstream ist(str);
  unsigned char c;
  ist >> c;
  if (c == 'C')
    return 0;
  return 1;
}

int testGetShort()
{
  string str("32767%");
  istringstream ist(str);
  short x;
  ist >> x;
  if (x == 32767)
    return 0;
  return 1;
}

int testGetSignedShort()
{
  string str("-32768&");
  istringstream ist(str);
  short x;
  ist >> x;
  if (x == (-32768))
    return 0;
  return 1;
}

int testGetUnsignedShort()
{
  string str("65535(");
  istringstream ist(str);
  unsigned short x;
  ist >> x;
  if (x == 65535)
    return 0;
  return 1;
}

int testGetInt()
{
  string str("2147483647)");
  istringstream ist(str);
  int x;
  ist >> x;
  if (x == 2147483647)
    return 0;
  return 1;
}

int testGetSignedInt()
{
  string str("-2147483648*");
  istringstream ist(str);
  signed int x;
  ist >> x;
  if (x == (-2147483648))
    return 0;
  return 1;
}

int testGetUnsignedInt()
{
  string str("4294967295+");
  istringstream ist(str);
  unsigned int x;
  ist >> x;
  if (x == 4294967295)
    return 0;
  return 1;
}

int testGetLong()
{
  string str("9223372036854775807-");
  istringstream ist(str);
  long x;
  ist >> x;
  if (x == 9223372036854775807L)
    return 0;
  return 1;
}

int testGetSignedLong()
{
  string str("-9223372036854775807/");
  istringstream ist(str);
  signed long x;
  ist >> x;
  if (x == (-9223372036854775807L))
    return 0;
  return 1;
}

int testGetUnsignedLong()
{
  string str("18446744073709551615:");
  istringstream ist(str);
  unsigned long x;
  ist >> x;
  if (x == 18446744073709551615UL)
    return 0;
  return 1;
}

int testGetLongLong()
{
  string str("9223372036854775807;");
  istringstream ist(str);
  long long x;
  ist >> x;
  if (x == 9223372036854775807LL)
    return 0;
  return 1;
}

int testGetSignedLongLong()
{
  string str("-9223372036854775807<");
  istringstream ist(str);
  signed long long x;
  ist >> x;
  if (x == (-9223372036854775807LL))
    return 0;
  return 1;
}

int testGetUnsignedLongLong()
{
  string str("18446744073709551615=");
  istringstream ist(str);
  unsigned long long x;
  ist >> x;
  if (x == 18446744073709551615ULL)
    return 0;
  return 1;
}

int testGetFloat()
{
  string str("1175494350822287507968.0>");
  istringstream ist(str);
  float x;
  ist >> x;
  if (x == 1175494350822287507968.0f)
    return 0;
  return 1;
}

int testGetDouble()
{
  string str("22250738585072013830903.0?");
  istringstream ist(str);
  double x;
  ist >> x;
  if (x == 22250738585072013830903.0)
    return 0;
  return 1;
}

int testGetLongDouble()
{
  string str("3362103143112093506262677817321752603.0@");
  istringstream ist(str);
  long double x;
  ist >> x;
  if (x == 3362103143112093506262677817321752603.0L)
    return 0;
  return 1;
}

int testGet()
{
  int result = 0;
  if (0 != testGetChar())
  {
    puts("NG get char");
    result = 1;
  }
  if (0 != testGetSignedChar())
  {
    puts("NG get signed char");
    result = 1;
  }
  if (0 != testGetUnsignedChar())
  {
    puts("NG get unsigned char");
    result = 1;
  }
  if (0 != testGetShort())
  {
    puts("NG get short");
    result = 1;
  }
  if (0 != testGetSignedShort())
  {
    puts("NG get signed short");
    result = 1;
  }
  if (0 != testGetUnsignedShort())
  {
    puts("NG get unsigned short");
    result = 1;
  }
  if (0 != testGetInt())
  {
    puts("NG get int");
    result = 1;
  }
  if (0 != testGetSignedInt())
  {
    puts("NG get signed int");
    result = 1;
  }
  if (0 != testGetUnsignedInt())
  {
    puts("NG get unsigned int");
    result = 1;
  }
  if (0 != testGetLong())
  {
    puts("NG get long");
    result = 1;
  }
  if (0 != testGetSignedLong())
  {
    puts("NG get signed long");
    result = 1;
  }
  if (0 != testGetUnsignedLong())
  {
    puts("NG get unsigned long");
    result = 1;
  }
  if (0 != testGetLongLong())
  {
    puts("NG get long long");
    result = 1;
  }
  if (0 != testGetSignedLongLong())
  {
    puts("NG get signed long long");
    result = 1;
  }
  if (0 != testGetUnsignedLongLong())
  {
    puts("NG get unsigned long long");
    result = 1;
  }
  if (0 != testGetFloat())
  {
    puts("NG get float");
    result = 1;
  }
  if (0 != testGetDouble())
  {
    puts("NG get double");
    result = 1;
  }
  if (0 != testGetLongDouble())
  {
    puts("NG get long double");
    result = 1;
  }
  return result;
}

int main()
{
  int result1 = testGet();
  if (result1 == 0)
  {
    puts("OK");
  }
  else
  {
    puts("NG");
  }
}
