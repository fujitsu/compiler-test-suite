#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (signed short);
extern unsigned short (*v2) (signed short);
extern unsigned int v3 (signed int, signed int, unsigned char, signed char);
extern unsigned int (*v4) (signed int, signed int, unsigned char, signed char);
extern signed char v7 (unsigned int, signed short, unsigned char, signed int);
extern signed char (*v8) (unsigned int, signed short, unsigned char, signed int);
unsigned short v9 (signed short, signed short);
unsigned short (*v10) (signed short, signed short) = v9;
extern signed short v11 (unsigned int, signed int);
extern signed short (*v12) (unsigned int, signed int);
extern unsigned short v15 (signed short, unsigned char);
extern unsigned short (*v16) (signed short, unsigned char);
extern signed short v17 (signed char, signed int, signed char, unsigned int);
extern signed short (*v18) (signed char, signed int, signed char, unsigned int);
extern signed int v19 (signed char);
extern signed int (*v20) (signed char);
extern unsigned short v21 (unsigned char, unsigned int, signed short, unsigned char);
extern unsigned short (*v22) (unsigned char, unsigned int, signed short, unsigned char);
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern void v25 (unsigned short);
extern void (*v26) (unsigned short);
extern signed short v27 (signed int, signed short);
extern signed short (*v28) (signed int, signed short);
signed int v29 (void);
signed int (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 0;
signed short v32 = 3;
signed short v31 = 2;

signed int v29 (void)
{
{
for (;;) {
signed char v36 = 3;
unsigned short v35 = 4;
unsigned short v34 = 4;
trace++;
switch (trace)
{
case 2: 
return -2;
case 10: 
return 3;
default: abort ();
}
}
}
}

unsigned short v9 (signed short v37, signed short v38)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
{
for (;;) {
unsigned char v41 = 0;
signed char v40 = -2;
signed int v39 = 2;
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
signed short v44;
unsigned short v45;
v44 = v31 - v31;
v45 = v1 (v44);
history[history_index++] = (int)v45;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
