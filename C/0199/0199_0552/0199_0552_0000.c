#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
extern void v3 (unsigned int);
extern void (*v4) (unsigned int);
extern void v5 (signed short, unsigned char, unsigned short);
extern void (*v6) (signed short, unsigned char, unsigned short);
extern unsigned int v7 (unsigned char, unsigned short, unsigned int);
extern unsigned int (*v8) (unsigned char, unsigned short, unsigned int);
unsigned short v9 (unsigned short, unsigned int);
unsigned short (*v10) (unsigned short, unsigned int) = v9;
extern unsigned int v11 (unsigned int, unsigned char, unsigned short, signed int);
extern unsigned int (*v12) (unsigned int, unsigned char, unsigned short, signed int);
extern unsigned short v13 (signed char);
extern unsigned short (*v14) (signed char);
extern signed char v15 (unsigned char, signed short);
extern signed char (*v16) (unsigned char, signed short);
extern void v17 (void);
extern void (*v18) (void);
extern signed int v21 (signed short, signed short);
extern signed int (*v22) (signed short, signed short);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern signed char v25 (unsigned short, signed short, signed char, signed int);
extern signed char (*v26) (unsigned short, signed short, signed char, signed int);
unsigned int v27 (signed char, signed int, signed int);
unsigned int (*v28) (signed char, signed int, signed int) = v27;
extern unsigned int v29 (unsigned int, signed int);
extern unsigned int (*v30) (unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -3;
signed char v32 = -4;
signed short v31 = -4;

unsigned int v27 (signed char v34, signed int v35, signed int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned char v39 = 6;
signed short v38 = 2;
unsigned short v37 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (unsigned short v40, unsigned int v41)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
signed char v44 = 2;
unsigned int v43 = 0U;
signed int v42 = 3;
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
unsigned int v47;
v47 = v1 ();
history[history_index++] = (int)v47;
}
} while (trace < 20);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
