#include <stdio.h>

#include "sub.h"

int sub(int x, int y)
{
    printf("[%s]\n", __func__);
    return x-y;
}