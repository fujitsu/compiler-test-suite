#include <stdio.h>
#include <stdlib.h>
extern void v1 (signed char, unsigned char);
extern void (*v2) (signed char, unsigned char);
extern unsigned int v3 (unsigned short);
extern unsigned int (*v4) (unsigned short);
signed short v5 (signed int, signed char, signed int);
signed short (*v6) (signed int, signed char, signed int) = v5;
extern signed int v7 (void);
extern signed int (*v8) (void);
extern unsigned int v9 (unsigned short, unsigned int);
extern unsigned int (*v10) (unsigned short, unsigned int);
extern void v11 (unsigned char, signed char, signed int, unsigned short);
extern void (*v12) (unsigned char, signed char, signed int, unsigned short);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern unsigned char v15 (signed char);
extern unsigned char (*v16) (signed char);
extern unsigned short v17 (signed char, signed char);
extern unsigned short (*v18) (signed char, signed char);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern unsigned int v21 (unsigned short, signed char, signed int);
extern unsigned int (*v22) (unsigned short, signed char, signed int);
extern signed char v23 (signed short, unsigned char, unsigned short);
extern signed char (*v24) (signed short, unsigned char, unsigned short);
unsigned short v25 (unsigned char, unsigned int, unsigned int);
unsigned short (*v26) (unsigned char, unsigned int, unsigned int) = v25;
extern void v27 (unsigned short, signed short, unsigned char, signed short);
extern void (*v28) (unsigned short, signed short, unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -4;
signed int v32 = 1;
signed int v31 = -3;

unsigned short v25 (unsigned char v34, unsigned int v35, unsigned int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed short v39 = -4;
unsigned char v38 = 6;
signed short v37 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (signed int v40, signed char v41, signed int v42)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
unsigned short v45 = 4;
unsigned short v44 = 5;
unsigned short v43 = 3;
trace++;
switch (trace)
{
case 9: 
return 1;
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
signed char v48;
unsigned char v49;
v48 = 0 + 0;
v49 = 2 + 1;
v1 (v48, v49);
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
