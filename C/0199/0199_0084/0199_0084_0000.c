#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (unsigned char);
extern unsigned char (*v2) (unsigned char);
extern unsigned char v3 (signed short, signed char);
extern unsigned char (*v4) (signed short, signed char);
extern void v5 (unsigned char, unsigned int, signed int, unsigned char);
extern void (*v6) (unsigned char, unsigned int, signed int, unsigned char);
extern unsigned short v7 (unsigned int, signed char, signed int, unsigned int);
extern unsigned short (*v8) (unsigned int, signed char, signed int, unsigned int);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
unsigned int v11 (void);
unsigned int (*v12) (void) = v11;
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern signed int v15 (unsigned char, unsigned char);
extern signed int (*v16) (unsigned char, unsigned char);
extern signed char v17 (signed short);
extern signed char (*v18) (signed short);
extern void v19 (signed int, unsigned int, signed int, signed char);
extern void (*v20) (signed int, unsigned int, signed int, signed char);
extern signed char v21 (signed short, unsigned int);
extern signed char (*v22) (signed short, unsigned int);
signed char v23 (unsigned char);
signed char (*v24) (unsigned char) = v23;
unsigned int v27 (signed char, unsigned char, signed short, unsigned short);
unsigned int (*v28) (signed char, unsigned char, signed short, unsigned short) = v27;
extern signed short v29 (unsigned int, signed int);
extern signed short (*v30) (unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 4U;
signed int v32 = 2;
signed short v31 = 0;

unsigned int v27 (signed char v34, unsigned char v35, signed short v36, unsigned short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed short v40 = 2;
signed int v39 = -4;
signed char v38 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v23 (unsigned char v41)
{
history[history_index++] = (int)v41;
{
for (;;) {
unsigned int v44 = 4U;
unsigned char v43 = 3;
unsigned short v42 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (void)
{
{
for (;;) {
signed char v47 = -4;
unsigned int v46 = 1U;
unsigned char v45 = 6;
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
unsigned char v50;
unsigned char v51;
v50 = 6 + 2;
v51 = v1 (v50);
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
