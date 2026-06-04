#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (signed int, signed int, unsigned char);
extern signed int (*v2) (signed int, signed int, unsigned char);
extern unsigned char v3 (unsigned short, unsigned int);
extern unsigned char (*v4) (unsigned short, unsigned int);
void v5 (unsigned short, unsigned char, signed int);
void (*v6) (unsigned short, unsigned char, signed int) = v5;
extern unsigned char v7 (unsigned char, unsigned char, unsigned int, unsigned int);
extern unsigned char (*v8) (unsigned char, unsigned char, unsigned int, unsigned int);
extern unsigned char v9 (unsigned char);
extern unsigned char (*v10) (unsigned char);
extern unsigned char v11 (signed short, signed short);
extern unsigned char (*v12) (signed short, signed short);
extern signed int v13 (signed int, signed char, unsigned short);
extern signed int (*v14) (signed int, signed char, unsigned short);
signed char v15 (unsigned int, unsigned short, signed char);
signed char (*v16) (unsigned int, unsigned short, signed char) = v15;
unsigned short v17 (unsigned short, unsigned int, signed short);
unsigned short (*v18) (unsigned short, unsigned int, signed short) = v17;
extern unsigned char v19 (unsigned short, unsigned int, unsigned char);
extern unsigned char (*v20) (unsigned short, unsigned int, unsigned char);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern signed short v25 (signed char, signed short);
extern signed short (*v26) (signed char, signed short);
extern void v27 (signed char, unsigned char, unsigned short, unsigned char);
extern void (*v28) (signed char, unsigned char, unsigned short, unsigned char);
extern signed int v29 (signed int, signed short, unsigned char);
extern signed int (*v30) (signed int, signed short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 2U;
signed char v32 = 1;
signed int v31 = 3;

unsigned short v17 (unsigned short v34, unsigned int v35, signed short v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned short v39 = 0;
signed char v38 = -3;
unsigned short v37 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v15 (unsigned int v40, unsigned short v41, signed char v42)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
signed int v45 = -3;
unsigned char v44 = 6;
signed char v43 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (unsigned short v46, unsigned char v47, signed int v48)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
{
for (;;) {
unsigned int v51 = 6U;
signed char v50 = 3;
unsigned short v49 = 5;
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
signed int v54;
signed int v55;
unsigned char v56;
signed int v57;
v54 = v31 - -4;
v55 = 2 - v31;
v56 = 4 - 1;
v57 = v1 (v54, v55, v56);
history[history_index++] = (int)v57;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
