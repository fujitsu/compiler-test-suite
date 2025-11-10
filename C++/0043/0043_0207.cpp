#include <thread>
#include <mutex>
#include <atomic>

#include <csignal>
#include <cassert>

std::atomic<bool> ab(false);
std::mutex        mu;


void signal_handler1(int) {
    assert(ab == false);
}
void test_lock_free1() {
    mu.lock();
    ab = false;
    while (!ab.is_lock_free());   
    raise(SIGINT);
    mu.unlock();
}
void test1() {
    signal(SIGINT, signal_handler1);
    std::thread th(test_lock_free1);    
    th.join();
}


void signal_handler2(int) {
    ab = true;
}
void test_lock_free2() {
    mu.lock();
    while (!ab.is_lock_free());
    raise(SIGINT);
    mu.unlock();
    assert(ab == true);
}
void test2() {
    signal(SIGINT, signal_handler2);
    std::thread th(test_lock_free2);
    th.join();
}

void test(){
        test1();
        test2();
}
int main() {
    test();
    return 0;
}