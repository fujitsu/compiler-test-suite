#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (unsigned int, signed int);
extern unsigned short (*v2) (unsigned int, signed int);
extern unsigned char v3 (signed char, unsigned int);
extern unsigned char (*v4) (signed char, unsigned int);
extern void v5 (signed short, signed char);
extern void (*v6) (signed short, signed char);
extern signed short v9 (signed char, unsigned char);
extern signed short (*v10) (signed char, unsigned char);
extern signed short v11 (signed char, unsigned char);
extern signed short (*v12) (signed char, unsigned char);
signed short v15 (unsigned int, unsigned char);
signed short (*v16) (unsigned int, unsigned char) = v15;
extern signed short v17 (unsigned short);
extern signed short (*v18) (unsigned short);
extern unsigned char v19 (unsigned int, signed char, unsigned short, unsigned short);
extern unsigned char (*v20) (unsigned int, signed char, unsigned short, unsigned short);
extern void v21 (signed int, unsigned int, signed int, unsigned int);
extern void (*v22) (signed int, unsigned int, signed int, unsigned int);
unsigned short v23 (signed int, unsigned short, unsigned short);
unsigned short (*v24) (signed int, unsigned short, unsigned short) = v23;
extern unsigned char v25 (unsigned char, signed char, unsigned short, signed char);
extern unsigned char (*v26) (unsigned char, signed char, unsigned short, signed char);
extern signed short v27 (unsigned short, unsigned char);
extern signed short (*v28) (unsigned short, unsigned char);
extern unsigned char v29 (signed char, signed int, unsigned short);
extern unsigned char (*v30) (signed char, signed int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -3;
signed short v32 = 2;
signed int v31 = 0;

unsigned short v23 (signed int v34, unsigned short v35, unsigned short v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed short v39 = 2;
signed int v38 = 0;
unsigned char v37 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (unsigned int v40, unsigned char v41)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
signed char v44 = 1;
unsigned char v43 = 3;
unsigned char v42 = 4;
trace++;
switch (trace)
{
case 8: 
return -4;
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
signed int v48;
unsigned short v49;
v47 = 6U + 6U;
v48 = 1 + -1;
v49 = v1 (v47, v48);
history[history_index++] = (int)v49;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
