#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (signed short, signed short, unsigned int, signed int);
extern unsigned short (*v2) (signed short, signed short, unsigned int, signed int);
extern signed short v3 (signed int);
extern signed short (*v4) (signed int);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern signed short v7 (signed int, signed int, unsigned char, unsigned short);
extern signed short (*v8) (signed int, signed int, unsigned char, unsigned short);
unsigned int v11 (signed int, unsigned int);
unsigned int (*v12) (signed int, unsigned int) = v11;
signed short v13 (signed short, signed char, unsigned short);
signed short (*v14) (signed short, signed char, unsigned short) = v13;
extern void v15 (signed short, signed char);
extern void (*v16) (signed short, signed char);
unsigned int v19 (signed char, unsigned int);
unsigned int (*v20) (signed char, unsigned int) = v19;
extern unsigned short v21 (unsigned char);
extern unsigned short (*v22) (unsigned char);
extern signed char v23 (signed short);
extern signed char (*v24) (signed short);
extern unsigned int v25 (signed short, unsigned short, unsigned int);
extern unsigned int (*v26) (signed short, unsigned short, unsigned int);
extern signed char v27 (unsigned int, signed char);
extern signed char (*v28) (unsigned int, signed char);
extern unsigned int v29 (unsigned short, unsigned short, signed int, signed int);
extern unsigned int (*v30) (unsigned short, unsigned short, signed int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 1U;
unsigned short v32 = 5;
signed int v31 = -2;

unsigned int v19 (signed char v34, unsigned int v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed int v38 = -4;
signed char v37 = -1;
unsigned char v36 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v13 (signed short v39, signed char v40, unsigned short v41)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
unsigned int v44 = 0U;
unsigned char v43 = 0;
signed char v42 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (signed int v45, unsigned int v46)
{
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
unsigned char v49 = 7;
unsigned short v48 = 4;
unsigned char v47 = 7;
trace++;
switch (trace)
{
case 11: 
return 3U;
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
signed short v52;
signed short v53;
unsigned int v54;
signed int v55;
unsigned short v56;
v52 = 2 - -4;
v53 = -1 - -1;
v54 = v33 - v33;
v55 = -1 + 3;
v56 = v1 (v52, v53, v54, v55);
history[history_index++] = (int)v56;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
