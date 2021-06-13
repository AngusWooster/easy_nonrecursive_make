#include <stdio.h>
#include "sub.h"

int main(int argc, char *argv[])
{
    int x = 5, y = 3;
    printf("example: %s\n", argv[0]);
    printf("%d - %d = %d\n", x, y, sub(x, y));
    return 0;
}