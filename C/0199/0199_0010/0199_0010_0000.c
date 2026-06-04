#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern void v3 (unsigned int, signed short, signed char);
extern void (*v4) (unsigned int, signed short, signed char);
extern unsigned short v5 (unsigned int);
extern unsigned short (*v6) (unsigned int);
unsigned short v7 (signed char);
unsigned short (*v8) (signed char) = v7;
unsigned int v9 (signed short, unsigned short, signed short, signed int);
unsigned int (*v10) (signed short, unsigned short, signed short, signed int) = v9;
extern signed char v11 (signed int, signed short, unsigned char, unsigned int);
extern signed char (*v12) (signed int, signed short, unsigned char, unsigned int);
extern signed char v13 (signed int, unsigned short, signed short, unsigned int);
extern signed char (*v14) (signed int, unsigned short, signed short, unsigned int);
extern void v15 (signed char, unsigned char, signed short);
extern void (*v16) (signed char, unsigned char, signed short);
extern signed short v17 (unsigned short, signed char, signed int);
extern signed short (*v18) (unsigned short, signed char, signed int);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern unsigned int v21 (unsigned char, signed short);
extern unsigned int (*v22) (unsigned char, signed short);
extern unsigned short v23 (signed short, signed short, unsigned short, unsigned int);
extern unsigned short (*v24) (signed short, signed short, unsigned short, unsigned int);
extern unsigned short v27 (signed int, unsigned char, unsigned int);
extern unsigned short (*v28) (signed int, unsigned char, unsigned int);
extern void v29 (signed short, unsigned int, signed char);
extern void (*v30) (signed short, unsigned int, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 2U;
unsigned char v32 = 2;
unsigned int v31 = 0U;

unsigned int v9 (signed short v34, unsigned short v35, signed short v36, signed int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned short v40 = 3;
unsigned int v39 = 2U;
signed char v38 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (signed char v41)
{
history[history_index++] = (int)v41;
{
for (;;) {
signed short v44 = 0;
signed char v43 = 1;
unsigned short v42 = 1;
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
unsigned char v47;
v47 = v1 ();
history[history_index++] = (int)v47;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
