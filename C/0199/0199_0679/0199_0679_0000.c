#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (unsigned char, unsigned char);
extern signed char (*v2) (unsigned char, unsigned char);
extern unsigned char v3 (signed char, signed short, unsigned short);
extern unsigned char (*v4) (signed char, signed short, unsigned short);
extern unsigned char v5 (unsigned int, unsigned char, signed char, signed short);
extern unsigned char (*v6) (unsigned int, unsigned char, signed char, signed short);
extern signed int v7 (void);
extern signed int (*v8) (void);
extern unsigned int v9 (signed char);
extern unsigned int (*v10) (signed char);
extern signed int v11 (signed short, signed char);
extern signed int (*v12) (signed short, signed char);
extern signed short v13 (signed int);
extern signed short (*v14) (signed int);
extern unsigned short v15 (unsigned short);
extern unsigned short (*v16) (unsigned short);
unsigned short v21 (void);
unsigned short (*v22) (void) = v21;
extern void v25 (signed char, unsigned char, signed char, unsigned int);
extern void (*v26) (signed char, unsigned char, signed char, unsigned int);
extern signed int v27 (signed short, signed short, signed char, unsigned char);
extern signed int (*v28) (signed short, signed short, signed char, unsigned char);
extern unsigned char v29 (signed char, unsigned int, signed char, unsigned int);
extern unsigned char (*v30) (signed char, unsigned int, signed char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 7;
unsigned int v32 = 3U;
signed short v31 = 3;

unsigned short v21 (void)
{
{
for (;;) {
signed short v36 = -1;
unsigned char v35 = 7;
unsigned int v34 = 0U;
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
unsigned char v39;
unsigned char v40;
signed char v41;
v39 = 5 + 5;
v40 = v33 + 7;
v41 = v1 (v39, v40);
history[history_index++] = (int)v41;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
