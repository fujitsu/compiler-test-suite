#include <csignal>
#include <iostream>
#include <string>
#include <atomic>

std::atomic<int> interrupted;

extern "C" void sigint(int sig){
  interrupted = 1;
}

int main(void){
  if(std::signal(SIGINT, sigint) == SIG_ERR){
    std::cerr << "Can not set signal handler" << std::endl;
  } else {
    unsigned long count = 0;


    if(!interrupted){
      std::cout << "ok" << std::endl;
    } else{
      std::cout << "ok" << std::endl;
    }
  }

  return 0;
}
