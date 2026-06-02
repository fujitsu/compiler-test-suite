#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (signed short, unsigned int);
extern unsigned short (*v2) (signed short, unsigned int);
extern unsigned short v3 (unsigned short, unsigned short);
extern unsigned short (*v4) (unsigned short, unsigned short);
extern unsigned short v5 (signed int, unsigned int);
extern unsigned short (*v6) (signed int, unsigned int);
extern signed char v7 (signed int, unsigned short, unsigned char, unsigned short);
extern signed char (*v8) (signed int, unsigned short, unsigned char, unsigned short);
extern unsigned char v9 (signed int, unsigned char, signed char);
extern unsigned char (*v10) (signed int, unsigned char, signed char);
extern signed char v11 (signed int, unsigned int, unsigned short);
extern signed char (*v12) (signed int, unsigned int, unsigned short);
signed short v13 (void);
signed short (*v14) (void) = v13;
extern unsigned short v15 (signed short);
extern unsigned short (*v16) (signed short);
extern signed short v17 (signed char, signed int);
extern signed short (*v18) (signed char, signed int);
extern signed short v19 (unsigned short, unsigned short, signed int, signed short);
extern signed short (*v20) (unsigned short, unsigned short, signed int, signed short);
signed short v21 (unsigned int, unsigned int);
signed short (*v22) (unsigned int, unsigned int) = v21;
extern void v23 (signed char, unsigned int, unsigned char);
extern void (*v24) (signed char, unsigned int, unsigned char);
unsigned char v25 (signed char, signed short, unsigned short);
unsigned char (*v26) (signed char, signed short, unsigned short) = v25;
extern unsigned short v27 (signed short, signed short, signed int);
extern unsigned short (*v28) (signed short, signed short, signed int);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -3;
unsigned char v32 = 6;
signed char v31 = 2;

unsigned char v25 (signed char v34, signed short v35, unsigned short v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed int v39 = -4;
signed int v38 = 3;
unsigned char v37 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v21 (unsigned int v40, unsigned int v41)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
unsigned char v44 = 3;
signed short v43 = 3;
unsigned char v42 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v13 (void)
{
{
for (;;) {
signed short v47 = 3;
signed short v46 = -3;
signed char v45 = -4;
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
signed short v50;
unsigned int v51;
unsigned short v52;
v50 = -1 + -3;
v51 = 2U - 4U;
v52 = v1 (v50, v51);
history[history_index++] = (int)v52;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
