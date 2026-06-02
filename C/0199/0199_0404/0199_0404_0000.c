#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (signed short, unsigned char);
extern unsigned char (*v2) (signed short, unsigned char);
signed char v3 (signed int, unsigned char);
signed char (*v4) (signed int, unsigned char) = v3;
extern void v5 (void);
extern void (*v6) (void);
extern signed char v7 (unsigned char);
extern signed char (*v8) (unsigned char);
extern void v9 (void);
extern void (*v10) (void);
extern signed int v11 (signed short, unsigned short, signed int);
extern signed int (*v12) (signed short, unsigned short, signed int);
signed char v13 (unsigned short, signed short);
signed char (*v14) (unsigned short, signed short) = v13;
extern unsigned char v15 (signed int);
extern unsigned char (*v16) (signed int);
extern unsigned char v19 (signed short, signed char, unsigned int, unsigned char);
extern unsigned char (*v20) (signed short, signed char, unsigned int, unsigned char);
extern unsigned char v21 (unsigned short, signed short);
extern unsigned char (*v22) (unsigned short, signed short);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern unsigned short v25 (unsigned short, signed char, unsigned short, signed short);
extern unsigned short (*v26) (unsigned short, signed char, unsigned short, signed short);
extern void v27 (signed int, unsigned int);
extern void (*v28) (signed int, unsigned int);
extern signed short v29 (unsigned char, signed int, unsigned int);
extern signed short (*v30) (unsigned char, signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -4;
unsigned char v32 = 2;
signed short v31 = 0;

signed char v13 (unsigned short v34, signed short v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned short v38 = 4;
unsigned char v37 = 2;
unsigned int v36 = 1U;
trace++;
switch (trace)
{
case 1: 
return 3;
default: abort ();
}
}
}
}

signed char v3 (signed int v39, unsigned char v40)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
unsigned char v43 = 6;
signed int v42 = 3;
unsigned int v41 = 0U;
trace++;
switch (trace)
{
case 3: 
{
v5 ();
}
break;
case 15: 
return -2;
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
signed short v46;
unsigned char v47;
unsigned char v48;
v46 = v31 + 1;
v47 = 3 - 6;
v48 = v1 (v46, v47);
history[history_index++] = (int)v48;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
