#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (unsigned int, signed int, unsigned int);
extern unsigned char (*v2) (unsigned int, signed int, unsigned int);
extern signed char v3 (unsigned short, unsigned int);
extern signed char (*v4) (unsigned short, unsigned int);
extern unsigned short v5 (signed char, unsigned int);
extern unsigned short (*v6) (signed char, unsigned int);
extern unsigned char v7 (unsigned char, signed int, unsigned char, unsigned short);
extern unsigned char (*v8) (unsigned char, signed int, unsigned char, unsigned short);
extern void v9 (unsigned char);
extern void (*v10) (unsigned char);
extern unsigned int v11 (unsigned short);
extern unsigned int (*v12) (unsigned short);
signed int v13 (unsigned char, unsigned char, unsigned short, signed short);
signed int (*v14) (unsigned char, unsigned char, unsigned short, signed short) = v13;
unsigned short v15 (void);
unsigned short (*v16) (void) = v15;
extern signed int v17 (unsigned short, unsigned short, signed int);
extern signed int (*v18) (unsigned short, unsigned short, signed int);
extern signed int v19 (unsigned int, unsigned int);
extern signed int (*v20) (unsigned int, unsigned int);
signed int v21 (void);
signed int (*v22) (void) = v21;
extern signed int v23 (unsigned short, signed short);
extern signed int (*v24) (unsigned short, signed short);
extern signed short v25 (signed char, unsigned char);
extern signed short (*v26) (signed char, unsigned char);
extern signed char v27 (void);
extern signed char (*v28) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 1;
unsigned int v32 = 3U;
unsigned int v31 = 5U;

signed int v21 (void)
{
{
for (;;) {
unsigned char v36 = 7;
signed short v35 = -1;
unsigned int v34 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v15 (void)
{
{
for (;;) {
signed short v39 = -1;
unsigned int v38 = 7U;
signed char v37 = 0;
trace++;
switch (trace)
{
case 10: 
return 7;
default: abort ();
}
}
}
}

signed int v13 (unsigned char v40, unsigned char v41, unsigned short v42, signed short v43)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
signed int v46 = -2;
signed int v45 = -3;
unsigned char v44 = 1;
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
unsigned int v49;
signed int v50;
unsigned int v51;
unsigned char v52;
v49 = v31 - v31;
v50 = -4 + -2;
v51 = v31 + v32;
v52 = v1 (v49, v50, v51);
history[history_index++] = (int)v52;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
