#include <csignal>
#include <iostream>
#include <string>

volatile std::sig_atomic_t interrupted;

extern "C" void sigint(int sig){
  interrupted = 1;
}

int main(void){
  if(std::signal(SIGINT, sigint) == SIG_ERR){
    std::cerr << "Can not set signal handler" << std::endl;
  } else {
    unsigned long count = 0;
    
    if(! interrupted ){
      std::cout << "ok" << std::endl;
    } else {
      std::cout << "ng" << std::endl;      
    }
  }

  return 0;
}
