#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (signed short, unsigned char);
extern signed char (*v2) (signed short, unsigned char);
extern void v3 (unsigned short, signed int);
extern void (*v4) (unsigned short, signed int);
extern signed short v5 (void);
extern signed short (*v6) (void);
extern signed short v7 (unsigned short);
extern signed short (*v8) (unsigned short);
extern signed char v9 (signed short, signed char);
extern signed char (*v10) (signed short, signed char);
extern unsigned short v11 (unsigned int, unsigned char, unsigned int, unsigned char);
extern unsigned short (*v12) (unsigned int, unsigned char, unsigned int, unsigned char);
unsigned int v15 (unsigned char, signed short, signed char, signed int);
unsigned int (*v16) (unsigned char, signed short, signed char, signed int) = v15;
extern void v17 (unsigned char, unsigned int, unsigned int, unsigned short);
extern void (*v18) (unsigned char, unsigned int, unsigned int, unsigned short);
extern signed char v19 (unsigned int, signed short);
extern signed char (*v20) (unsigned int, signed short);
extern signed char v21 (unsigned int, unsigned char);
extern signed char (*v22) (unsigned int, unsigned char);
extern signed int v23 (signed char, unsigned short);
extern signed int (*v24) (signed char, unsigned short);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
signed char v27 (unsigned char, signed short);
signed char (*v28) (unsigned char, signed short) = v27;
extern signed int v29 (signed int, signed char, signed short);
extern signed int (*v30) (signed int, signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 1;
signed int v32 = -2;
signed short v31 = -4;

signed char v27 (unsigned char v34, signed short v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned char v38 = 7;
unsigned char v37 = 1;
unsigned int v36 = 6U;
trace++;
switch (trace)
{
case 8: 
return 0;
default: abort ();
}
}
}
}

unsigned int v15 (unsigned char v39, signed short v40, signed char v41, signed int v42)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
signed int v45 = 0;
signed char v44 = -3;
signed char v43 = 0;
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
signed short v48;
unsigned char v49;
signed char v50;
v48 = v31 + 0;
v49 = 2 - 2;
v50 = v1 (v48, v49);
history[history_index++] = (int)v50;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
