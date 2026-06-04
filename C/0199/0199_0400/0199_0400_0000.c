#include <stdio.h>
#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
extern signed int v3 (unsigned char, signed char);
extern signed int (*v4) (unsigned char, signed char);
extern signed int v5 (unsigned int, unsigned int, signed short, unsigned char);
extern signed int (*v6) (unsigned int, unsigned int, signed short, unsigned char);
signed short v7 (void);
signed short (*v8) (void) = v7;
extern unsigned int v9 (unsigned short, unsigned int, signed char);
extern unsigned int (*v10) (unsigned short, unsigned int, signed char);
extern unsigned char v11 (unsigned short, unsigned short, unsigned short);
extern unsigned char (*v12) (unsigned short, unsigned short, unsigned short);
extern signed short v13 (signed short, unsigned short);
extern signed short (*v14) (signed short, unsigned short);
extern signed char v15 (unsigned char, signed char);
extern signed char (*v16) (unsigned char, signed char);
extern unsigned int v17 (signed short, signed int);
extern unsigned int (*v18) (signed short, signed int);
extern signed short v21 (signed char, signed char);
extern signed short (*v22) (signed char, signed char);
extern signed short v23 (signed int);
extern signed short (*v24) (signed int);
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
extern signed int v29 (signed short, signed char);
extern signed int (*v30) (signed short, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 7;
unsigned int v32 = 6U;
unsigned short v31 = 0;

signed short v7 (void)
{
{
for (;;) {
unsigned char v36 = 3;
signed short v35 = -1;
unsigned short v34 = 6;
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
v1 ();
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
