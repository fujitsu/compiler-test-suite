#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (unsigned char, unsigned char, signed int);
extern unsigned short (*v2) (unsigned char, unsigned char, signed int);
extern signed char v3 (unsigned short);
extern signed char (*v4) (unsigned short);
signed short v5 (signed short, signed short, unsigned int, unsigned char);
signed short (*v6) (signed short, signed short, unsigned int, unsigned char) = v5;
extern signed char v7 (signed short, signed short, signed char, signed char);
extern signed char (*v8) (signed short, signed short, signed char, signed char);
extern signed short v9 (unsigned char, signed char);
extern signed short (*v10) (unsigned char, signed char);
extern signed short v11 (signed int, signed short);
extern signed short (*v12) (signed int, signed short);
extern unsigned short v13 (signed short);
extern unsigned short (*v14) (signed short);
extern unsigned short v15 (signed int);
extern unsigned short (*v16) (signed int);
extern void v17 (unsigned char, unsigned short, unsigned char);
extern void (*v18) (unsigned char, unsigned short, unsigned char);
extern signed int v19 (signed char);
extern signed int (*v20) (signed char);
extern unsigned short v21 (unsigned short, signed short);
extern unsigned short (*v22) (unsigned short, signed short);
extern signed char v23 (unsigned short);
extern signed char (*v24) (unsigned short);
extern signed int v25 (signed char, unsigned char, unsigned short);
extern signed int (*v26) (signed char, unsigned char, unsigned short);
signed short v27 (void);
signed short (*v28) (void) = v27;
unsigned int v29 (signed short, unsigned char);
unsigned int (*v30) (signed short, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 6;
unsigned short v32 = 7;
signed int v31 = 0;

unsigned int v29 (signed short v34, unsigned char v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned int v38 = 2U;
unsigned char v37 = 0;
unsigned int v36 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v27 (void)
{
{
for (;;) {
unsigned int v41 = 2U;
unsigned short v40 = 1;
signed char v39 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (signed short v42, signed short v43, unsigned int v44, unsigned char v45)
{
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
{
for (;;) {
unsigned int v48 = 0U;
unsigned short v47 = 4;
unsigned char v46 = 7;
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
unsigned char v51;
unsigned char v52;
signed int v53;
unsigned short v54;
v51 = v33 - v33;
v52 = 7 - 0;
v53 = -3 - 0;
v54 = v1 (v51, v52, v53);
history[history_index++] = (int)v54;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
