#include <stdio.h>
#include <string.h>

int main(int argc, char const *argv[])
{
  char start[] = "DNCE/0/F2V/7N67J\bektg\"{mwpqgnd\"7\"rmklvq#\b";
  for (int i = 0; i < strlen(start); i++)
  {
    start[i] = start[i] ^ 2;
  }

  printf("%s", start);
  return 0;
}

// run after compiling: echo "this isn't exactly a text file" >> execute-me
