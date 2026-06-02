#include <stdio.h>
#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
extern signed short v3 (signed int, signed short);
extern signed short (*v4) (signed int, signed short);
extern unsigned short v5 (signed int, unsigned int, unsigned short, unsigned int);
extern unsigned short (*v6) (signed int, unsigned int, unsigned short, unsigned int);
extern signed char v7 (signed short, signed char, unsigned int, signed char);
extern signed char (*v8) (signed short, signed char, unsigned int, signed char);
extern unsigned char v9 (unsigned short, signed char, unsigned char, unsigned char);
extern unsigned char (*v10) (unsigned short, signed char, unsigned char, unsigned char);
extern unsigned char v11 (signed int, signed int);
extern unsigned char (*v12) (signed int, signed int);
extern signed int v13 (void);
extern signed int (*v14) (void);
extern unsigned short v15 (signed char, signed int, signed int);
extern unsigned short (*v16) (signed char, signed int, signed int);
extern unsigned int v17 (signed int);
extern unsigned int (*v18) (signed int);
unsigned char v19 (signed short);
unsigned char (*v20) (signed short) = v19;
extern unsigned char v21 (signed int, unsigned int);
extern unsigned char (*v22) (signed int, unsigned int);
extern signed short v23 (signed int);
extern signed short (*v24) (signed int);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
unsigned short v27 (unsigned char, signed int, unsigned int);
unsigned short (*v28) (unsigned char, signed int, unsigned int) = v27;
extern void v29 (signed char, signed int);
extern void (*v30) (signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 0;
signed short v32 = -4;
signed char v31 = -3;

unsigned short v27 (unsigned char v34, signed int v35, unsigned int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned short v39 = 5;
signed char v38 = -1;
unsigned int v37 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v19 (signed short v40)
{
history[history_index++] = (int)v40;
{
for (;;) {
unsigned char v43 = 3;
signed short v42 = -2;
unsigned char v41 = 5;
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
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
