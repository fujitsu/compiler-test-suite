

#include <stdio.h>
#include "000.h"

int __target = 1;

static int f  __attribute__ ((weakref("__target")));

int main(void)
{
	header("001_weakref", "weakref");
	f++;
	ichck(1, 2, f, "weakref");
	header("001_weakref", "weakref");
}

