#include <stdio.h>
#include "sub.h"

int main(void)
{
    int x = 5, y = 3;
    printf("this is sub_compute example\n");
    printf("%d - %d = %d\n", x, y, sub(x, y));
    return 0;
}