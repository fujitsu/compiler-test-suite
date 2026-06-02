#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern unsigned short v3 (unsigned short, unsigned char, unsigned char, signed char);
extern unsigned short (*v4) (unsigned short, unsigned char, unsigned char, signed char);
signed char v5 (void);
signed char (*v6) (void) = v5;
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern unsigned short v11 (unsigned int, unsigned char);
extern unsigned short (*v12) (unsigned int, unsigned char);
extern void v13 (void);
extern void (*v14) (void);
extern signed char v15 (unsigned char, signed char, signed short, unsigned char);
extern signed char (*v16) (unsigned char, signed char, signed short, unsigned char);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern signed short v21 (void);
extern signed short (*v22) (void);
extern signed int v23 (unsigned int, unsigned int, unsigned char, unsigned short);
extern signed int (*v24) (unsigned int, unsigned int, unsigned char, unsigned short);
signed short v25 (void);
signed short (*v26) (void) = v25;
extern void v27 (void);
extern void (*v28) (void);
extern unsigned short v29 (signed short, unsigned char, signed short);
extern unsigned short (*v30) (signed short, unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -2;
signed char v32 = 3;
signed char v31 = -4;

signed short v25 (void)
{
{
for (;;) {
unsigned int v36 = 6U;
unsigned short v35 = 1;
signed char v34 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (void)
{
{
for (;;) {
unsigned short v39 = 4;
signed short v38 = -2;
unsigned short v37 = 3;
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
signed short v42;
v42 = v1 ();
history[history_index++] = (int)v42;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
