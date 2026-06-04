#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (signed char, signed short, unsigned short);
extern unsigned char (*v2) (signed char, signed short, unsigned short);
extern void v3 (signed int, signed char, signed char);
extern void (*v4) (signed int, signed char, signed char);
extern signed int v5 (unsigned char, signed char, signed int);
extern signed int (*v6) (unsigned char, signed char, signed int);
extern unsigned short v7 (signed short, signed char);
extern unsigned short (*v8) (signed short, signed char);
extern unsigned char v9 (signed int, unsigned short, unsigned short);
extern unsigned char (*v10) (signed int, unsigned short, unsigned short);
extern void v11 (unsigned int, signed int);
extern void (*v12) (unsigned int, signed int);
extern signed int v13 (unsigned int, unsigned char);
extern signed int (*v14) (unsigned int, unsigned char);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern unsigned short v17 (signed char, signed short, unsigned short);
extern unsigned short (*v18) (signed char, signed short, unsigned short);
signed short v19 (signed char);
signed short (*v20) (signed char) = v19;
extern void v21 (signed char, signed short);
extern void (*v22) (signed char, signed short);
extern signed int v23 (unsigned char, unsigned int, unsigned int);
extern signed int (*v24) (unsigned char, unsigned int, unsigned int);
signed char v25 (signed char);
signed char (*v26) (signed char) = v25;
extern signed int v27 (signed short, unsigned char, signed char);
extern signed int (*v28) (signed short, unsigned char, signed char);
extern unsigned short v29 (unsigned int, unsigned short, unsigned char);
extern unsigned short (*v30) (unsigned int, unsigned short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 3;
signed int v32 = -1;
signed int v31 = -4;

signed char v25 (signed char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned short v37 = 4;
signed char v36 = 2;
unsigned short v35 = 1;
trace++;
switch (trace)
{
case 2: 
return -4;
default: abort ();
}
}
}
}

signed short v19 (signed char v38)
{
history[history_index++] = (int)v38;
{
for (;;) {
signed short v41 = 0;
signed short v40 = 3;
unsigned char v39 = 3;
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
signed char v44;
signed short v45;
unsigned short v46;
unsigned char v47;
v44 = -3 + -4;
v45 = -4 + -2;
v46 = 5 - 4;
v47 = v1 (v44, v45, v46);
history[history_index++] = (int)v47;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
