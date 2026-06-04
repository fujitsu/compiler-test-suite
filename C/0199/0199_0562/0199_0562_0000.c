#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
extern unsigned short v3 (unsigned short);
extern unsigned short (*v4) (unsigned short);
extern signed char v5 (unsigned int);
extern signed char (*v6) (unsigned int);
extern unsigned short v7 (unsigned char, unsigned char);
extern unsigned short (*v8) (unsigned char, unsigned char);
extern unsigned char v9 (unsigned int);
extern unsigned char (*v10) (unsigned int);
extern unsigned char v11 (signed char, signed char, signed int, unsigned short);
extern unsigned char (*v12) (signed char, signed char, signed int, unsigned short);
unsigned short v13 (signed int);
unsigned short (*v14) (signed int) = v13;
extern void v17 (signed int, signed int);
extern void (*v18) (signed int, signed int);
signed int v19 (signed char, signed int, signed short, unsigned int);
signed int (*v20) (signed char, signed int, signed short, unsigned int) = v19;
extern signed char v21 (unsigned int, unsigned int, signed char, signed short);
extern signed char (*v22) (unsigned int, unsigned int, signed char, signed short);
extern signed short v23 (void);
extern signed short (*v24) (void);
extern unsigned char v25 (unsigned int, signed int, signed short, unsigned int);
extern unsigned char (*v26) (unsigned int, signed int, signed short, unsigned int);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern unsigned char v29 (unsigned char, signed short, unsigned int, signed short);
extern unsigned char (*v30) (unsigned char, signed short, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -2;
unsigned char v32 = 1;
unsigned char v31 = 3;

signed int v19 (signed char v34, signed int v35, signed short v36, unsigned int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned char v40 = 7;
unsigned int v39 = 5U;
unsigned char v38 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v13 (signed int v41)
{
history[history_index++] = (int)v41;
{
for (;;) {
unsigned char v44 = 0;
signed short v43 = 3;
signed char v42 = -4;
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
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
