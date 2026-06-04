#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (signed int, unsigned int, signed short, unsigned int);
extern unsigned short (*v2) (signed int, unsigned int, signed short, unsigned int);
extern unsigned short v3 (unsigned char);
extern unsigned short (*v4) (unsigned char);
extern signed int v5 (void);
extern signed int (*v6) (void);
extern unsigned char v7 (unsigned short, unsigned char);
extern unsigned char (*v8) (unsigned short, unsigned char);
unsigned short v9 (unsigned short, signed char, unsigned short, unsigned char);
unsigned short (*v10) (unsigned short, signed char, unsigned short, unsigned char) = v9;
extern unsigned int v11 (signed int, signed int, unsigned short);
extern unsigned int (*v12) (signed int, signed int, unsigned short);
extern signed short v13 (signed short, unsigned short, signed char);
extern signed short (*v14) (signed short, unsigned short, signed char);
extern signed short v15 (unsigned int, signed short, signed char, signed char);
extern signed short (*v16) (unsigned int, signed short, signed char, signed char);
extern void v17 (signed int, signed char, signed short, signed int);
extern void (*v18) (signed int, signed char, signed short, signed int);
signed char v19 (signed char);
signed char (*v20) (signed char) = v19;
extern void v21 (unsigned char, unsigned char, unsigned char);
extern void (*v22) (unsigned char, unsigned char, unsigned char);
extern signed char v23 (unsigned char, unsigned char, signed char, signed int);
extern signed char (*v24) (unsigned char, unsigned char, signed char, signed int);
extern signed short v25 (unsigned short, unsigned int, unsigned int, signed char);
extern signed short (*v26) (unsigned short, unsigned int, unsigned int, signed char);
extern void v27 (unsigned int, unsigned short);
extern void (*v28) (unsigned int, unsigned short);
extern unsigned int v29 (signed int, unsigned int, unsigned int, signed int);
extern unsigned int (*v30) (signed int, unsigned int, unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 1;
unsigned char v32 = 0;
signed char v31 = -4;

signed char v19 (signed char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned char v37 = 4;
signed short v36 = -2;
unsigned int v35 = 2U;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v38;
unsigned short v39;
v38 = 1U - 4U;
v39 = 1 + 1;
v27 (v38, v39);
}
break;
case 13: 
return v34;
default: abort ();
}
}
}
}

unsigned short v9 (unsigned short v40, signed char v41, unsigned short v42, unsigned char v43)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
signed int v46 = 1;
unsigned short v45 = 6;
signed char v44 = -4;
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
signed int v49;
unsigned int v50;
signed short v51;
unsigned int v52;
unsigned short v53;
v49 = -4 - -3;
v50 = 2U - 3U;
v51 = -1 - 1;
v52 = 2U - 1U;
v53 = v1 (v49, v50, v51, v52);
history[history_index++] = (int)v53;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
