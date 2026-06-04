#include <stdio.h>
#include <stdlib.h>
extern void v1 (signed int, unsigned char, signed short);
extern void (*v2) (signed int, unsigned char, signed short);
extern unsigned int v3 (unsigned short, signed char);
extern unsigned int (*v4) (unsigned short, signed char);
extern signed int v5 (signed char, signed int);
extern signed int (*v6) (signed char, signed int);
extern void v7 (unsigned int);
extern void (*v8) (unsigned int);
extern signed char v9 (signed char, unsigned int, unsigned char);
extern signed char (*v10) (signed char, unsigned int, unsigned char);
extern unsigned char v11 (signed char, unsigned char);
extern unsigned char (*v12) (signed char, unsigned char);
extern signed char v13 (signed char, signed char);
extern signed char (*v14) (signed char, signed char);
extern unsigned short v17 (unsigned char, signed int, signed int, signed short);
extern unsigned short (*v18) (unsigned char, signed int, signed int, signed short);
extern unsigned int v19 (unsigned short, signed int, unsigned char, signed char);
extern unsigned int (*v20) (unsigned short, signed int, unsigned char, signed char);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern unsigned short v23 (signed short);
extern unsigned short (*v24) (signed short);
extern unsigned int v25 (signed short, unsigned short);
extern unsigned int (*v26) (signed short, unsigned short);
signed int v27 (signed short, signed int, signed short, signed char);
signed int (*v28) (signed short, signed int, signed short, signed char) = v27;
extern unsigned char v29 (unsigned char, unsigned short, unsigned short, signed int);
extern unsigned char (*v30) (unsigned char, unsigned short, unsigned short, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -2;
signed char v32 = -3;
signed short v31 = 3;

signed int v27 (signed short v34, signed int v35, signed short v36, signed char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned char v40 = 5;
signed char v39 = 1;
unsigned short v38 = 5;
trace++;
switch (trace)
{
case 1: 
return v35;
case 6: 
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
signed int v43;
unsigned char v44;
signed short v45;
v43 = 3 - 1;
v44 = 1 - 2;
v45 = -4 - 1;
v1 (v43, v44, v45);
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
