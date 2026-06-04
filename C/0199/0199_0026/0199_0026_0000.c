#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (unsigned char);
extern unsigned int (*v2) (unsigned char);
extern signed char v3 (unsigned short);
extern signed char (*v4) (unsigned short);
extern signed char v5 (unsigned short);
extern signed char (*v6) (unsigned short);
unsigned int v7 (signed int, unsigned short, unsigned short);
unsigned int (*v8) (signed int, unsigned short, unsigned short) = v7;
extern void v11 (unsigned char);
extern void (*v12) (unsigned char);
signed short v13 (signed char, unsigned short);
signed short (*v14) (signed char, unsigned short) = v13;
extern void v15 (unsigned int, unsigned int);
extern void (*v16) (unsigned int, unsigned int);
unsigned int v17 (signed int, signed char, unsigned int, unsigned short);
unsigned int (*v18) (signed int, signed char, unsigned int, unsigned short) = v17;
extern void v19 (signed int, unsigned int, unsigned int);
extern void (*v20) (signed int, unsigned int, unsigned int);
extern void v21 (void);
extern void (*v22) (void);
extern unsigned int v23 (signed int, signed short, signed int, signed int);
extern unsigned int (*v24) (signed int, signed short, signed int, signed int);
extern signed short v25 (void);
extern signed short (*v26) (void);
signed char v29 (signed int);
signed char (*v30) (signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 4;
signed short v32 = -2;
signed int v31 = 3;

signed char v29 (signed int v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed char v37 = 2;
signed char v36 = -1;
signed short v35 = -1;
trace++;
switch (trace)
{
case 10: 
return v36;
default: abort ();
}
}
}
}

unsigned int v17 (signed int v38, signed char v39, unsigned int v40, unsigned short v41)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
unsigned short v44 = 3;
signed int v43 = 0;
unsigned int v42 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v13 (signed char v45, unsigned short v46)
{
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
signed int v49 = -1;
unsigned char v48 = 1;
unsigned short v47 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (signed int v50, unsigned short v51, unsigned short v52)
{
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
{
for (;;) {
signed int v55 = -2;
unsigned char v54 = 7;
unsigned int v53 = 7U;
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
unsigned char v58;
unsigned int v59;
v58 = 6 + 3;
v59 = v1 (v58);
history[history_index++] = (int)v59;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
