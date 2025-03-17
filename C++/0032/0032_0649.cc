#include <iostream>
using namespace std;

void foo()
{
throw 'a';
}
int main()
{
try {
    foo();
    }
catch (const char cc)
    {
    cout << "catch const char: " << cc << endl;
    }
catch (...)
    {
    cout << "catch ..." << endl;
    }

return 0;
}
