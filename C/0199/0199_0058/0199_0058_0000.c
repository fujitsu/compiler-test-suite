#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (unsigned int, signed short, unsigned short);
extern unsigned char (*v2) (unsigned int, signed short, unsigned short);
extern signed char v3 (signed int, signed char);
extern signed char (*v4) (signed int, signed char);
extern unsigned int v5 (unsigned short, signed short, unsigned char);
extern unsigned int (*v6) (unsigned short, signed short, unsigned char);
extern void v7 (void);
extern void (*v8) (void);
extern signed char v9 (signed short, unsigned short, signed int, unsigned char);
extern signed char (*v10) (signed short, unsigned short, signed int, unsigned char);
extern void v11 (unsigned char, signed int, unsigned int, signed int);
extern void (*v12) (unsigned char, signed int, unsigned int, signed int);
extern void v13 (signed short, unsigned char);
extern void (*v14) (signed short, unsigned char);
extern unsigned short v17 (unsigned int, unsigned char, signed int, unsigned short);
extern unsigned short (*v18) (unsigned int, unsigned char, signed int, unsigned short);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
unsigned short v21 (unsigned short);
unsigned short (*v22) (unsigned short) = v21;
extern signed char v25 (void);
extern signed char (*v26) (void);
extern unsigned char v27 (unsigned short, unsigned char, unsigned char, unsigned int);
extern unsigned char (*v28) (unsigned short, unsigned char, unsigned char, unsigned int);
signed char v29 (unsigned short, signed int);
signed char (*v30) (unsigned short, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 3;
unsigned int v32 = 7U;
signed short v31 = -3;

signed char v29 (unsigned short v34, signed int v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed short v38 = 1;
signed int v37 = -1;
signed short v36 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v21 (unsigned short v39)
{
history[history_index++] = (int)v39;
{
for (;;) {
unsigned int v42 = 4U;
signed int v41 = -2;
signed short v40 = 2;
trace++;
switch (trace)
{
case 2: 
{
signed char v43;
v43 = v25 ();
history[history_index++] = (int)v43;
}
break;
case 4: 
return 2;
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
unsigned int v46;
signed short v47;
unsigned short v48;
unsigned char v49;
v46 = v32 - v32;
v47 = -1 + v31;
v48 = 0 + 7;
v49 = v1 (v46, v47, v48);
history[history_index++] = (int)v49;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
