#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (unsigned char, signed short, signed int, unsigned short);
extern signed int (*v2) (unsigned char, signed short, signed int, unsigned short);
extern unsigned int v3 (unsigned short, unsigned int);
extern unsigned int (*v4) (unsigned short, unsigned int);
unsigned char v5 (signed int, unsigned char, unsigned int);
unsigned char (*v6) (signed int, unsigned char, unsigned int) = v5;
extern unsigned char v7 (signed int, unsigned char, signed char, signed short);
extern unsigned char (*v8) (signed int, unsigned char, signed char, signed short);
extern unsigned char v9 (unsigned int, signed char, unsigned char, unsigned int);
extern unsigned char (*v10) (unsigned int, signed char, unsigned char, unsigned int);
unsigned short v11 (void);
unsigned short (*v12) (void) = v11;
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern void v15 (unsigned char, unsigned char, signed int);
extern void (*v16) (unsigned char, unsigned char, signed int);
extern unsigned char v17 (signed int);
extern unsigned char (*v18) (signed int);
extern signed short v19 (unsigned char, unsigned char, signed short, unsigned int);
extern signed short (*v20) (unsigned char, unsigned char, signed short, unsigned int);
extern unsigned int v21 (unsigned char, signed short, unsigned short);
extern unsigned int (*v22) (unsigned char, signed short, unsigned short);
extern unsigned short v23 (signed short, unsigned int);
extern unsigned short (*v24) (signed short, unsigned int);
extern unsigned int v25 (signed char, signed short, unsigned int, signed char);
extern unsigned int (*v26) (signed char, signed short, unsigned int, signed char);
signed char v27 (signed short);
signed char (*v28) (signed short) = v27;
signed int v29 (unsigned int, unsigned char, signed short, unsigned int);
signed int (*v30) (unsigned int, unsigned char, signed short, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -3;
signed char v32 = 3;
signed int v31 = 2;

signed int v29 (unsigned int v34, unsigned char v35, signed short v36, unsigned int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned char v40 = 7;
unsigned int v39 = 1U;
unsigned char v38 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v27 (signed short v41)
{
history[history_index++] = (int)v41;
{
for (;;) {
signed char v44 = -4;
signed char v43 = 3;
unsigned int v42 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v11 (void)
{
{
for (;;) {
signed short v47 = 3;
signed int v46 = 1;
signed int v45 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (signed int v48, unsigned char v49, unsigned int v50)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
{
for (;;) {
signed int v53 = 0;
unsigned short v52 = 6;
unsigned char v51 = 2;
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
unsigned char v56;
signed short v57;
signed int v58;
unsigned short v59;
signed int v60;
v56 = 2 - 1;
v57 = -2 - -3;
v58 = v31 + v31;
v59 = 2 + 4;
v60 = v1 (v56, v57, v58, v59);
history[history_index++] = (int)v60;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
