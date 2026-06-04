#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
extern unsigned short v3 (unsigned char, unsigned short);
extern unsigned short (*v4) (unsigned char, unsigned short);
extern unsigned char v5 (unsigned int, unsigned short);
extern unsigned char (*v6) (unsigned int, unsigned short);
extern unsigned int v7 (signed char, signed short, unsigned short);
extern unsigned int (*v8) (signed char, signed short, unsigned short);
extern signed char v9 (void);
extern signed char (*v10) (void);
signed char v11 (unsigned short, signed int, unsigned short);
signed char (*v12) (unsigned short, signed int, unsigned short) = v11;
unsigned char v13 (void);
unsigned char (*v14) (void) = v13;
extern signed int v15 (unsigned char, unsigned int, signed short);
extern signed int (*v16) (unsigned char, unsigned int, signed short);
extern signed short v19 (unsigned short, signed short, signed char);
extern signed short (*v20) (unsigned short, signed short, signed char);
extern void v21 (void);
extern void (*v22) (void);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern unsigned short v25 (signed int, unsigned short);
extern unsigned short (*v26) (signed int, unsigned short);
extern signed char v27 (signed int, unsigned short, signed char, unsigned char);
extern signed char (*v28) (signed int, unsigned short, signed char, unsigned char);
extern signed int v29 (unsigned int, unsigned short);
extern signed int (*v30) (unsigned int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 2U;
signed char v32 = -1;
unsigned int v31 = 2U;

unsigned char v13 (void)
{
{
for (;;) {
signed char v36 = -2;
signed char v35 = 3;
signed char v34 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v11 (unsigned short v37, signed int v38, unsigned short v39)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
signed short v42 = 1;
unsigned char v41 = 1;
signed char v40 = 1;
trace++;
switch (trace)
{
case 3: 
{
v21 ();
}
break;
case 9: 
return -3;
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
signed int v45;
v45 = v1 ();
history[history_index++] = (int)v45;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
