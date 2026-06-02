#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (signed int, signed int);
extern signed short (*v2) (signed int, signed int);
extern void v3 (void);
extern void (*v4) (void);
extern void v5 (signed short, signed char, signed char, signed char);
extern void (*v6) (signed short, signed char, signed char, signed char);
extern void v7 (void);
extern void (*v8) (void);
unsigned char v9 (signed char);
unsigned char (*v10) (signed char) = v9;
signed char v11 (signed char, unsigned char);
signed char (*v12) (signed char, unsigned char) = v11;
extern unsigned int v13 (unsigned char);
extern unsigned int (*v14) (unsigned char);
signed short v15 (signed char);
signed short (*v16) (signed char) = v15;
extern unsigned int v17 (unsigned char, signed char);
extern unsigned int (*v18) (unsigned char, signed char);
extern signed short v19 (signed short, signed char, unsigned short);
extern signed short (*v20) (signed short, signed char, unsigned short);
extern unsigned int v21 (signed char, signed short);
extern unsigned int (*v22) (signed char, signed short);
extern unsigned int v23 (unsigned char, unsigned int, signed char, unsigned short);
extern unsigned int (*v24) (unsigned char, unsigned int, signed char, unsigned short);
extern signed short v25 (signed int, unsigned int);
extern signed short (*v26) (signed int, unsigned int);
unsigned char v27 (signed short);
unsigned char (*v28) (signed short) = v27;
extern unsigned char v29 (unsigned char, unsigned char, signed short);
extern unsigned char (*v30) (unsigned char, unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 0U;
signed short v32 = -4;
signed int v31 = 3;

unsigned char v27 (signed short v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned char v37 = 6;
signed char v36 = -1;
signed char v35 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (signed char v38)
{
history[history_index++] = (int)v38;
{
for (;;) {
signed int v41 = 1;
signed char v40 = 0;
unsigned char v39 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v11 (signed char v42, unsigned char v43)
{
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
signed short v46 = 3;
unsigned short v45 = 6;
unsigned char v44 = 1;
trace++;
switch (trace)
{
case 7: 
return v42;
case 11: 
return -1;
default: abort ();
}
}
}
}

unsigned char v9 (signed char v47)
{
history[history_index++] = (int)v47;
{
for (;;) {
signed int v50 = 0;
signed char v49 = -3;
unsigned int v48 = 3U;
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
signed int v53;
signed int v54;
signed short v55;
v53 = v31 - v31;
v54 = 2 - -3;
v55 = v1 (v53, v54);
history[history_index++] = (int)v55;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
