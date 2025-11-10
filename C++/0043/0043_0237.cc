#include <iostream>
#include <memory>
using namespace std;

int main() {

    auto ps =  get_pointer_safety();
    if (ps == pointer_safety::relaxed) {
        cout << "relaxed" << endl;
    }
    
    int *a = new int;
    declare_reachable(a);

    undeclare_reachable(a);
    delete a;

    return 0;
}
