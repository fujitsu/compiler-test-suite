#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (signed int, unsigned char, unsigned char, unsigned int);
extern unsigned short (*v2) (signed int, unsigned char, unsigned char, unsigned int);
extern signed int v3 (void);
extern signed int (*v4) (void);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern unsigned int v7 (signed int, signed short, signed char);
extern unsigned int (*v8) (signed int, signed short, signed char);
extern unsigned char v9 (unsigned short, unsigned int);
extern unsigned char (*v10) (unsigned short, unsigned int);
extern unsigned short v13 (unsigned int, unsigned int);
extern unsigned short (*v14) (unsigned int, unsigned int);
signed short v15 (unsigned char, signed int, unsigned short);
signed short (*v16) (unsigned char, signed int, unsigned short) = v15;
unsigned char v17 (void);
unsigned char (*v18) (void) = v17;
extern signed char v19 (unsigned int, unsigned short);
extern signed char (*v20) (unsigned int, unsigned short);
extern unsigned short v21 (unsigned short, unsigned short);
extern unsigned short (*v22) (unsigned short, unsigned short);
extern signed char v25 (unsigned char, signed char, signed short, signed char);
extern signed char (*v26) (unsigned char, signed char, signed short, signed char);
signed short v27 (unsigned short, signed int);
signed short (*v28) (unsigned short, signed int) = v27;
extern unsigned short v29 (signed int);
extern unsigned short (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 7U;
unsigned char v32 = 1;
signed int v31 = 2;

signed short v27 (unsigned short v34, signed int v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned short v38 = 2;
unsigned short v37 = 0;
unsigned short v36 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v17 (void)
{
{
for (;;) {
unsigned short v41 = 1;
signed char v40 = -3;
signed short v39 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (unsigned char v42, signed int v43, unsigned short v44)
{
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
signed short v47 = 3;
unsigned short v46 = 1;
unsigned short v45 = 4;
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
unsigned char v51;
unsigned char v52;
unsigned int v53;
unsigned short v54;
v50 = v31 + 2;
v51 = 2 - v32;
v52 = 3 + 4;
v53 = v33 - v33;
v54 = v1 (v50, v51, v52, v53);
history[history_index++] = (int)v54;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
