#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (unsigned char, signed char, signed int);
extern signed int (*v2) (unsigned char, signed char, signed int);
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
extern unsigned short v7 (signed short);
extern unsigned short (*v8) (signed short);
extern signed int v9 (unsigned char);
extern signed int (*v10) (unsigned char);
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
unsigned short v15 (signed int, signed int, unsigned char, unsigned char);
unsigned short (*v16) (signed int, signed int, unsigned char, unsigned char) = v15;
extern void v17 (void);
extern void (*v18) (void);
extern unsigned short v19 (unsigned short, unsigned short);
extern unsigned short (*v20) (unsigned short, unsigned short);
extern signed char v21 (signed short, unsigned char);
extern signed char (*v22) (signed short, unsigned char);
extern unsigned char v23 (signed int);
extern unsigned char (*v24) (signed int);
unsigned short v27 (signed int, signed short);
unsigned short (*v28) (signed int, signed short) = v27;
extern signed int v29 (signed short, signed char, unsigned char, unsigned short);
extern signed int (*v30) (signed short, signed char, unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 0;
signed int v32 = 3;
unsigned short v31 = 6;

unsigned short v27 (signed int v34, signed short v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned int v38 = 1U;
unsigned int v37 = 1U;
signed short v36 = 0;
trace++;
switch (trace)
{
case 8: 
return 4;
default: abort ();
}
}
}
}

unsigned short v15 (signed int v39, signed int v40, unsigned char v41, unsigned char v42)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
signed short v45 = 3;
unsigned int v44 = 4U;
signed char v43 = 1;
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
unsigned char v48;
signed char v49;
signed int v50;
signed int v51;
v48 = 0 - 5;
v49 = -2 + 2;
v50 = v32 - 3;
v51 = v1 (v48, v49, v50);
history[history_index++] = (int)v51;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
