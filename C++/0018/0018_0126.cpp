


#include<list>
#include <iostream>
int main() {
	{
        std::list<int> v1(3);
        std::list<int> v2(3);
        v1.splice(v1.begin(), v2); 
    }
}