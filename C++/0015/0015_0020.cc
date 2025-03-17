#include <stdio.h>
int main() {
  try {
    try {
      throw 1;
    } catch (int) {
      throw;
    } catch (float) {
      printf("");
    }
  } catch (int) {
    printf("ok\n");
  } catch (float) {
    printf("");
  }
}
