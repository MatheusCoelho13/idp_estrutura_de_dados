#include <stdio.h>

void swap(int* a, int* b) {
  int temporary;
  temporary = *a;
  * a = *b;
 * b = temporary;
}

int main (void) {
  int a,b;

  printf("Digite o valor de a:");
  scanf("%d",&a);

 printf("Digite o valor de b:");
 scanf("%d",&b);

 printf("\n Antes de trocar: a = %d, b = %d\n", a, b);

 swap(&a,&b);

 printf("\n Depois da troca: a = %d, b = %d\n", a, b);

 return 0;
  }