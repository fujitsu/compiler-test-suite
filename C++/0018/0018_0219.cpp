

#include <locale>
#include <codecvt>
#include <cassert>
#include <iostream>
int main() {
    std::wstring_convert<std::codecvt_utf8<wchar_t>> myconv;
    std::string bs("\xF1\x80\x80\x83");

    try{
      std::wstring ws = myconv.from_bytes(bs.data(), bs.data() + bs.size() + 100);
    } catch(...){
      printf("ok\n");
    }
}
