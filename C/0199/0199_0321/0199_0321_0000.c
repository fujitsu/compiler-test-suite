#include <stdio.h>
#include <stdlib.h>
extern void v1 (signed short, unsigned int, unsigned char, unsigned int);
extern void (*v2) (signed short, unsigned int, unsigned char, unsigned int);
extern unsigned char v3 (signed char);
extern unsigned char (*v4) (signed char);
extern signed int v5 (void);
extern signed int (*v6) (void);
unsigned char v7 (unsigned int, unsigned char, signed char);
unsigned char (*v8) (unsigned int, unsigned char, signed char) = v7;
extern unsigned int v9 (void);
extern unsigned int (*v10) (void);
extern unsigned short v11 (unsigned short, unsigned char, signed int, signed short);
extern unsigned short (*v12) (unsigned short, unsigned char, signed int, signed short);
extern signed int v13 (unsigned char, unsigned char);
extern signed int (*v14) (unsigned char, unsigned char);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
unsigned int v17 (signed char, signed char, signed short);
unsigned int (*v18) (signed char, signed char, signed short) = v17;
extern unsigned int v19 (unsigned short, signed char, unsigned char, signed short);
extern unsigned int (*v20) (unsigned short, signed char, unsigned char, signed short);
unsigned char v21 (signed char, unsigned short);
unsigned char (*v22) (signed char, unsigned short) = v21;
signed int v23 (unsigned int, signed char);
signed int (*v24) (unsigned int, signed char) = v23;
extern void v25 (unsigned char, unsigned int);
extern void (*v26) (unsigned char, unsigned int);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -4;
unsigned short v32 = 3;
signed short v31 = -2;

signed int v23 (unsigned int v34, signed char v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned int v38 = 4U;
signed short v37 = 0;
signed int v36 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v21 (signed char v39, unsigned short v40)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
unsigned int v43 = 1U;
unsigned short v42 = 6;
signed short v41 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v17 (signed char v44, signed char v45, signed short v46)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
signed short v49 = 0;
signed int v48 = 3;
signed int v47 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (unsigned int v50, unsigned char v51, signed char v52)
{
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
{
for (;;) {
signed int v55 = 0;
signed char v54 = -1;
unsigned int v53 = 5U;
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
signed short v58;
unsigned int v59;
unsigned char v60;
unsigned int v61;
v58 = -2 - 1;
v59 = 1U + 1U;
v60 = 7 + 2;
v61 = 1U + 5U;
v1 (v58, v59, v60, v61);
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
