#include <stdio.h>

void guessNumber(int guess) {
  int num = 555;

  if (guess < num) {
    printf("Your guess is too low.\n");
    return;
  }
  if (guess > num) {
    printf("Your guess is too high.\n");
    return;
  }

  printf("Correct. You guessed it!\n");
}

int main() {
  guessNumber(500);
  guessNumber(600);
  guessNumber(555);
}
