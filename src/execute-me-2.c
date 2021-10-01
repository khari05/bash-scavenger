#include <stdio.h>
#include <string.h>

int main(int argc, char const *argv[])
{
  char start[] = "DNCE/1/AJO2F/Z\bektg\"{mwpqgnd\"32\"rmklvq#\b";
  for (int i = 0; i < strlen(start); i++)
  {
    start[i] = start[i] ^ 2;
  }

  printf("%s", start);
  return 0;
}

// run after compiling: echo "maybe look into file permissions" >> execute-me-2 && echo "ls -l can help with that" >> execute-me-2
