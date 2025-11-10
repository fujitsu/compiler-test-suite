

#include <stdio.h>
#include <stdlib.h>

#ifdef ORIGINAL
int main() {
    unsigned char *validate_array;

    validate_array = (unsigned char *)malloc(64);
    if (validate_array == 0) {
	printf("FAILURE!\n");
	exit(1);
    }

    printf("SUCCESS\n");
    return 0;
}
#else
void sub3()
{
    unsigned char *validate_array;

    validate_array = (unsigned char *)malloc(64);
    if (validate_array == 0) {
	printf("FAILURE!\n");
	free(validate_array);
	exit(1);
    }

    printf("SUCCESS\n");
    free(validate_array);
}
#endif
