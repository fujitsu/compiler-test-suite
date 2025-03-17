







#include <functional>

struct X{
    typedef std::function<void(X&)> callback_type;
    virtual ~X() {}
private:
    callback_type _cb;
};

int main()
{
}
