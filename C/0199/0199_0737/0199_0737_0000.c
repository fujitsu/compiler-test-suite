#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (unsigned int);
extern signed int (*v2) (unsigned int);
extern unsigned short v3 (signed char, signed char, signed int, unsigned short);
extern unsigned short (*v4) (signed char, signed char, signed int, unsigned short);
extern signed int v7 (unsigned int, signed char, unsigned int);
extern signed int (*v8) (unsigned int, signed char, unsigned int);
extern signed int v9 (unsigned char);
extern signed int (*v10) (unsigned char);
unsigned short v11 (void);
unsigned short (*v12) (void) = v11;
extern unsigned short v13 (unsigned int, signed short);
extern unsigned short (*v14) (unsigned int, signed short);
extern signed short v15 (unsigned int);
extern signed short (*v16) (unsigned int);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern unsigned short v19 (signed char, signed int, unsigned char, signed short);
extern unsigned short (*v20) (signed char, signed int, unsigned char, signed short);
extern unsigned short v23 (signed short, unsigned char, unsigned char, unsigned char);
extern unsigned short (*v24) (signed short, unsigned char, unsigned char, unsigned char);
extern signed short v27 (unsigned int, signed char, unsigned int);
extern signed short (*v28) (unsigned int, signed char, unsigned int);
extern signed short v29 (signed short, signed short, signed char, signed short);
extern signed short (*v30) (signed short, signed short, signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 4;
unsigned int v32 = 1U;
signed short v31 = 2;

unsigned short v11 (void)
{
{
for (;;) {
signed short v36 = 0;
unsigned char v35 = 1;
signed short v34 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
unsigned int v39;
signed int v40;
v39 = 4U + 0U;
v40 = v1 (v39);
history[history_index++] = (int)v40;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
