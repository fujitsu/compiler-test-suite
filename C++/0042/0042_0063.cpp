

auto lambda = []()[[]]{};


void test_new_expr() {
    
    
}






void test_stmt(int x, int y) {
    [[]]x = y * 2; 
    
    [[]] {} 
    
    
    [[]] if (x > 0) y = x;
    [[]] if (x < 0) y = -x; else y = x;
    [[]] switch (x) { default: y = x; break; }
    
    
    [[]] while (x) x--;
    [[]] do { x++; } while ( x < 10);
    [[]] for (int i = 0; i < x; ++i) y++;
    int range[] = {1, 2, 3, 4, 5};
    [[]] for ([[]]int i : range) y++; 
    
    
    while (x--) {
        if (x % 2 == 0)
            [[]]continue;
        else
            [[]] break;
    }
    [[]] goto label;
label:
    [[]] return;
} 


using uint [[]] = unsigned int;


[[]] int sd;





int [[]] dss;


void test_tss() {
    int* p = new int[[]] [3] ;
    delete [] p;
}


void test_ttss() {
    []()->int[[]]{ return 1; }();
}


class [[]] ClassETS;


enum [[]] EnumEH { EnumEH_1, EnumEH_2 } EnumEH_ ;

enum [[]] EnumOED { EnumOED_1, EnumOED_2 } ;


namespace ns_test {}



int* [[]] * [[]] nd[[]] [32] [[]];


void paq() [[]];


int*[[]]po1;
int po__;
int&[[]]po2 = po__;


void pd([[]] int a);


[[]] void fd() {}


class [[]] ClassCH1 {};
class ClassCH2 {
    class [[]] : public ClassCH1 {};
};


class ClassMDcl {
    [[]] int member;
};







class ClassBSBase1 {};
class ClassBSBase2 {};
class ClassBSBase3 {};





void test_ed() {
    try {} catch ([[]] int e) {}
}

void test() {}

int main() {
    test();
}


