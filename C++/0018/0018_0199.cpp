





#include <sstream>
#include <cassert>
#include <unistd.h> 

std::string get_temp_file_name()
{
    std::string Name;
    int FD = -1; 
    do {
        Name = "libcxx.XXXXXX";
        FD = mkstemp(&Name[0]);
        if (FD == -1 && errno == EINVAL) {
            perror("mkstemp");
            abort();
        }   
    } while (FD == -1);
    close(FD);
    return Name;
}

int main()
{
    {
        std::stringstream ss0(" 123 456 ");
        std::stringstream ss(std::move(ss0));
        assert(ss.rdbuf() != 0);
        assert(ss.good());
        assert(ss.str() == " 123 456 ");
        int i = 0;
        ss >> i;
        assert(i == 123);
        ss >> i;
        assert(i == 456);
        ss << i << ' ' << 123;
        assert(ss.str() == "456 1236 ");
    }
    {
        std::wstringstream ss0(L" 123 456 ");
        std::wstringstream ss(std::move(ss0));
        assert(ss.rdbuf() != 0);
        assert(ss.good());
        assert(ss.str() == L" 123 456 ");
        int i = 0;
        ss >> i;
        assert(i == 123);
        ss >> i;
        assert(i == 456);
        ss << i << ' ' << 123;
        assert(ss.str() == L"456 1236 ");
    }
}
