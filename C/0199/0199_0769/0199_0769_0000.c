#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (unsigned short, signed char, signed char);
extern unsigned char (*v2) (unsigned short, signed char, signed char);
unsigned short v3 (signed char);
unsigned short (*v4) (signed char) = v3;
extern void v5 (signed int, signed int, unsigned short, signed int);
extern void (*v6) (signed int, signed int, unsigned short, signed int);
extern unsigned short v7 (signed int, signed int);
extern unsigned short (*v8) (signed int, signed int);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern signed short v11 (signed int, signed short, unsigned short);
extern signed short (*v12) (signed int, signed short, unsigned short);
extern signed char v13 (unsigned short, unsigned short, signed char, unsigned short);
extern signed char (*v14) (unsigned short, unsigned short, signed char, unsigned short);
extern unsigned char v15 (signed int);
extern unsigned char (*v16) (signed int);
extern signed short v17 (void);
extern signed short (*v18) (void);
extern unsigned int v19 (signed char, unsigned int);
extern unsigned int (*v20) (signed char, unsigned int);
extern signed int v21 (signed int, unsigned char, signed int);
extern signed int (*v22) (signed int, unsigned char, signed int);
extern unsigned short v25 (unsigned short, signed int, unsigned char, signed int);
extern unsigned short (*v26) (unsigned short, signed int, unsigned char, signed int);
extern unsigned short v27 (unsigned char, signed char, signed short, signed short);
extern unsigned short (*v28) (unsigned char, signed char, signed short, signed short);
extern unsigned char v29 (unsigned short, unsigned short);
extern unsigned char (*v30) (unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -2;
unsigned int v32 = 3U;
unsigned char v31 = 7;

unsigned short v3 (signed char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed int v37 = 0;
signed char v36 = -4;
signed short v35 = -2;
trace++;
switch (trace)
{
case 5: 
{
signed int v38;
unsigned char v39;
signed int v40;
signed int v41;
v38 = -3 - v37;
v39 = 4 + 3;
v40 = 1 - v37;
v41 = v21 (v38, v39, v40);
history[history_index++] = (int)v41;
}
break;
case 13: 
return 0;
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
unsigned short v44;
signed char v45;
signed char v46;
unsigned char v47;
v44 = 2 + 4;
v45 = 2 - -2;
v46 = -2 - 2;
v47 = v1 (v44, v45, v46);
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
