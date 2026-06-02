#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (unsigned int, unsigned short, signed char, unsigned short);
extern unsigned char (*v2) (unsigned int, unsigned short, signed char, unsigned short);
extern unsigned int v3 (signed int, unsigned short);
extern unsigned int (*v4) (signed int, unsigned short);
extern signed int v5 (signed int, unsigned short, unsigned short, unsigned char);
extern signed int (*v6) (signed int, unsigned short, unsigned short, unsigned char);
extern unsigned int v7 (unsigned short, signed char);
extern unsigned int (*v8) (unsigned short, signed char);
extern signed short v9 (unsigned short, signed char, signed short, unsigned short);
extern signed short (*v10) (unsigned short, signed char, signed short, unsigned short);
extern signed short v11 (signed short, unsigned char);
extern signed short (*v12) (signed short, unsigned char);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern unsigned char v17 (signed int, unsigned char);
extern unsigned char (*v18) (signed int, unsigned char);
extern void v19 (unsigned short, signed char, signed char, signed char);
extern void (*v20) (unsigned short, signed char, signed char, signed char);
extern unsigned int v21 (signed int);
extern unsigned int (*v22) (signed int);
extern signed char v23 (signed char, unsigned short, unsigned int);
extern signed char (*v24) (signed char, unsigned short, unsigned int);
signed char v25 (void);
signed char (*v26) (void) = v25;
extern signed int v27 (void);
extern signed int (*v28) (void);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 1;
signed char v32 = 2;
signed char v31 = -4;

signed char v25 (void)
{
{
for (;;) {
unsigned short v36 = 2;
signed short v35 = -3;
signed char v34 = 2;
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
unsigned short v40;
signed char v41;
unsigned short v42;
unsigned char v43;
v39 = 0U - 5U;
v40 = 7 + 2;
v41 = v32 + v31;
v42 = 2 - 1;
v43 = v1 (v39, v40, v41, v42);
history[history_index++] = (int)v43;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
