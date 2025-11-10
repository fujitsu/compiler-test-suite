#include "public3/004.h"

enum EA : char;
enum class EB;
enum struct EC;

namespace ns_test
{
    enum EA : char;
    enum class EB;
    enum struct EC;
}

class cls_test
{
public:
    enum EA : char;
    enum class EB;
    enum struct EC;
};

EA ea1;
EB eb1;
EC ec1;

ns_test::EA ea2;
ns_test::EB eb2;
ns_test::EC ec2;

cls_test::EA ea3;
cls_test::EB eb3;
cls_test::EC ec3;

enum EA : char { Male, Female };
enum class EB  { Red, Green, Blue };
enum struct EC { Dog, Cat, Cow };

enum ns_test::EA : char { Boy, Girl };
enum class ns_test::EB  { Red, Green, Blue };
enum struct ns_test::EC { Dog, Cat, Cow };

enum cls_test::EA : char { Friend, Stranger };
enum class cls_test::EB  { Red, Green, Blue };
enum struct cls_test::EC { Dog, Cat, Cow };

void test()
{
    ea1 = Female;
    eb1 = EB::Green;
    ec1 = EC::Cat;

    ea2 = ns_test::Girl;
    eb2 = ns_test::EB::Green;
    ec2 = ns_test::EC::Cat;

    ea3 = cls_test::Stranger;
    eb3 = cls_test::EB::Green;
    ec3 = cls_test::EC::Cat;
}

PASS_CASE_MAIN_FUNCTION
