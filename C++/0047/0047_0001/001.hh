class CBase {
public: virtual ~CBase();
};
class CSub1 : public CBase {};
class CSub2 : public CBase {};

void func(CBase *p);
void func1();
void func2();
void func3();
