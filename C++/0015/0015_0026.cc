#include <stdio.h>

void Func00() {

  try {
    try {
    } catch (char c) {
    } catch (int) {
    }

    try {
    } catch (char) {

      try {
      } catch (...) {
      }
    }

  } catch (char*) {
  } catch (int* ip) {

    try {
    } catch (char) {
    }

    try {
    } catch (char) {
    }
  }

  try {
  } catch (double) {
  }
}

void Func22() {
  try{} catch(...) {}
}
int main() {
  printf("ok\n");
}
