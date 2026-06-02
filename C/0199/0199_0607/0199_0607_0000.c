#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
signed char v3 (unsigned int, signed short);
signed char (*v4) (unsigned int, signed short) = v3;
extern signed short v5 (signed int);
extern signed short (*v6) (signed int);
extern signed int v7 (unsigned char, signed int);
extern signed int (*v8) (unsigned char, signed int);
extern void v9 (void);
extern void (*v10) (void);
extern signed char v11 (unsigned short, unsigned int, signed short);
extern signed char (*v12) (unsigned short, unsigned int, signed short);
extern void v13 (signed short, signed int, signed int, signed char);
extern void (*v14) (signed short, signed int, signed int, signed char);
unsigned short v15 (void);
unsigned short (*v16) (void) = v15;
signed char v17 (signed short, signed short, signed int, signed int);
signed char (*v18) (signed short, signed short, signed int, signed int) = v17;
extern unsigned char v19 (unsigned short, unsigned char, unsigned int, signed char);
extern unsigned char (*v20) (unsigned short, unsigned char, unsigned int, signed char);
extern unsigned short v23 (signed int);
extern unsigned short (*v24) (signed int);
extern signed char v25 (signed char, signed short, unsigned char, signed int);
extern signed char (*v26) (signed char, signed short, unsigned char, signed int);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 3;
signed int v32 = -3;
unsigned char v31 = 2;

signed char v17 (signed short v34, signed short v35, signed int v36, signed int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed short v40 = 0;
signed int v39 = -4;
unsigned char v38 = 3;
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
unsigned int v43 = 7U;
signed char v42 = -4;
unsigned int v41 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (unsigned int v44, signed short v45)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
{
for (;;) {
signed short v48 = -3;
unsigned char v47 = 3;
unsigned int v46 = 2U;
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
signed char v51;
v51 = v1 ();
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
