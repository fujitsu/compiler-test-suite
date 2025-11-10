#include "public1/004.h"

enum Color : char { Red, Green, Blue };
enum class Animal : char { Dog, Cat, Pig };
enum struct Job : char { Manager, Worker };

namespace ns_test
{
    enum Color : char { Red, Green, Blue };
    enum class Animal : char { Dog, Cat, Pig };
    enum struct Job : char { Manager, Worker };
}

class cls_test
{
public:
    enum Color : char { Red, Green, Blue };
    enum class Animal : char { Dog, Cat, Pig };
    enum struct Job : char { Manager, Worker };
};

void test()
{
    {
        Color   color = Green;
        Animal animal = Animal::Cat;
        Job       job = Job::Worker;
    }
    {
        ns_test::Color   color = ns_test::Green;
        ns_test::Animal animal = ns_test::Animal::Cat;
        ns_test::Job       job = ns_test::Job::Worker;
    }
    {
        cls_test::Color   color = cls_test::Green;
        cls_test::Animal animal = cls_test::Animal::Cat;
        cls_test::Job       job = cls_test::Job::Worker;
    }
}

PASS_CASE_MAIN_FUNCTION
