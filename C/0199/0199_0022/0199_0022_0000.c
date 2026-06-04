#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (signed char, signed int, unsigned int, signed int);
extern signed char (*v2) (signed char, signed int, unsigned int, signed int);
signed char v3 (unsigned int, unsigned char, signed int);
signed char (*v4) (unsigned int, unsigned char, signed int) = v3;
signed char v5 (void);
signed char (*v6) (void) = v5;
extern void v7 (signed int);
extern void (*v8) (signed int);
signed int v9 (void);
signed int (*v10) (void) = v9;
signed short v11 (unsigned char);
signed short (*v12) (unsigned char) = v11;
extern void v13 (unsigned short, unsigned short);
extern void (*v14) (unsigned short, unsigned short);
extern unsigned char v15 (unsigned short);
extern unsigned char (*v16) (unsigned short);
extern signed int v17 (signed char);
extern signed int (*v18) (signed char);
extern signed short v19 (signed char, unsigned int, unsigned char, unsigned int);
extern signed short (*v20) (signed char, unsigned int, unsigned char, unsigned int);
extern unsigned int v21 (signed char, signed short, signed char);
extern unsigned int (*v22) (signed char, signed short, signed char);
extern void v23 (signed int, unsigned short);
extern void (*v24) (signed int, unsigned short);
signed short v25 (signed int, signed char, signed int);
signed short (*v26) (signed int, signed char, signed int) = v25;
extern unsigned short v29 (unsigned char, signed int, unsigned int);
extern unsigned short (*v30) (unsigned char, signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 6U;
signed short v32 = 2;
signed char v31 = 3;

signed short v25 (signed int v34, signed char v35, signed int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed short v39 = 0;
signed short v38 = 2;
signed int v37 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (unsigned char v40)
{
history[history_index++] = (int)v40;
{
for (;;) {
unsigned char v43 = 7;
unsigned char v42 = 4;
unsigned char v41 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (void)
{
{
for (;;) {
unsigned char v46 = 1;
unsigned short v45 = 0;
signed int v44 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (void)
{
{
for (;;) {
unsigned short v49 = 6;
signed int v48 = -4;
signed int v47 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (unsigned int v50, unsigned char v51, signed int v52)
{
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
{
for (;;) {
unsigned int v55 = 2U;
signed char v54 = 3;
signed int v53 = -2;
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
signed char v58;
signed int v59;
unsigned int v60;
signed int v61;
signed char v62;
v58 = v31 + -1;
v59 = -4 + 0;
v60 = 6U + 4U;
v61 = 0 - 1;
v62 = v1 (v58, v59, v60, v61);
history[history_index++] = (int)v62;
}
} while (trace < 15);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
