#include <stdio.h>

class Resource {
public:
    virtual void ref() const {;}
    virtual void unref() const { printf("ng \n"); }

    static void ref(const Resource*) {;}
    static void unref(const Resource*) { printf("ok\n"); }

    virtual void Reference() const { ref(); }
    virtual void Unreference() const { unref(); }
};

static inline void Unref(const Resource* r) { Resource::unref(r); }
int main()
{
  Unref (0);
}
