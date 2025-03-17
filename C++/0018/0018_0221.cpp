



#include <locale>
#include <codecvt>
#include <cassert>

int main()
{
    {
        std::wstring_convert<std::codecvt_utf8<wchar_t> > myconv;
        std::wstring ws(1, L'\x40003');
        std::string bs = myconv.to_bytes(ws[0]);

	try{
	  bs = myconv.to_bytes(ws.data(), ws.data() + ws.size() + 100);
	} catch(...){
	  printf("ok\n");
	}
    }
}
