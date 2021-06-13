#include <stdio.h>

#include "3.h"

#define STR1(x) #x
#define STR(x) STR1(x)

#define TEST(x) x

int main(void)
{
    printf("addr f3(%p)\n", f3);
    printf("mr -f "STR(ANGUS)"\n");
    return 0;
}