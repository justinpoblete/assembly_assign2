#include <stdio.h>
#include <stdint.h>

extern long int assign2();

int main(){

  long int return_code = 99;

  printf("%s", "This is Assignment 2 programmed by Justin Poblete \n");
  printf("%s", "This course is challenging, but I still hope to pass \n");
  return_code = assign2();
  printf("%s%ld%s\n","The main driver received this number: ",return_code,".\nMain will now return 0 to the operating system.\nBye");

  return 0;

}
