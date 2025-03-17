#include <stdio.h>
int main() {
  try {
    try {
      throw 1;
    } catch (float) {
      printf("");
    } catch (int) {
      throw;
    }
  } catch (float) {
    printf("");
  } catch (int) {
    printf("ok\n");
  }
}
