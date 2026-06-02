#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
extern signed char v5 (signed char);
extern signed char (*v6) (signed char);
extern signed char v7 (unsigned char, unsigned char, unsigned char, signed short);
extern signed char (*v8) (unsigned char, unsigned char, unsigned char, signed short);
extern signed short v9 (unsigned char);
extern signed short (*v10) (unsigned char);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
unsigned char v13 (unsigned int, unsigned int, unsigned int);
unsigned char (*v14) (unsigned int, unsigned int, unsigned int) = v13;
extern signed short v15 (void);
extern signed short (*v16) (void);
signed short v17 (signed short);
signed short (*v18) (signed short) = v17;
extern unsigned char v19 (signed char, unsigned short, signed short);
extern unsigned char (*v20) (signed char, unsigned short, signed short);
extern signed char v21 (void);
extern signed char (*v22) (void);
extern unsigned short v23 (unsigned int, unsigned char, unsigned short);
extern unsigned short (*v24) (unsigned int, unsigned char, unsigned short);
extern unsigned char v25 (unsigned short, signed short);
extern unsigned char (*v26) (unsigned short, signed short);
extern signed char v27 (unsigned int, unsigned int, signed int, unsigned int);
extern signed char (*v28) (unsigned int, unsigned int, signed int, unsigned int);
extern void v29 (signed short, unsigned short, signed short, unsigned char);
extern void (*v30) (signed short, unsigned short, signed short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 1;
unsigned short v32 = 5;
signed char v31 = -4;

signed short v17 (signed short v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned char v37 = 0;
signed short v36 = -3;
unsigned int v35 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (unsigned int v38, unsigned int v39, unsigned int v40)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
unsigned short v43 = 7;
unsigned int v42 = 2U;
signed int v41 = -3;
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
signed char v46;
v46 = v1 ();
history[history_index++] = (int)v46;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
