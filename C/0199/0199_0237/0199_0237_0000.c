#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
extern void v5 (signed int, signed short, signed char);
extern void (*v6) (signed int, signed short, signed char);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern unsigned char v9 (signed int, unsigned int);
extern unsigned char (*v10) (signed int, unsigned int);
extern signed int v11 (signed int, signed int, unsigned int);
extern signed int (*v12) (signed int, signed int, unsigned int);
signed char v13 (signed short, unsigned int, unsigned short);
signed char (*v14) (signed short, unsigned int, unsigned short) = v13;
extern unsigned int v15 (unsigned char, unsigned int, unsigned short);
extern unsigned int (*v16) (unsigned char, unsigned int, unsigned short);
extern signed short v17 (signed char, unsigned char, unsigned short, signed int);
extern signed short (*v18) (signed char, unsigned char, unsigned short, signed int);
extern void v19 (signed short, unsigned char, unsigned char, signed int);
extern void (*v20) (signed short, unsigned char, unsigned char, signed int);
extern unsigned int v21 (unsigned short, unsigned int, signed char, unsigned int);
extern unsigned int (*v22) (unsigned short, unsigned int, signed char, unsigned int);
extern void v23 (unsigned short, unsigned int, signed char, unsigned int);
extern void (*v24) (unsigned short, unsigned int, signed char, unsigned int);
extern signed char v25 (signed int, signed char, signed int);
extern signed char (*v26) (signed int, signed char, signed int);
extern unsigned short v27 (unsigned char, signed char, unsigned short, unsigned short);
extern unsigned short (*v28) (unsigned char, signed char, unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 3;
unsigned char v32 = 4;
signed int v31 = -1;

signed char v13 (signed short v34, unsigned int v35, unsigned short v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed int v39 = -4;
unsigned char v38 = 2;
unsigned char v37 = 7;
trace++;
switch (trace)
{
case 5: 
{
unsigned char v40;
signed char v41;
unsigned short v42;
unsigned short v43;
unsigned short v44;
v40 = v37 - v37;
v41 = 1 + -2;
v42 = 2 + 7;
v43 = v36 - v36;
v44 = v27 (v40, v41, v42, v43);
history[history_index++] = (int)v44;
}
break;
case 7: 
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
unsigned short v47;
v47 = v1 ();
history[history_index++] = (int)v47;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
