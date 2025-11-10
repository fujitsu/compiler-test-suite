#include "public3/004.h"

class cls_test
{
    int x, y, z;
public:
    void test(int y = 0)
    {
        y = 100;
        int z = 100;
        this->x = this->y = this->z = 0;
        
        
        [&]()mutable{
            this->x++;
            this->y++;
            this->z++;
            x++;
            y++;
            z++;
        }();
        assert(this->x == 2);
        assert(this->y == 1);
        assert(this->z == 1);
        assert(      x == 2);
        assert(      y == 101);
        assert(      z == 101);

        
        [=]()mutable{
            this->x++;
            this->y++;
            this->z++;
            x++;
            y++;
            z++;
        }();
        assert(this->x == 4);
        assert(this->y == 2);
        assert(this->z == 2);
        assert(      x == 4);
        assert(      y == 101);
        assert(      z == 101);

        
        [this, &y, &z]()mutable{
            this->x++;
            this->y++;
            this->z++;
            x++;
            y++;
            z++;
        }();
        assert(this->x == 6);
        assert(this->y == 3);
        assert(this->z == 3);
        assert(      x == 6);
        assert(      y == 102);
        assert(      z == 102);

        
        [this, y, z]()mutable{
            this->x++;
            this->y++;
            this->z++;
            x++;
            y++;
            z++;
        }();
        assert(this->x == 8);
        assert(this->y == 4);
        assert(this->z == 4);
        assert(      x == 8);
        assert(      y == 102);
        assert(      z == 102);
    }
};

void test()
{
    cls_test ct;
    ct.test();
}

PASS_CASE_MAIN_FUNCTION
