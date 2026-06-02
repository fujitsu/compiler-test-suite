#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (unsigned int, signed char);
extern signed int (*v2) (unsigned int, signed char);
extern unsigned char v3 (signed int, signed short);
extern unsigned char (*v4) (signed int, signed short);
extern unsigned char v5 (unsigned short, unsigned char, signed int);
extern unsigned char (*v6) (unsigned short, unsigned char, signed int);
extern signed char v7 (signed short, unsigned int);
extern signed char (*v8) (signed short, unsigned int);
extern void v9 (signed int, unsigned char, unsigned int);
extern void (*v10) (signed int, unsigned char, unsigned int);
extern void v11 (unsigned int, unsigned int, signed short, unsigned short);
extern void (*v12) (unsigned int, unsigned int, signed short, unsigned short);
extern unsigned short v13 (signed short);
extern unsigned short (*v14) (signed short);
extern void v17 (unsigned char);
extern void (*v18) (unsigned char);
extern unsigned char v19 (unsigned char, unsigned short, signed short);
extern unsigned char (*v20) (unsigned char, unsigned short, signed short);
signed char v21 (signed short, unsigned int);
signed char (*v22) (signed short, unsigned int) = v21;
extern unsigned short v23 (signed char, unsigned char, signed int, unsigned short);
extern unsigned short (*v24) (signed char, unsigned char, signed int, unsigned short);
extern signed int v25 (void);
extern signed int (*v26) (void);
unsigned short v27 (signed char);
unsigned short (*v28) (signed char) = v27;
extern unsigned short v29 (unsigned char);
extern unsigned short (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 1;
signed int v32 = -1;
signed short v31 = -1;

unsigned short v27 (signed char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed short v37 = 2;
signed int v36 = 1;
signed short v35 = 0;
trace++;
switch (trace)
{
case 11: 
return 5;
default: abort ();
}
}
}
}

signed char v21 (signed short v38, unsigned int v39)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
unsigned int v42 = 7U;
unsigned int v41 = 4U;
signed int v40 = -3;
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
unsigned int v45;
signed char v46;
signed int v47;
v45 = 6U + 0U;
v46 = 3 - -1;
v47 = v1 (v45, v46);
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
