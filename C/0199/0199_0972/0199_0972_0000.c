#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (unsigned int, unsigned int);
extern signed int (*v2) (unsigned int, unsigned int);
extern signed int v3 (signed int);
extern signed int (*v4) (signed int);
extern signed int v5 (unsigned int, unsigned short, signed int);
extern signed int (*v6) (unsigned int, unsigned short, signed int);
extern signed char v7 (unsigned int, unsigned char, signed int, signed short);
extern signed char (*v8) (unsigned int, unsigned char, signed int, signed short);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern void v13 (unsigned short, unsigned short);
extern void (*v14) (unsigned short, unsigned short);
extern signed int v15 (signed short, unsigned short, signed short);
extern signed int (*v16) (signed short, unsigned short, signed short);
extern signed short v19 (signed short, signed char, unsigned int);
extern signed short (*v20) (signed short, signed char, unsigned int);
extern signed int v21 (unsigned char, signed char, unsigned short, unsigned short);
extern signed int (*v22) (unsigned char, signed char, unsigned short, unsigned short);
unsigned int v23 (signed short);
unsigned int (*v24) (signed short) = v23;
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern signed char v27 (void);
extern signed char (*v28) (void);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -3;
unsigned char v32 = 4;
unsigned short v31 = 0;

unsigned int v23 (signed short v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned int v37 = 1U;
unsigned char v36 = 7;
signed int v35 = 0;
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
unsigned int v40;
unsigned int v41;
signed int v42;
v40 = 6U - 2U;
v41 = 7U - 3U;
v42 = v1 (v40, v41);
history[history_index++] = (int)v42;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
