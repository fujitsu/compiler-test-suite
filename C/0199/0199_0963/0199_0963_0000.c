#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
extern unsigned int v3 (signed char);
extern unsigned int (*v4) (signed char);
signed short v5 (signed int);
signed short (*v6) (signed int) = v5;
extern signed int v7 (signed int, signed char);
extern signed int (*v8) (signed int, signed char);
extern void v9 (void);
extern void (*v10) (void);
extern unsigned char v11 (signed short);
extern unsigned char (*v12) (signed short);
extern unsigned char v13 (unsigned char);
extern unsigned char (*v14) (unsigned char);
extern unsigned char v17 (signed char, signed int, unsigned int);
extern unsigned char (*v18) (signed char, signed int, unsigned int);
extern void v19 (unsigned char);
extern void (*v20) (unsigned char);
extern void v21 (unsigned char, signed char);
extern void (*v22) (unsigned char, signed char);
unsigned char v23 (signed short, signed int, signed char, unsigned short);
unsigned char (*v24) (signed short, signed int, signed char, unsigned short) = v23;
unsigned short v27 (void);
unsigned short (*v28) (void) = v27;
extern unsigned char v29 (signed char);
extern unsigned char (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 6;
unsigned int v32 = 5U;
signed short v31 = -4;

unsigned short v27 (void)
{
{
for (;;) {
unsigned int v36 = 2U;
signed char v35 = -3;
signed short v34 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v23 (signed short v37, signed int v38, signed char v39, unsigned short v40)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
signed char v43 = 0;
signed short v42 = 0;
signed short v41 = 2;
trace++;
switch (trace)
{
case 2: 
return 6;
default: abort ();
}
}
}
}

signed short v5 (signed int v44)
{
history[history_index++] = (int)v44;
{
for (;;) {
signed int v47 = 3;
signed char v46 = 3;
unsigned int v45 = 5U;
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
signed int v50;
v50 = v1 ();
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
