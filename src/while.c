#include <stdio.h>

int main() {
  int array[] = { 1, 7, 4, 5, 9, 3, 5, 11, 6, 3, 4 };
  int i = 0;

  while (i < 10) {
    int current = array[i];
    if (current < 5) {
      i++;
      continue;
    }
    if (10 < current) {
      break;
    }
    printf("%d\n", current);
    i++;
  }

  return 0;
}
