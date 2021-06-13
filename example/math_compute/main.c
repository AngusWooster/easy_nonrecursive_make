#include <stdio.h>
#include "sub.h"
#include "add.h"

int main(int argc, char *argv[])
{
    int x = 5, y = 3;
    printf("example: %s\n", argv[0]);
    printf("%d - %d = %d\n", x, y, sub(x, y));
    printf("%d + %d = %d\n", x, y, add(x, y));
    return 0;
}